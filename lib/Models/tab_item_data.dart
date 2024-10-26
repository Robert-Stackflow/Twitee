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

import 'package:context_menus/context_menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/BottomSheet/bottom_sheet_builder.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

class TabItemData {
  final Tab tab;
  final Widget widget;
  final ScrollController scrollController;
  final GlobalKey key;

  const TabItemData({
    required this.tab,
    required this.widget,
    required this.key,
    required this.scrollController,
  });

  factory TabItemData.build(
    BuildContext context,
    String title,
    Widget Function(GlobalKey, ScrollController) widgetBuilder, {
    Widget? contextMenu,
    Function(GlobalKey)? onPopTap,
    bool showPopButton = false,
  }) {
    GlobalKey key = GlobalKey();
    ScrollController scrollController = ScrollController();
    return TabItemData(
      tab: _buildTab(
        context,
        title,
        contextMenu: contextMenu,
        onPopTap: () {
          onPopTap?.call(key);
        },
        showPopButton: showPopButton,
      ),
      widget: widgetBuilder.call(key, scrollController),
      key: key,
      scrollController: scrollController,
    );
  }

  static _buildTab(
    BuildContext context,
    String str, {
    Widget? contextMenu,
    Function()? onPopTap,
    bool showPopButton = false,
  }) {
    var child = showPopButton
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(str),
              GestureDetector(
                onTap: onPopTap,
                child: const Icon(Icons.keyboard_arrow_down_rounded),
              ),
            ],
          )
        : Text(str);
    return Tab(
      child: contextMenu != null
          ? ItemBuilder.buildContextMenuOverlay(GestureDetector(
              onSecondaryTap: () {
                BottomSheetBuilder.showContextMenu(
                    context, contextMenu as GenericContextMenu);
              },
              onLongPress: () {
                if (!ResponsiveUtil.isDesktop()) {
                  HapticFeedback.mediumImpact();
                  BottomSheetBuilder.showContextMenu(
                      context, contextMenu as GenericContextMenu);
                }
              },
              child: child,
            ))
          : child,
    );
  }
}

class TabItemDataList {
  List<TabItemData> mList;

  TabItemDataList(List<TabItemData> list) : mList = list;

  List<Widget> get pageList => mList.map((e) => e.widget).toList();

  List<Tab> get tabList => mList.map((e) => e.tab).toList();

  List<GlobalKey> get keyList => mList.map((e) => e.key).toList();

  List<ScrollController> get scrollControllerList =>
      mList.map((e) => e.scrollController).toList();

  bool get isNotEmpty => mList.isNotEmpty;

  RefreshMixin? getRefreshMixin(int index) {
    if (index < 0 || index >= scrollControllerList.length) return null;
    return keyList[index].currentState as RefreshMixin?;
  }

  OnSelectTopicMixin? getOnSelectTopicMixin(int index) {
    if (index < 0 || index >= scrollControllerList.length) return null;
    return keyList[index].currentState as OnSelectTopicMixin?;
  }

  ScrollController? getScrollController(int index) {
    if (index < 0 || index >= scrollControllerList.length) return null;
    return scrollControllerList[index];
  }

  ScrollController getScrollControllerNotNull(int index) {
    return getScrollController(index) ?? ScrollController();
  }

  int get length => mList.length;

  void add(TabItemData item) {
    mList.add(item);
  }

  void addAll(List<TabItemData> items) {
    mList.addAll(items);
  }

  TabItemDataList sublist(int start, [int? end]) {
    return TabItemDataList(mList.sublist(start, end));
  }

  clear() {
    mList.clear();
  }
}
