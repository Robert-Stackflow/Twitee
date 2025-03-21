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
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';

import '../Widgets/Scaffold/custom_cupertino_route.dart';
import '../Widgets/Dialog/widgets/dialog_wrapper_widget.dart';

class RouteUtil {
  static pushMaterialRoute(
    BuildContext context,
    Widget page, {
    Function(dynamic)? onThen,
    bool popAll = false,
  }) {
    return Navigator.push(context, getFadeRoute(page))
        .then(onThen ?? (_) => {});
  }

  static pushCupertinoRoute(
    BuildContext context,
    Widget page, {
    Function(dynamic)? onThen,
    bool popAll = false,
  }) {
    appProvider.canPopByProvider = true;
    if (ResponsiveUtil.isLandscape()) {
      return pushFadeRoute(context, page, onThen: onThen);
    } else {
      if (popAll) {
        return Navigator.pushAndRemoveUntil(
            context,
            CustomCupertinoPageRoute(builder: (context) => page),
            (_) => false).then(onThen ?? (_) => {});
      } else {
        return Navigator.push(
                context, CustomCupertinoPageRoute(builder: (context) => page))
            .then(onThen ?? (_) => {});
      }
    }
  }

  static pushPanelCupertinoRoute(
    BuildContext context,
    Widget page, {
    bool popAll = false,
  }) {
    if (popAll) {
      panelScreenState?.popAll();
    }
    panelScreenState?.pushPage(page);
  }

  static pushDesktopFadeRoute(
    Widget page, {
    bool removeUtil = false,
  }) async {
    if (removeUtil) {
      appProvider.canPopByProvider = false;
      return await panelNavigatorState?.pushAndRemoveUntil(
        getFadeRoute(page),
        (route) => false,
      );
    } else {
      appProvider.canPopByProvider = true;
      return await panelNavigatorState?.push(
        getFadeRoute(page),
      );
    }
  }

  static getFadeRoute(Widget page, {Duration? duration}) {
    return PageRouteBuilder(
      transitionDuration: duration ?? const Duration(milliseconds: 300),
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation secondaryAnimation) {
        return FadeTransition(
          opacity: CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ),
          child: page,
        );
      },
    );
  }

  static pushFadeRoute(
    BuildContext context,
    Widget page, {
    Function(dynamic)? onThen,
  }) {
    return Navigator.push(
      context,
      getFadeRoute(page),
    ).then(onThen ?? (_) => {});
  }

  static pushDialogRoute(
    BuildContext context,
    Widget page, {
    bool barrierDismissible = true,
    bool showClose = true,
    bool fullScreen = false,
    double? preferMinWidth,
    double? preferMinHeight,
    Function(dynamic)? onThen,
    GlobalKey<DialogWrapperWidgetState>? overrideDialogNavigatorKey,
    bool useMaterial = false,
    bool popAll = false,
  }) {
    if (ResponsiveUtil.isLandscape()) {
      if (overrideDialogNavigatorKey == null && dialogNavigatorState != null) {
        dialogNavigatorState!.pushPage(page);
      } else {
        DialogBuilder.showPageDialog(
          context,
          child: page,
          barrierDismissible: barrierDismissible,
          showClose: showClose,
          fullScreen: fullScreen,
          onThen: onThen,
          preferMinWidth: preferMinWidth,
          preferMinHeight: preferMinHeight,
          overrideDialogNavigatorKey: overrideDialogNavigatorKey,
        );
      }
    } else {
      if (useMaterial) {
        pushMaterialRoute(context, page, onThen: onThen, popAll: popAll);
      } else {
        pushCupertinoRoute(context, page, onThen: onThen, popAll: popAll);
      }
    }
  }
}
