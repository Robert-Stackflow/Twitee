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
import 'package:twitee/Utils/constant.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../Utils/responsive_util.dart';

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
    String title,
    Widget Function(GlobalKey, ScrollController) widgetBuilder, {
    Widget? contextMenu,
  }) {
    GlobalKey key = GlobalKey();
    ScrollController scrollController = ScrollController();
    return TabItemData(
      tab: _buildTab(title, contextMenu),
      widget: widgetBuilder.call(key, scrollController),
      key: key,
      scrollController: scrollController,
    );
  }

  static _buildTab(String str, [Widget? contextMenu]) {
    return Tab(
      child: ContextMenuRegion(
        behavior: ResponsiveUtil.isDesktop()
            ? const [ContextMenuShowBehavior.secondaryTap]
            : const [],
        contextMenu: contextMenu ?? emptyWidget,
        child: Text(str),
      ),
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

  RefreshMixin? getRefreshMixin(int index) {
    if (index < 0 || index >= scrollControllerList.length) return null;
    return keyList[index].currentState as RefreshMixin?;
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

  clear(){
    mList.clear();
  }
}
