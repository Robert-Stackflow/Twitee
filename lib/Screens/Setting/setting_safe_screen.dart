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

import 'package:biometric_storage/biometric_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitee/Utils/biometric_util.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';

import '../../Utils/app_provider.dart';
import '../../Utils/constant.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/itoast.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/route_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/BottomSheet/bottom_sheet_builder.dart';
import '../../Widgets/BottomSheet/list_bottom_sheet.dart';
import '../../Widgets/Item/item_builder.dart';
import '../../generated/l10n.dart';
import '../Lock/pin_change_screen.dart';
import '../Lock/pin_verify_screen.dart';

class SafeSettingScreen extends StatefulWidget {
  const SafeSettingScreen({super.key});

  static const String routeName = "/setting/privacy";

  @override
  State<SafeSettingScreen> createState() => _SafeSettingScreenState();
}

class _SafeSettingScreenState extends State<SafeSettingScreen>
    with TickerProviderStateMixin {
  bool _enableGuesturePasswd =
      HiveUtil.getBool(HiveUtil.enableGuesturePasswdKey);
  bool _hasGuesturePasswd =
      Utils.isNotEmpty(HiveUtil.getString(HiveUtil.guesturePasswdKey));
  bool _autoLock = HiveUtil.getBool(HiveUtil.autoLockKey);
  bool _enableSafeMode = HiveUtil.getBool(HiveUtil.enableSafeModeKey,
      defaultValue: defaultEnableSafeMode);
  bool _allowGuestureBiometric = HiveUtil.getBool(HiveUtil.enableBiometricKey);
  String? canAuthenticateResponseString;
  CanAuthenticateResponse? canAuthenticateResponse;

  bool get _biometricAvailable => canAuthenticateResponse?.isAvailable ?? false;

  bool get _geusturePasswdAvailable => _enableGuesturePasswd;

  bool get _gesturePasswdAvailableAndSet =>
      _geusturePasswdAvailable && _hasGuesturePasswd;

  bool get _autoLockAvailable => _gesturePasswdAvailableAndSet;

  @override
  void initState() {
    super.initState();
    initBiometricAuthentication();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Scaffold(
        appBar: ResponsiveUtil.isLandscape()
            ? ItemBuilder.buildDesktopAppBar(
                title: S.current.safeSetting,
                context: context,
                transparent: true,
                showBack: true,
              )
            : ItemBuilder.buildAppBar(
                context: context,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                leading: Icons.arrow_back_rounded,
                onLeadingTap: () {
                  Navigator.pop(context);
                },
                title: Text(
                  S.current.safeSetting,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.apply(fontWeightDelta: 2),
                ),
                actions: [
                  ItemBuilder.buildBlankIconButton(context),
                  const SizedBox(width: 10),
                ],
              ),
        body: EasyRefresh(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: [
              if (ResponsiveUtil.isLandscape()) const SizedBox(height: 10),
              ..._gestureSettings(),
              if (_autoLockAvailable) ..._autoLockSettings(),
              if (ResponsiveUtil.isMobile()) ..._safeModeSettings(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  _gestureSettings() {
    return [
      const SizedBox(height: 10),
      ItemBuilder.buildRadioItem(
        context: context,
        topRadius: true,
        value: _enableGuesturePasswd,
        title: S.current.enableGestureLock,
        bottomRadius: !_geusturePasswdAvailable,
        description: S.current.enableGestureLockTip,
        onTap: onEnablePinTapped,
      ),
      Visibility(
        visible: _geusturePasswdAvailable,
        child: ItemBuilder.buildEntryItem(
          context: context,
          bottomRadius: !_gesturePasswdAvailableAndSet || !_biometricAvailable,
          title: _hasGuesturePasswd
              ? S.current.changeGestureLock
              : S.current.setGestureLock,
          description:
              _hasGuesturePasswd ? "" : S.current.haveToSetGestureLockTip,
          onTap: onChangePinTapped,
        ),
      ),
      Visibility(
        visible: _gesturePasswdAvailableAndSet && _biometricAvailable,
        child: ItemBuilder.buildRadioItem(
          context: context,
          value: _allowGuestureBiometric,
          title: S.current.biometricUnlock,
          bottomRadius: true,
          disabled: canAuthenticateResponse?.isSuccess != true,
          description:
              canAuthenticateResponseString ?? S.current.biometricUnlockTip,
          onTap: onBiometricTapped,
        ),
      ),
    ];
  }

  _autoLockSettings() {
    return [
      const SizedBox(height: 10),
      ItemBuilder.buildRadioItem(
        bottomRadius: !_autoLock,
        topRadius: true,
        context: context,
        value: _autoLock,
        title: S.current.autoLock,
        description: S.current.autoLockTip,
        onTap: onEnableAutoLockTapped,
      ),
      Visibility(
        visible: _autoLock,
        child: Selector<AppProvider, AutoLockTime>(
          selector: (context, appProvider) => appProvider.autoLockTime,
          builder: (context, autoLockTime, child) => ItemBuilder.buildEntryItem(
            context: context,
            title: S.current.autoLockDelay,
            bottomRadius: true,
            tip: autoLockTime.label,
            onTap: () {
              BottomSheetBuilder.showListBottomSheet(
                context,
                (context) => TileList.fromOptions(
                  AutoLockTime.options(),
                  (item2) {
                    appProvider.autoLockTime = item2;
                    Navigator.pop(context);
                  },
                  selected: autoLockTime,
                  context: context,
                  title: S.current.chooseAutoLockDelay,
                  onCloseTap: () => Navigator.pop(context),
                ),
              );
            },
          ),
        ),
      ),
    ];
  }

  _safeModeSettings() {
    return [
      const SizedBox(height: 10),
      ItemBuilder.buildRadioItem(
        context: context,
        value: _enableSafeMode,
        topRadius: true,
        bottomRadius: true,
        title: S.current.safeMode,
        disabled: ResponsiveUtil.isDesktop(),
        description: S.current.safeModeTip,
        onTap: onSafeModeTapped,
      ),
    ];
  }

  initBiometricAuthentication() async {
    canAuthenticateResponse = await BiometricUtil.canAuthenticate();
    canAuthenticateResponseString =
        await BiometricUtil.getCanAuthenticateResponseString();
  }

  onEnablePinTapped() {
    setState(() {
      RouteUtil.pushPanelCupertinoRoute(
        context,
        PinVerifyScreen(
          onSuccess: () {
            setState(() {
              _enableGuesturePasswd = !_enableGuesturePasswd;
              IToast.showTop(_enableGuesturePasswd
                  ? S.current.enableGestureLockSuccess
                  : S.current.disableGestureLockSuccess);
              HiveUtil.put(
                  HiveUtil.enableGuesturePasswdKey, _enableGuesturePasswd);
              _hasGuesturePasswd =
                  HiveUtil.getString(HiveUtil.guesturePasswdKey) != null &&
                      HiveUtil.getString(HiveUtil.guesturePasswdKey)!
                          .isNotEmpty;
            });
          },
          isModal: false,
        ),
      );
    });
  }

  onBiometricTapped() {
    if (!_allowGuestureBiometric) {
      RouteUtil.pushPanelCupertinoRoute(
        context,
        PinVerifyScreen(
          onSuccess: () {
            IToast.showTop(S.current.enableBiometricSuccess);
            setState(() {
              _allowGuestureBiometric = !_allowGuestureBiometric;
              HiveUtil.put(
                  HiveUtil.enableBiometricKey, _allowGuestureBiometric);
            });
          },
          isModal: false,
        ),
      );
    } else {
      setState(() {
        _allowGuestureBiometric = !_allowGuestureBiometric;
        HiveUtil.put(HiveUtil.enableBiometricKey, _allowGuestureBiometric);
      });
    }
  }

  onChangePinTapped() {
    setState(() {
      RouteUtil.pushPanelCupertinoRoute(context, const PinChangeScreen())
          .then((value) {
        setState(() {
          _hasGuesturePasswd =
              HiveUtil.getString(HiveUtil.guesturePasswdKey) != null &&
                  HiveUtil.getString(HiveUtil.guesturePasswdKey)!.isNotEmpty;
        });
      });
    });
  }

  onEnableAutoLockTapped() {
    setState(() {
      _autoLock = !_autoLock;
      HiveUtil.put(HiveUtil.autoLockKey, _autoLock);
    });
  }

  onSafeModeTapped() {
    setState(() {
      _enableSafeMode = !_enableSafeMode;
      Utils.setSafeMode(_enableSafeMode);
      HiveUtil.put(HiveUtil.enableSafeModeKey, _enableSafeMode);
    });
  }
}
