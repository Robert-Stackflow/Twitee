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
import 'package:twitee/Resources/theme.dart';

import '../../Utils/responsive_util.dart';
import '../Item/item_builder.dart';

class ContextMenuBottomSheet extends StatefulWidget {
  const ContextMenuBottomSheet({
    super.key,
    required this.menu,
  });

  final FlutterContextMenu menu;

  @override
  ContextMenuBottomSheetState createState() => ContextMenuBottomSheetState();
}

class ContextMenuBottomSheetState extends State<ContextMenuBottomSheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.vertical(
                top: const Radius.circular(20),
                bottom: ResponsiveUtil.isWideLandscape()
                    ? const Radius.circular(20)
                    : Radius.zero),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(height: 40),
                  Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(2.5),
                    ),
                  ),
                ],
              ),
              for (var config in widget.menu.entries)
                _buildConfigItem(config as FlutterContextMenuItem),
            ],
          ),
        ),
      ],
    );
  }

  _buildConfigItem(FlutterContextMenuItem? config) {
    Color? textColor = null;
    if (config == null || config.type == MenuItemType.divider) {
      return ItemBuilder.buildDivider(
        context,
        width: 1.5,
        vertical: 12,
        horizontal: 16,
      );
    } else {
      switch (config.status) {
        case MenuItemStatus.success:
          textColor = MyTheme.successColor;
          break;
        case MenuItemStatus.warning:
          textColor = MyTheme.warningColor;
          break;
        case MenuItemStatus.error:
          textColor = MyTheme.errorColor;
          break;
        default:
          textColor = null;
          break;
      }
      return Material(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
            config.onPressed?.call();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                if (config.type != MenuItemType.checkbox &&
                    config.iconData != null) ...[
                  Icon(config.iconData, size: 24, color: textColor),
                  const SizedBox(width: 10),
                ],
                if (config.type == MenuItemType.checkbox && config.checked)
                  Icon(Icons.check_rounded, size: 20, color: textColor),
                if (config.type == MenuItemType.checkbox && !config.checked)
                  const SizedBox(width: 20, height: 20),
                if (config.iconData != null) const SizedBox(width: 10),
                Text(
                  config.label,
                  style: MyTheme.bodyLarge.apply(color: textColor),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
