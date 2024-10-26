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
import 'package:tray_manager/tray_manager.dart';
import 'package:twitee/Api/login_api.dart';
import 'package:twitee/Models/login_phase.dart';
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Screens/Setting/setting_navigation_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/constant.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Utils/route_util.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Utils/uri_util.dart';
import 'package:twitee/Widgets/Dialog/custom_dialog.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';
import 'package:twitee/Widgets/Window/window_button.dart';
import 'package:window_manager/window_manager.dart';

import '../../Resources/theme.dart';
import '../../Utils/asset_util.dart';
import '../../Utils/enums.dart';
import '../../Utils/request_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Scaffold/custom_cupertino_route.dart';
import '../../Widgets/Item/input_item.dart';
import '../../Widgets/Item/item_builder.dart';
import '../main_screen.dart';

class LoginByPasswordScreen extends StatefulWidget {
  const LoginByPasswordScreen({
    super.key,
    this.jumpToMain = false,
  });

  final bool jumpToMain;

  static const String routeName = "/login/password";

  @override
  State<LoginByPasswordScreen> createState() => _LoginByPasswordScreenState();
}

class _LoginByPasswordScreenState extends State<LoginByPasswordScreen>
    with TickerProviderStateMixin, WindowListener, TrayListener {
  PageController controller = PageController();
  late InputValidateAsyncController _identifierValidateAsyncController;
  late InputValidateAsyncController
      _alternativeIdentifierValidateAsyncController;
  late InputValidateAsyncController _passwordValidateAsyncController;
  late InputValidateAsyncController _backupCodeValidateAsyncController;
  late PinPutValidateAsyncController _twoFAValidateAsyncController;
  String _guestToken = "";
  String _flowToken = "";
  InitPhase _inited = InitPhase.connecting;
  InitPhase _connected = InitPhase.haveNotConnected;
  final FocusNode _pinFocusNode = FocusNode();
  UserInfo? _userInfo;
  String errorMessage = "";
  bool _isMaximized = false;
  bool _isStayOnTop = false;

  @override
  Future<void> onWindowResize() async {
    super.onWindowResize();
    windowManager.setMinimumSize(minimumSize);
    HiveUtil.setWindowSize(await windowManager.getSize());
  }

  @override
  Future<void> onWindowResized() async {
    super.onWindowResized();
    HiveUtil.setWindowSize(await windowManager.getSize());
  }

  @override
  Future<void> onWindowMove() async {
    super.onWindowMove();
    HiveUtil.setWindowPosition(await windowManager.getPosition());
  }

  @override
  Future<void> onWindowMoved() async {
    super.onWindowMoved();
    HiveUtil.setWindowPosition(await windowManager.getPosition());
  }

  @override
  void onWindowMaximize() {
    windowManager.setMinimumSize(minimumSize);
    setState(() {
      _isMaximized = true;
    });
  }

  @override
  void onWindowUnmaximize() {
    windowManager.setMinimumSize(minimumSize);
    setState(() {
      _isMaximized = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _identifierValidateAsyncController = InputValidateAsyncController(
      validator: (text) async {
        if (text.isEmpty) {
          return "用户名不能为空";
        }
        return null;
      },
      controller: TextEditingController(),
    );
    _alternativeIdentifierValidateAsyncController =
        InputValidateAsyncController(
      validator: (text) async {
        if (text.isEmpty) {
          return "验证用户名不能为空";
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
    _backupCodeValidateAsyncController = InputValidateAsyncController(
      validator: (text) async {
        if (text.isEmpty) {
          return "备用码不能为空";
        }
        return null;
      },
      controller: TextEditingController(),
    );
    _twoFAValidateAsyncController = PinPutValidateAsyncController(
      listen: false,
      validator: (text) async {
        if (text.isEmpty) {
          return "一次性代码不能为空";
        }
        return null;
      },
      controller: TextEditingController(),
    );
    initLogin();
  }

  Future<void> initLogin() async {
    fail(message) {
      errorMessage = message;
      if (mounted) {
        setState(() {
          _inited = InitPhase.failed;
        });
      }
    }

    setState(() {
      _inited = InitPhase.connecting;
    });

    var res = await LoginApi.getGuestToken();
    if (!res.success) {
      fail(res.message);
      return;
    }
    _guestToken = res.data;
    res = await LoginApi.initLogin(_guestToken);
    if (!res.success) {
      fail(res.message);
      return;
    }
    _flowToken = res.data;
    res = await LoginApi.checkLoginType(_guestToken, _flowToken);
    if (!res.success) {
      fail(res.message);
      return;
    }
    _flowToken = res.data;
    setState(() {
      _inited = InitPhase.successful;
    });
    ILogger.info("Init Login", "Get flow_token: $_flowToken");
  }

  Future<void> _login() async {
    success() async {
      setState(() {
        _connected = InitPhase.connecting;
      });
      controller.animateToPage(5,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      await LoginApi.fetchCsrfToken(_guestToken);
      await RequestUtil.shareCookie();
      if (_userInfo != null) {
        await HiveUtil.setUserInfo(_userInfo!);
      }
      mainScreenState?.login();
      setState(() {
        _connected = InitPhase.successful;
      });
      if (widget.jumpToMain) {
        globalNavigatorState?.pushAndRemoveUntil(
          CustomCupertinoPageRoute(builder: (context) => const MainScreen()),
          (route) => false,
        );
      } else {
        if (ResponsiveUtil.isLandscape()) {
          dialogNavigatorState?.popPage();
          mainScreenState?.fetchUserInfo();
        } else {
          Navigator.pop(context);
        }
      }
    }

    bool needDismissDialog = true;

    switch (controller.page) {
      case 0:
        String? error = await _identifierValidateAsyncController.validate();
        if (error != null) return;
        CustomLoadingDialog.showLoading(title: "验证用户中...");
        String account = _identifierValidateAsyncController.controller.text;
        var res =
            await LoginApi.checkUsername(_guestToken, _flowToken, account);
        if (!res.success || res.data.isEmpty) {
          if (res.code == 399) {
            _identifierValidateAsyncController.setError("用户不存在");
          } else {
            _identifierValidateAsyncController
                .setError("未知错误（code: ${res.code}, message:${res.message}）");
          }
        } else {
          _flowToken = res.data;
          ILogger.info("Check username", "Get flow_token: $_flowToken");
          switch (res.flag as LoginPhase) {
            case LoginPhase.arkoseLogin:
              CustomLoadingDialog.dismissLoading();
              needDismissDialog = false;
              DialogBuilder.showConfirmDialog(
                context,
                title: "登录受限",
                message: "请前往完成人机验证后再次尝试登录",
                onTapConfirm: () {
                  UriUtil.launchUrlUri(context, res.data2);
                  Navigator.pop(context);
                },
              );
              break;
            case LoginPhase.checkAlternativeUsername:
              controller.animateToPage(1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
              break;
            case LoginPhase.checkPassword:
              controller.animateToPage(2,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
              break;
            case LoginPhase.denyLoginSubtask:
              _identifierValidateAsyncController.setError("你的帐户被暂停登录，请稍后再试");
              break;
            default:
              break;
          }
        }
        break;
      case 1:
        String? error =
            await _alternativeIdentifierValidateAsyncController.validate();
        if (error != null) return;
        CustomLoadingDialog.showLoading(title: "辅助验证用户名中...");
        String account =
            _alternativeIdentifierValidateAsyncController.controller.text;
        var res = await LoginApi.checkAlternativeUsername(
            _guestToken, _flowToken, account);
        if (!res.success || res.data.isEmpty) {
          if (res.code == 399) {
            _alternativeIdentifierValidateAsyncController.setError("用户名验证失败");
          } else {
            _alternativeIdentifierValidateAsyncController
                .setError("未知错误（code: ${res.code}, message:${res.message}）");
          }
        } else {
          _flowToken = res.data;
          ILogger.info(
              "Check alternative username", "Get flow_token: $_flowToken");
          controller.animateToPage(2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        }
        break;
      case 2:
        String? error = await _passwordValidateAsyncController.validate();
        if (error != null) return;
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
          if (res.data2 is UserInfo) {
            _userInfo = res.data2;
          }
          ILogger.info("Check password", "Get flow_token: $_flowToken");
          switch (res.flag as LoginPhase) {
            case LoginPhase.check2FA:
              controller.animateToPage(3,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
              break;
            case LoginPhase.loginSuccess:
              success();
              break;
            default:
              break;
          }
        }
        break;
      case 3:
        bool valid = (await _twoFAValidateAsyncController.validate()) == null;
        if (!valid) return;
        String pin = _twoFAValidateAsyncController.controller.text;
        CustomLoadingDialog.showLoading(title: "验证一次性代码中...");
        var res = await LoginApi.check2FA(_guestToken, _flowToken, pin);
        if (!res.success || res.data.isEmpty) {
          if (res.code == 399) {
            _twoFAValidateAsyncController.setError("一次性代码错误");
          } else {
            _twoFAValidateAsyncController
                .setError("未知错误（code: ${res.code}, message:${res.message}）");
          }
          _pinFocusNode.requestFocus();
        } else {
          _flowToken = res.data;
          ILogger.info("Check 2FA", "Get flow_token: $_flowToken");
          success();
        }
        break;
    }
    if (needDismissDialog) CustomLoadingDialog.dismissLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: ResponsiveUtil.isDesktop()
          ? PreferredSize(
              preferredSize: const Size.fromHeight(56),
              child: ItemBuilder.buildWindowTitle(
                context,
                backgroundColor: MyTheme.getBackground(context),
                isStayOnTop: _isStayOnTop,
                isMaximized: _isMaximized,
                onStayOnTopTap: () {
                  setState(() {
                    _isStayOnTop = !_isStayOnTop;
                    windowManager.setAlwaysOnTop(_isStayOnTop);
                  });
                },
                rightButtons: [
                  ToolButton(
                    context: context,
                    icon: Icons.token_outlined,
                    onTap: () async {
                      RouteUtil.pushDialogRoute(
                          context, const SettingNavigationScreen());
                    },
                    iconSize: 22,
                  ),
                  const SizedBox(width: 3),
                ],
                leftWidgets: [
                  const SizedBox(width: 15),
                  Text(
                    "登录到你的Twitter帐户",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Spacer(),
                ],
              ),
            )
          : ItemBuilder.buildSimpleAppBar(
              title: "登录到你的Twitter帐户",
              background: MyTheme.getBackground(context),
              context: context,
              leading: Icons.close_rounded,
              showLeading: !widget.jumpToMain,
              transparent: true,
            ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    switch (_inited) {
      case InitPhase.connecting:
        return ItemBuilder.buildLoadingDialog(
          context,
          text: "初始化中...",
          background: Theme.of(context).scaffoldBackgroundColor,
        );
      case InitPhase.failed:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                errorMessage,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              ItemBuilder.buildRoundButton(
                context,
                text: "重试",
                background: Theme.of(context).primaryColor,
                onTap: initLogin,
              ),
              const SizedBox(height: 50),
            ],
          ),
        );
      case InitPhase.successful:
        return _buildMainBody();
      default:
        return emptyWidget;
    }
  }

  _buildMainBody() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 50),
          SizedBox(
            height: 235,
            child: PageView.builder(
              controller: controller,
              itemCount: LoginPhase.phases.length,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return _buildPhasePage(
                      title: "开始登录",
                      message: "请输入你的手机号码、邮箱地址或用户名",
                      body: ItemBuilder.buildContainerItem(
                        context: context,
                        topRadius: true,
                        bottomRadius: true,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: InputItem(
                          hint: "输入手机号码、邮箱地址或用户名",
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
                              _identifierValidateAsyncController,
                          onSubmit: (_) {
                            _login();
                          },
                        ),
                      ),
                    );
                  case 1:
                    return _buildPhasePage(
                      title: "验证用户名",
                      message: "输入与twitter账号关联的用户名来验证你的身份",
                      body: ItemBuilder.buildContainerItem(
                        context: context,
                        topRadius: true,
                        bottomRadius: true,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: InputItem(
                          hint: "输入用户名，你的用户名以 @ 符号开头",
                          textInputAction: TextInputAction.done,
                          tailingType: InputItemTailingType.clear,
                          leadingIcon: Icons.alternate_email_rounded,
                          leadingType: InputItemLeadingType.icon,
                          keyboardType: TextInputType.text,
                          validateAsyncController:
                              _alternativeIdentifierValidateAsyncController,
                          onSubmit: (_) {
                            _login();
                          },
                        ),
                      ),
                    );
                  case 2:
                    return _buildPhasePage(
                      title: "输入你的密码",
                      message:
                          "请输入帐户${_identifierValidateAsyncController.controller.text}的密码",
                      body: ItemBuilder.buildContainerItem(
                        context: context,
                        topRadius: true,
                        bottomRadius: true,
                        padding: const EdgeInsets.symmetric(vertical: 10),
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
                          onSubmit: (_) {
                            _login();
                          },
                        ),
                      ),
                    );
                  case 3:
                    return _buildPhasePage(
                      title: "输入你的验证码",
                      message: "使用代码生成器应用生成一个代码并在下方输入",
                      body: Container(
                        alignment: Alignment.center,
                        child: ItemBuilder.buildPinPut(
                          context: context,
                          pinValidateAsyncController:
                              _twoFAValidateAsyncController,
                          pinController:
                              _twoFAValidateAsyncController.controller,
                          onCompleted: (_) {
                            _login();
                          },
                          pinFocusNode: _pinFocusNode,
                        ),
                      ),
                    );
                  case 4:
                    return _buildPhasePage(
                      title: "输入你的备用码",
                      message: "在下方输入你的备用码",
                      body: InputItem(
                        hint: "输入备用码",
                        textInputAction: TextInputAction.done,
                        tailingType: InputItemTailingType.clear,
                        leadingIcon: Icons.backup_outlined,
                        leadingType: InputItemLeadingType.icon,
                        keyboardType: TextInputType.text,
                        validateAsyncController:
                            _backupCodeValidateAsyncController,
                        onSubmit: (_) {
                          _login();
                        },
                      ),
                    );
                  case 5:
                    return _buildPhasePage(
                      title: "登录成功",
                      message: "正在准备连接至Twitee...",
                      body: ItemBuilder.buildLoadingDialog(
                        context,
                        text: _connected == InitPhase.successful
                            ? "连接成功"
                            : "连接中...",
                        background: Colors.transparent,
                        bottomPadding: 0,
                      ),
                    );
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 30),
          if (_connected == InitPhase.haveNotConnected)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              constraints: const BoxConstraints(maxWidth: 100),
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

  _buildUserInfo() {
    return Row(
      children: [
        ItemBuilder.buildAvatar(
          context: context,
          imageUrl:
              TweetUtil.getBigAvatarUrl(_userInfo!.profileImageUrlHttps) ??
                  AssetUtil.avatar,
          size: 36,
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            Text(
              _userInfo!.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "@${_userInfo!.screenName}",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        )
      ],
    );
  }

  _buildPhasePage({
    required String title,
    required String message,
    required Widget body,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            runSpacing: 15,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    message,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.apply(fontSizeDelta: 2),
                  ),
                ],
              ),
              if (_userInfo != null) _buildUserInfo(),
              const SizedBox(height: 10),
            ],
          ),
          const SizedBox(height: 30),
          body,
        ],
      ),
    );
  }

  @override
  void onTrayIconMouseDown() {
    Utils.displayApp();
  }

  @override
  void onTrayIconRightMouseDown() {
    trayManager.popUpContextMenu();
  }

  @override
  void onTrayIconRightMouseUp() {}

  @override
  Future<void> onTrayMenuItemClick(MenuItem menuItem) async {
    Utils.processTrayMenuItemClick(context, menuItem, true);
  }
}
