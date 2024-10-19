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
import 'package:fluttertoast/fluttertoast.dart';
import 'package:local_notifier/local_notifier.dart';
import 'package:smart_snackbars/enums/animate_from.dart';
import 'package:smart_snackbars/smart_snackbars.dart';
import 'package:smart_snackbars/widgets/snackbars/base_snackbar.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Utils/utils.dart';

import '../Widgets/Item/item_builder.dart';
import 'app_provider.dart';

class IToast {
  static FToast show(
    String text, {
    Icon? icon,
    int seconds = 2,
    ToastGravity gravity = ToastGravity.TOP,
  }) {
    FToast toast = FToast().init(rootContext);
    toast.showToast(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(rootContext).canvasColor,
          border: Border.all(
            color: Theme.of(rootContext).dividerColor,
            width: 0.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(rootContext).shadowColor,
              offset: const Offset(0, 4),
              blurRadius: 10,
              spreadRadius: 1,
            ).scale(2)
          ],
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(rootContext).textTheme.bodyMedium,
        ),
      ),
      gravity: gravity,
      toastDuration: Duration(seconds: seconds),
    );
    return toast;
  }

  static FToast? showTop(
    String text, {
    Icon? icon,
  }) {
    if (Utils.isEmpty(text)) return null;
    return show(text, icon: icon);
  }

  static FToast showBottom(
    String text, {
    Icon? icon,
  }) {
    return show(text, icon: icon, gravity: ToastGravity.BOTTOM);
  }

  static LocalNotification? showDesktopNotification(
    String title, {
    String? subTitle,
    String? body,
    List<String> actions = const [],
    Function()? onClick,
    Function(int)? onClickAction,
  }) {
    if (!ResponsiveUtil.isDesktop()) return null;
    var nActions =
        actions.map((e) => LocalNotificationAction(text: e)).toList();
    LocalNotification notification = LocalNotification(
      identifier: Utils.generateUid(),
      title: title,
      subtitle: subTitle,
      body: body,
      actions: nActions,
    );
    notification.onShow = () {};
    notification.onClose = (closeReason) {
      switch (closeReason) {
        case LocalNotificationCloseReason.userCanceled:
          break;
        case LocalNotificationCloseReason.timedOut:
          break;
        default:
      }
    };
    notification.onClick = onClick;
    notification.onClickAction = onClickAction;
    notification.show();
    return notification;
  }

  static CustomSnackBarController _showLoadingSnackbar(
    String message, {
    String? buttonText,
    Function()? onTap,
  }) {
    CustomSnackBarController controller = CustomSnackBarController();
    SmartSnackBars.showCustomSnackBar(
      context: rootContext,
      controller: controller,
      duration: const Duration(milliseconds: 600),
      animateFrom: AnimateFrom.fromBottom,
      animationCurve: Curves.easeInOut,
      distanceToTravel: 0.0,
      persist: true,
      maxWidth: ResponsiveUtil.isLandscape() ? 400 : null,
      outerPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(rootContext).canvasColor,
          border: Border.all(
            color: Theme.of(rootContext).dividerColor,
            width: 0.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(rootContext).shadowColor,
              offset: const Offset(0, 4),
              blurRadius: 10,
              spreadRadius: 1,
            ).scale(2)
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(rootContext).textTheme.titleLarge?.color),
                strokeWidth: 3,
                strokeCap: StrokeCap.round,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              message,
              style: Theme.of(rootContext).textTheme.titleMedium,
            ),
            const Spacer(),
            if (Utils.isNotEmpty(buttonText))
              ItemBuilder.buildRoundButton(
                rootContext,
                text: buttonText!,
                onTap: onTap ?? () {},
                background: Theme.of(rootContext).primaryColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
          ],
        ),
      ),
    );
    return controller;
  }

  static Future<dynamic> showLoadingSnackbar(
    String message,
    Function() future, {
    String? buttonText,
    Function()? onTap,
  }) async {
    var snackBar =
        _showLoadingSnackbar(message, buttonText: buttonText, onTap: onTap);
    var res = await future();
    snackBar.close?.call();
    return res;
  }
}
