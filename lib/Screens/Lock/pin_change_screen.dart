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

import 'dart:math';

import 'package:biometric_storage/biometric_storage.dart';
import 'package:flutter/material.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/General/Unlock/gesture_notifier.dart';
import 'package:twitee/Widgets/General/Unlock/gesture_unlock_indicator.dart';
import 'package:twitee/Widgets/General/Unlock/gesture_unlock_view.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';

import '../../Utils/biometric_util.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/utils.dart';
import '../../generated/l10n.dart';

class PinChangeScreen extends StatefulWidget {
  const PinChangeScreen({super.key});

  static const String routeName = "/pin/change";

  @override
  PinChangeScreenState createState() => PinChangeScreenState();
}

class PinChangeScreenState extends State<PinChangeScreen> {
  String _gesturePassword = "";
  final String? _oldPassword = HiveUtil.getString(HiveUtil.guesturePasswdKey);
  bool _isEditMode = HiveUtil.getString(HiveUtil.guesturePasswdKey) != null &&
      HiveUtil.getString(HiveUtil.guesturePasswdKey)!.isNotEmpty;
  late final bool _enableBiometric =
      HiveUtil.getBool(HiveUtil.enableBiometricKey);
  late final GestureNotifier _notifier = _isEditMode
      ? GestureNotifier(
          status: GestureStatus.verify,
          gestureText: S.current.drawOldGestureLock)
      : GestureNotifier(
          status: GestureStatus.create,
          gestureText: S.current.drawNewGestureLock);
  final GlobalKey<GestureState> _gestureUnlockView = GlobalKey();
  final GlobalKey<GestureUnlockIndicatorState> _indicator = GlobalKey();

  String? canAuthenticateResponseString;
  CanAuthenticateResponse? canAuthenticateResponse;

  bool get _biometricAvailable => canAuthenticateResponse?.isSuccess ?? false;

  @override
  void initState() {
    super.initState();
    initBiometricAuthentication();
  }

  initBiometricAuthentication() async {
    canAuthenticateResponse = await BiometricUtil.canAuthenticate();
    canAuthenticateResponseString =
        await BiometricUtil.getCanAuthenticateResponseString();
    if (_biometricAvailable && _enableBiometric && _isEditMode) {
      auth();
    }
  }

  void auth() async {
    await Utils.localAuth(onAuthed: () {
      IToast.showTop(S.current.biometricVerifySuccess);
      setState(() {
        _notifier.setStatus(
          status: GestureStatus.create,
          gestureText: S.current.drawNewGestureLock,
        );
        _isEditMode = false;
      });
      _gestureUnlockView.currentState?.updateStatus(UnlockStatus.normal);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
        transparent: true,
        context: context,
        showBack: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50),
            Text(
              _notifier.gestureText,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 30),
            GestureUnlockIndicator(
              key: _indicator,
              size: 30,
              roundSpace: 4,
              defaultColor: Colors.grey.withOpacity(0.5),
              selectedColor: Theme.of(context).primaryColor.withOpacity(0.6),
            ),
            Flexible(
              child: GestureUnlockView(
                key: _gestureUnlockView,
                size: min(MediaQuery.sizeOf(context).width, 400),
                padding: 60,
                roundSpace: 40,
                defaultColor: Colors.grey.withOpacity(0.5),
                selectedColor: Theme.of(context).primaryColor,
                failedColor: Theme.of(context).colorScheme.error,
                disableColor: Colors.grey,
                solidRadiusRatio: 0.3,
                lineWidth: 2,
                touchRadiusRatio: 0.3,
                onCompleted: _gestureComplete,
              ),
            ),
            Visibility(
              visible: _isEditMode && _biometricAvailable && _enableBiometric,
              child: ItemBuilder.buildRoundButton(
                context,
                text: ResponsiveUtil.isWindows()
                    ? S.current.biometricVerifyPin
                    : S.current.biometric,
                onTap: () {
                  auth();
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  void _gestureComplete(List<int> selected, UnlockStatus status) async {
    switch (_notifier.status) {
      case GestureStatus.create:
      case GestureStatus.createFailed:
        if (selected.length < 4) {
          setState(() {
            _notifier.setStatus(
              status: GestureStatus.createFailed,
              gestureText: S.current.atLeast4Points,
            );
          });
          _gestureUnlockView.currentState?.updateStatus(UnlockStatus.failed);
        } else {
          setState(() {
            _notifier.setStatus(
              status: GestureStatus.verify,
              gestureText: S.current.drawGestureLockAgain,
            );
          });
          _gesturePassword = GestureUnlockView.selectedToString(selected);
          _gestureUnlockView.currentState?.updateStatus(UnlockStatus.success);
          _indicator.currentState?.setSelectPoint(selected);
        }
        break;
      case GestureStatus.verify:
      case GestureStatus.verifyFailed:
        if (!_isEditMode) {
          String password = GestureUnlockView.selectedToString(selected);
          if (_gesturePassword == password) {
            IToast.showTop(S.current.setGestureLockSuccess);
            setState(() {
              _notifier.setStatus(
                status: GestureStatus.verify,
                gestureText: S.current.setGestureLockSuccess,
              );
              Navigator.pop(context);
            });
            HiveUtil.put(HiveUtil.guesturePasswdKey,
                GestureUnlockView.selectedToString(selected));
          } else {
            setState(() {
              _notifier.setStatus(
                status: GestureStatus.verifyFailed,
                gestureText: S.current.gestureLockNotMatch,
              );
            });
            _gestureUnlockView.currentState?.updateStatus(UnlockStatus.failed);
          }
        } else {
          String password = GestureUnlockView.selectedToString(selected);
          if (_oldPassword == password) {
            setState(() {
              _notifier.setStatus(
                status: GestureStatus.create,
                gestureText: S.current.drawNewGestureLock,
              );
              _isEditMode = false;
            });
            _gestureUnlockView.currentState?.updateStatus(UnlockStatus.normal);
          } else {
            setState(() {
              _notifier.setStatus(
                status: GestureStatus.verifyFailed,
                gestureText: S.current.gestureLockWrong,
              );
            });
            _gestureUnlockView.currentState?.updateStatus(UnlockStatus.failed);
          }
        }
        break;
      case GestureStatus.verifyFailedCountOverflow:
        break;
    }
  }
}
