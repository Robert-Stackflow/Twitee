/*
 * Copyright (c) 2024 Robert-Stackflow.
 *
 * This program is free software: you can redistribute it and/or modify it under the terms of the
 * GNU General Public License as published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
 * even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program.
 * If not, see <https://www.gnu.org/licenses/>.
 */
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:twitee/Api/login_api.dart';
import 'package:twitee/Api/user_api.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/request_util.dart';
import 'package:twitee/Widgets/Dialog/custom_dialog.dart';

import '../../Widgets/Item/input_item.dart';
import '../../Widgets/Item/item_builder.dart';

enum LoginPhase {
  checkUsername(0, "LoginEnterUserIdentifierSSO"),
  checkAlternativeUsername(2, "LoginEnterAlternateIdentifierSubtask"),
  checkPassword(3, "LoginEnterPassword"),
  resetPassword(4, "RedirectToPasswordReset"),
  check2FA(5, "LoginTwoFactorAuthChallenge"),
  checkAnother2FA(6, "LoginTwoFactorAuthChooseMethod"),
  cannotAccess2FA(7, "login_security_key_not_supported_cta"),
  loginSuccess(8, "LoginSuccessSubtask");

  final int phaseIndex;
  final String subTaskName;

  const LoginPhase(this.phaseIndex, this.subTaskName);
}

class LoginByPasswordScreen extends StatefulWidget {
  const LoginByPasswordScreen({super.key});

  static const String routeName = "/login/password";

  @override
  State<LoginByPasswordScreen> createState() => _LoginByPasswordScreenState();
}

