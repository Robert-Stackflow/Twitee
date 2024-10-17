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
import 'package:twitee/Screens/Detail/list_manage_screen.dart';
import 'package:twitee/Utils/route_util.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../../Api/data_api.dart';
import '../../Models/response_result.dart';
import '../../Models/tab_item_data.dart';
import '../../Openapi/models/module_item.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_module.dart';
import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/enums.dart';
import '../../Utils/ilogger.dart';
import '../../Utils/itoast.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
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
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin,
        ScrollToHideMixin {
  @override
  bool get wantKeepAlive => true;
  late TabController _tabController;
  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();
  TabItemDataList tabDataList = TabItemDataList([]);

  int get currentIndex => _tabController.index;
  List<TimelineTwitterList> validItems = [];
  InitPhase _initPhase = InitPhase.haveNotConnected;

  fetchLists() async {
    _initPhase = InitPhase.connecting;
    try {
      ResponseResult res;
      res = await DataApi.getLists(userId: widget.userId);
      if (res.success) {
        Timeline timeline = res.data;
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            validItems = _processEntries(instruction.entries);
            _initPhase = InitPhase.successful;
            initTab();
          }
        }
      } else {
        _initPhase = InitPhase.failed;
        IToast.showTop("加载列表失败");
      }
    } catch (e, t) {
      _initPhase = InitPhase.failed;
      IToast.showTop("加载失败");
      ILogger.error("Twitee", "Failed to get lists", e, t);
    }
    setState(() {});
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
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _tabController = TabController(length: 0, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initTab();
      fetchLists();
    });
  }

  initTab() {
    for (var list in validItems) {
      tabDataList.add(
        TabItemData.build(
          list.list.name,
          (key, scrollController) => ListFlowScreen(
            key: key,
            listId: list.list.idStr,
            userId: widget.userId,
            scrollController: scrollController,
          ),
        ),
      );
    }
    _tabController = TabController(length: tabDataList.length, vsync: this);
    panelScreenState?.refreshScrollControllers();
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        showMenu: true,
        titleWidget: ItemBuilder.buildTabBar(
          context,
          _tabController,
          tabDataList.tabList,
          onTap: onTapTab,
          autoScrollable: false,
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    switch (_initPhase) {
      case InitPhase.connecting:
        return ItemBuilder.buildLoadingDialog(context,
            background: Colors.transparent, text: "加载列表中...");
      case InitPhase.failed:
        return ItemBuilder.buildError(
          context: context,
          onTap: fetchLists,
        );
      case InitPhase.successful:
        return tabDataList.isNotEmpty
            ? Stack(
                children: [
                  TabBarView(
                    controller: _tabController,
                    children: tabDataList.pageList,
                  ),
                  Positioned(
                    right: ResponsiveUtil.isLandscape() ? 16 : 12,
                    bottom: ResponsiveUtil.isLandscape() ? 16 : 70,
                    child: ScrollToHide(
                      controller: _scrollToHideController,
                      scrollControllers: tabDataList.scrollControllerList,
                      hideDirection: Axis.vertical,
                      child: _buildFloatingButtons(),
                    ),
                  ),
                ],
              )
            : ItemBuilder.buildError(
                context: context, text: "暂无列表", buttonText: "新建", onTap: () {});
      default:
        return Container();
    }
  }

  onTapTab(int index) {
    if (!_tabController.indexIsChanging && index == currentIndex) {
      if (tabDataList.getScrollController(index) != null &&
          tabDataList.getScrollController(index)!.offset > 30) {
        scrollToTop();
      } else {
        refresh();
      }
    }
  }

  scrollToTop() async {
    tabDataList.getRefreshMixin(currentIndex)?.scrollToTop();
    _scrollToHideController.show();
    panelScreenState?.showBottomNavigationBar();
  }

  refresh() async {
    _refreshRotationController.repeat();
    await scrollToTop();
    _refreshRotationController.stop();
    _refreshRotationController.forward();
    tabDataList.getRefreshMixin(currentIndex)?.refresh();
  }

  _buildFloatingButtons() {
    return Column(
      children: [
        ItemBuilder.buildShadowIconButton(
          context: context,
          icon: RotationTransition(
            turns:
                Tween(begin: 0.0, end: 1.0).animate(_refreshRotationController),
            child: const Icon(Icons.refresh_rounded),
          ),
          onTap: () async {
            refresh();
          },
        ),
        const SizedBox(height: 10),
        ItemBuilder.buildShadowIconButton(
          context: context,
          icon: const Icon(Icons.settings_rounded),
          onTap: () async {
            RouteUtil.pushDialogRoute(
                context, ListManageScreen(userId: widget.userId));
          },
        ),
        const SizedBox(height: 10),
        ItemBuilder.buildShadowIconButton(
          context: context,
          icon: const Icon(Icons.arrow_upward_rounded),
          onTap: () {
            scrollToTop();
          },
        ),
      ],
    );
  }

  @override
  List<ScrollController> getScrollControllers() {
    return tabDataList.scrollControllerList;
  }
}
