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
import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:twitee/Utils/responsive_util.dart';

import '../../Utils/app_provider.dart';
import '../Custom/floating_modal.dart';
import 'generic_context_menu_bottom_sheet.dart';

class BottomSheetBuilder {
  static void showContextMenu(BuildContext context, FlutterContextMenu menu) {
    if (ResponsiveUtil.isLandscape()) {
      menu.showAtMousePosition(context, appProvider.mousePosition);
    } else {
      showBottomSheet(context, (context) => ContextMenuBottomSheet(menu: menu));
    }
  }

  static void showFlutterContextMenu(BuildContext context, Widget menu) {
    context.genericContextMenuOverlay.show(menu);
  }

  static void showBottomSheet(
    BuildContext context,
    WidgetBuilder builder, {
    bool enableDrag = true,
    bool responsive = false,
    bool useWideLandscape = true,
    Color? backgroundColor,
    double? preferMinWidth,
    ShapeBorder shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
  }) {
    bool isLandScape = useWideLandscape
        ? ResponsiveUtil.isWideLandscape()
        : ResponsiveUtil.isWideLandscape();
    preferMinWidth ??= responsive && isLandScape ? 450 : null;
    if (responsive && isLandScape) {
      showDialog(
        context: context,
        builder: (context) {
          return FloatingModal(
            preferMinWidth: preferMinWidth,
            useWideLandscape: useWideLandscape,
            child: builder(context),
          );
        },
      );
    } else {
      showCustomModalBottomSheet(
        context: context,
        elevation: 0,
        enableDrag: enableDrag,
        backgroundColor: backgroundColor ?? Theme.of(context).canvasColor,
        shape: shape,
        builder: builder,
        containerWidget: (_, animation, child) => FloatingModal(
          preferMinWidth: preferMinWidth,
          useWideLandscape: useWideLandscape,
          child: child,
        ),
      );
    }
  }

  static void showListBottomSheet(
    BuildContext context,
    WidgetBuilder builder, {
    Color? backgroundColor,
    ShapeBorder shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    ),
  }) {
    showCustomModalBottomSheet(
      context: context,
      elevation: 0,
      backgroundColor: backgroundColor ?? Theme.of(context).canvasColor,
      shape: shape,
      builder: builder,
      containerWidget: (_, animation, child) => child,
    );
  }
}