class _LoginByPasswordScreenState extends State<LoginByPasswordScreen>
    with TickerProviderStateMixin {
  PageController controller = PageController();
  late InputValidateAsyncController _accountValidateAsyncController;
  late InputValidateAsyncController _passwordValidateAsyncController;
  late PinPutValidateAsyncController _pinValidateAsyncController;
  final TextEditingController _pinController = TextEditingController();
  String _guestToken = "";
  String _flowToken = "";
  int _inited = -1; // -1未初始化，0初始化失败，1初始化成功
  final FocusNode _pinFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _accountValidateAsyncController = InputValidateAsyncController(
      validator: (text) async {
        if (text.isEmpty) {
          return "用户名不能为空";
        }
        return null;
      },
      controller: TextEditingController(),
    );
    _passwordValidateAsyncController = InputValidateAsyncController(
      validator: (text) async {
        if (text.isEmpty) {
          return "密码不能为空";
        }
        return null;
      },
      controller: TextEditingController(),
    );
    _pinValidateAsyncController = PinPutValidateAsyncController(
      listen: false,
      validator: (text) async {
        if (text.isEmpty) {
          return "一次性代码不能为空";
        }
        return null;
      },
      controller: _pinController,
    );
    initLogin();
  }

  Future<void> initLogin() async {
    fail() {
      if (mounted) {
        setState(() {
          _inited = 0;
        });
      }
    }

    setState(() {
      _inited = -1;
    });

    var res = await LoginApi.getGuestToken();
    if (!res.success) {
      fail();
      return;
    }
    _guestToken = res.data;
    res = await LoginApi.initLogin(_guestToken);
    if (!res.success) {
      fail();
      return;
    }
    _flowToken = res.data;
    res = await LoginApi.checkLoginType(_guestToken, _flowToken);
    if (!res.success) {
      fail();
      return;
    }
    _flowToken = res.data;
    setState(() {
      _inited = 1;
    });
    ILogger.info("Init Login", "Get flow_token: $_flowToken");
  }

  Future<void> _login() async {
    switch (controller.page) {
      case 0:
        String? error = await _accountValidateAsyncController.validate();
        if (error != null) return;
        CustomLoadingDialog.showLoading(title: "验证用户中...");
        String account = _accountValidateAsyncController.controller.text;
        var res =
            await LoginApi.checkUsername(_guestToken, _flowToken, account);
        if (!res.success || res.data.isEmpty) {
          if (res.code == 399) {
            _accountValidateAsyncController.setError("用户不存在");
          } else {
            _accountValidateAsyncController
                .setError("未知错误（code: ${res.code}, message:${res.message}）");
          }
        } else {
          _flowToken = res.data;
          ILogger.info("Check username", "Get flow_token: $_flowToken");
          controller.animateToPage(1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        }
        break;
      case 1:
        CustomLoadingDialog.showLoading(title: "验证密码中...");
        String password = _passwordValidateAsyncController.controller.text;
        var res =
            await LoginApi.checkPassword(_guestToken, _flowToken, password);
        if (!res.success || res.data.isEmpty) {
          if (res.code == 399) {
            _passwordValidateAsyncController.setError("密码错误");
          } else {
            _passwordValidateAsyncController
                .setError("未知错误（code: ${res.code}, message:${res.message}）");
          }
        } else {
          _flowToken = res.data;
          ILogger.info("Check password", "Get flow_token: $_flowToken");
          controller.animateToPage(2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        }
        break;
      case 2:
        bool valid = (await _pinValidateAsyncController.validate()) == null;
        if (!valid) return;
        String pin = _pinController.text;
        CustomLoadingDialog.showLoading(title: "验证一次性代码中...");
        var res = await LoginApi.check2FA(_guestToken, _flowToken, pin);
        if (!res.success || res.data.isEmpty) {
          if (res.code == 399) {
            _pinValidateAsyncController.setError("一次性代码错误");
          } else {
            _pinValidateAsyncController
                .setError("未知错误（code: ${res.code}, message:${res.message}）");
          }
          _pinFocusNode.requestFocus();
        } else {
          _flowToken = res.data;
          ILogger.info("Check 2FA", "Get flow_token: $_flowToken");
          await LoginApi.fetchCsrfToken(_guestToken);
          await LoginApi.checkLoginResult(_flowToken);
          await RequestUtil.shareCookie();
          await UserApi.getUserInfo("Robert-Stackflow");
          IToast.showTop("登录成功");
        }
        break;
    }
    CustomLoadingDialog.dismissLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: ItemBuilder.buildSimpleAppBar(
        title: "登录到你的Twitter帐户",
        context: context,
        leading: Icons.close_rounded,
        transparent: true,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    switch (_inited) {
      case -1:
        return ItemBuilder.buildLoadingDialog(
          context,
          text: "初始化中...",
          background: Theme.of(context).scaffoldBackgroundColor,
        );
      case 0:
        return ItemBuilder.buildRoundButton(context,
            text: "重试", onTap: initLogin);
      case 1:
        return _buildMainBody();
    }
  }

  _buildMainBody() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 50),
          SizedBox(
            height: 100,
            child: PageView.builder(
              controller: controller,
              itemCount: 3,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return ItemBuilder.buildContainerItem(
                      context: context,
                      topRadius: true,
                      bottomRadius: true,
                      child: InputItem(
                        hint: "输入手机号、邮箱或用户名",
                        backgroundColor: Colors.transparent,
                        tailingType: InputItemTailingType.clear,
                        leadingIcon: Icons.phone_android_rounded,
                        leadingType: InputItemLeadingType.icon,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          RegexInputFormatter.onlyNumberAndLetterAndSymbol,
                        ],
                        textInputAction: TextInputAction.done,
                        validateAsyncController:
                            _accountValidateAsyncController,
                      ),
                    );
                  case 1:
                    return ItemBuilder.buildContainerItem(
                      context: context,
                      topRadius: true,
                      bottomRadius: true,
                      child: InputItem(
                        hint: "输入密码",
                        textInputAction: TextInputAction.done,
                        tailingType: InputItemTailingType.password,
                        leadingIcon: Icons.password_rounded,
                        leadingType: InputItemLeadingType.icon,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        validateAsyncController:
                            _passwordValidateAsyncController,
                      ),
                    );
                  case 2:
                    final defaultPinTheme = PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: Theme.of(context).textTheme.titleLarge,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1),
                    );
                    final errorPinTheme = defaultPinTheme.copyDecorationWith(
                      border: Border.all(color: Colors.redAccent, width: 1),
                    );
                    return Pinput(
                      length: 6,
                      autofocus: true,
                      cursor: Container(
                        width: 2,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      errorPinTheme: errorPinTheme,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      controller: _pinController,
                      validateAsyncController: _pinValidateAsyncController,
                      textInputAction: TextInputAction.done,
                      onCompleted: (String pin) {
                        _login();
                      },
                      inputFormatters: [
                        RegexInputFormatter.onlyNumber,
                      ],
                      focusNode: _pinFocusNode,
                      contextMenuBuilder: (contextMenuContext, details) =>
                          ItemBuilder.editTextContextMenuBuilder(
                              contextMenuContext, details,
                              context: context),
                      errorBuilder: (error, pin) => Padding(
                        padding:
                            const EdgeInsetsDirectional.only(start: 4, top: 8),
                        child: Text(
                          error!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.apply(color: Colors.redAccent),
                        ),
                      ),
                    );
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: ItemBuilder.buildRoundButton(
              context,
              text: "下一步",
              background: Theme.of(context).primaryColor,
              onTap: _login,
              color: Colors.white,
              fontSizeDelta: 2,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ],
      ),
    );
  }
}
