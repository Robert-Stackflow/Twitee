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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:twitee/Utils/route_util.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/Twitter/twitter_list_item.dart';

import '../../Api/data_api.dart';
import '../../Models/response_result.dart';
import '../../Models/tab_item_data.dart';
import '../../Models/user_info.dart';
import '../../Models/view_config.dart';
import '../../Openapi/models/module_item.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_module.dart';
import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Openapi/models/user.dart';
import '../../Openapi/models/user_legacy.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/enums.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/ilogger.dart';
import '../../Utils/itoast.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/BottomSheet/bottom_sheet_builder.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';
import '../Detail/list_detail_screen.dart';
import '../Detail/list_manage_screen.dart';
import '../Flow/list_flow_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key, required this.userId});

  final String userId;

  static const String routeName = "/navigtion/list";

  @override
  State<ListScreen> createState() => ListScreenState();
}

class ListScreenState extends State<ListScreen>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin,
        ScrollToHideMixin,
        BottomNavgationMixin {
  @override
  bool get wantKeepAlive => true;
  late TabController _tabController;
  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();
  TabItemDataList tabDataList = TabItemDataList([]);

  ViewConfig viewConfig =
      ViewConfig.fromJson(HiveUtil.getMap(HiveUtil.listViewConfigKey) ?? {});

  int get currentIndex => _tabController.index;
  List<TimelineTwitterList> validItems = [];
  InitPhase _initPhase = InitPhase.haveNotConnected;

  Map<String, TabItemData> idToListFlowMap = {};

  @override
  FutureOr onTapBottomNavigation() {
    onTapTab(_tabController.index);
  }

  refreshLists() async {
    try {
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
      }
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

  static buildListTabContextMenu(
      BuildContext context, TimelineTwitterListInfo list) {
    UserInfo? info = HiveUtil.getUserInfo();
    UserLegacy? user = list.userResults.result != null
        ? (list.userResults.result! as User?)?.legacy
        : null;
    bool isMyself = (info?.screenName == user?.screenName);
    return FlutterContextMenu(entries: [
      FlutterContextMenuItem(
        "查看列表",
        iconData: Icons.featured_play_list_outlined,
        onPressed: () {
          RouteUtil.pushPanelCupertinoRoute(
              context, ListDetailScreen(listId: list.idStr));
        },
      ),
      FlutterContextMenuItem(
        isMyself ? "取消置顶" : "取消订阅",
        iconData: Icons.push_pin_outlined,
        status: MenuItemStatus.warning,
        onPressed: () {
          TwitterListItemState.processPinOrUnpin(context, list);
        },
      ),
    ]);
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
      refreshLists();
    });
  }

  initTab([bool isInit = true]) {
    tabDataList.clear();
    for (var list in validItems) {
      if (idToListFlowMap[list.list.idStr] == null) {
        idToListFlowMap[list.list.idStr] = TabItemData.build(
          context,
          list.list.name,
          (key, scrollController) => ItemBuilder.buildConstraintContainer(
            child: ListFlowScreen(
              key: key,
              listId: list.list.idStr,
              userId: widget.userId,
              scrollController: scrollController,
            ),
          ),
          contextMenu: buildListTabContextMenu(context, list.list),
        );
        tabDataList.add(idToListFlowMap[list.list.idStr]!);
      } else {
        tabDataList.add(idToListFlowMap[list.list.idStr]!);
      }
    }
    int index = currentIndex;
    _tabController = TabController(
        length: tabDataList.length, vsync: this, initialIndex: index);
    if (isInit) {
      int toIndex = validItems.indexWhere((element) =>
          element.list.idStr == appProvider.lastViewListId &&
          element.list.idStr.isNotEmpty);
      _tabController.index = toIndex != -1 ? toIndex : appProvider.homeTabIndex;
    }
    _tabController.addListener(() {
      appProvider.lastViewListId = validItems[_tabController.index].list.idStr;
    });
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
        spacing: ResponsiveUtil.isLandscape() ? 15 : 10,
        title: "列表",
        bottomHeight: 56,
        centerInMobile: true,
        leftPadding: 48,
        rightPadding: 8,
        bottom: tabDataList.isNotEmpty
            ? ItemBuilder.buildTabBar(
                context,
                _tabController,
                tabDataList.tabList,
                onTap: onTapTab,
                showBorder: true,
                width: MediaQuery.of(context).size.width,
              )
            : null,
        actions: [
          ItemBuilder.buildIconButton(
            context: context,
            icon: viewConfig.filtered
                ? const Icon(Icons.filter_alt_off_outlined)
                : const Icon(Icons.filter_alt_outlined),
            onTap: () {
              BottomSheetBuilder.showContextMenu(
                context,
                _buildViewConfigContextMenuButtons(),
              );
            },
          ),
          const SizedBox(width: 8),
          ItemBuilder.buildIconButton(
            context: context,
            icon: const Icon(Icons.category_outlined),
            onTap: () {
              UserInfo? info = HiveUtil.getUserInfo();
              panelScreenState?.pushPage(ListManageScreen(userId: info!.idStr));
            },
          ),
        ],
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
          onTap: refreshLists,
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
                    bottom: ResponsiveUtil.isLandscape() ? 16 : 76,
                    child: ScrollToHide(
                      controller: _scrollToHideController,
                      scrollControllers: tabDataList.scrollControllerList,
                      hideDirection: AxisDirection.down,
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
    appProvider.lastViewListId = validItems[index].list.idStr;
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
    refreshLists();
  }

  refreshViewConfig() {
    setState(() {});
    HiveUtil.put(HiveUtil.listViewConfigKey, viewConfig.toJson());
    tabDataList.getViewConfigMixin(currentIndex)?.refreshViewConfig(viewConfig);
  }

  _buildViewConfigContextMenuButtons() {
    return FlutterContextMenu(
      entries: [
        FlutterContextMenuItem.checkbox(
          "包含回复",
          checked: viewConfig.containReplies,
          onPressed: () {
            viewConfig.containReplies = !viewConfig.containReplies;
            refreshViewConfig();
          },
        ),
        FlutterContextMenuItem.checkbox(
          "包含转推",
          checked: viewConfig.containRetweets,
          onPressed: () {
            viewConfig.containRetweets = !viewConfig.containRetweets;
            refreshViewConfig();
          },
        ),
        FlutterContextMenuItem.checkbox(
          "只显示媒体",
          checked: viewConfig.onlyShowMedia,
          onPressed: () {
            viewConfig.onlyShowMedia = !viewConfig.onlyShowMedia;
            refreshViewConfig();
          },
        ),
      ],
    );
  }

  _buildFloatingButtons() {
    return Column(
      children: [
        if (ResponsiveUtil.isLandscape()) ...[
          ItemBuilder.buildShadowIconButton(
            context: context,
            icon: RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0)
                  .animate(_refreshRotationController),
              child: const Icon(Icons.refresh_rounded),
            ),
            onTap: () async {
              refresh();
            },
          ),
          const SizedBox(height: 10),
          ItemBuilder.buildShadowIconButton(
            context: context,
            icon: viewConfig.filtered
                ? const Icon(Icons.filter_alt_off_outlined)
                : const Icon(Icons.filter_alt_outlined),
            onTap: () {
              BottomSheetBuilder.showContextMenu(
                  context, _buildViewConfigContextMenuButtons());
            },
          ),
        ],
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
