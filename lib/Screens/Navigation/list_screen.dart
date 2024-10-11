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

import '../../Api/data_api.dart';
import '../../Models/response_result.dart';
import '../../Openapi/models/module_item.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_module.dart';
import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Utils/ilogger.dart';
import '../../Utils/itoast.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Custom/custom_tab_indicator.dart';
import '../../Widgets/Item/item_builder.dart';
import '../Flow/list_flow_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key, required this.userId});

  final String userId;

  static const String routeName = "/navigtion/list";

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  late TabController _tabController;
  List<Tab> tabList = [];
  List<Widget> pageList = [];
  List<TimelineTwitterList> validItems = [];
  bool inited = false;

  fetchLists() async {
    try {
      ResponseResult res;
      res = await DataApi.getLists(userId: widget.userId);
      if (res.success) {
        Timeline timeline = res.data;
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            validItems = _processEntries(instruction.entries);
            setState(() {
              inited = true;
            });
            initTab();
          }
        }
      }
    } catch (e, t) {
      IToast.showTop("加载失败");
      ILogger.error("Twitee", "Failed to get lists", e, t);
    }
  }

  List<TimelineTwitterList> _processEntries(List<TimelineAddEntry> entries) {
    List<ModuleItem> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineModule) {
        TimelineTimelineModule module = entry.content as TimelineTimelineModule;
        if (module.items != null) {
          result.addAll(
              module.items!.where((element) => element != null).map((e) => e!));
        }
      }
    }
    List<TimelineTwitterList> lists = [];
    for (var item in result) {
      if (item.item.itemContent is TimelineTwitterList) {
        lists.add(item.item.itemContent as TimelineTwitterList);
      }
    }
    return lists;
  }

  @override
  void initState() {
    super.initState();
    initTab();
    fetchLists();
  }

  initTab() {
    for (var list in validItems) {
      tabList.add(_buildTab(list.list.name));
      pageList
          .add(ListFlowScreen(listId: list.list.idStr, userId: widget.userId));
    }
    _tabController = TabController(length: tabList.length, vsync: this);
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        titleWidget: Center(
          child: Row(
            children: [
              if (!inited) const SizedBox(width: 20),
              if (!inited)
                Text(
                  "加载列表中...",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              if (inited)
                _buildTabBar(56, const EdgeInsets.symmetric(horizontal: 10)),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: pageList,
      ),
    );
  }

  _buildTabBar([double? height, EdgeInsetsGeometry? padding]) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height ?? 56),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: TabBar(
          controller: _tabController,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          tabs: tabList,
          labelPadding: const EdgeInsets.symmetric(horizontal: 12),
          isScrollable: true,
          dividerHeight: 0,
          padding: padding,
          tabAlignment: TabAlignment.start,
          physics: const ClampingScrollPhysics(),
          labelStyle: Theme.of(context)
              .textTheme
              .titleMedium
              ?.apply(fontWeightDelta: 2),
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .titleMedium
              ?.apply(color: Colors.grey),
          indicator:
              CustomTabIndicator(borderColor: Theme.of(context).primaryColor),
          onTap: (index) {},
        ),
      ),
    );
  }

  _buildTab(String str) {
    return Tab(
      child: ContextMenuRegion(
        behavior: ResponsiveUtil.isDesktop()
            ? const [ContextMenuShowBehavior.secondaryTap]
            : const [],
        contextMenu: Container(),
        child: GestureDetector(
          child: Text(str),
        ),
      ),
    );
  }
}
