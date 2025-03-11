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
import 'package:twitee/Api/list_api.dart';
import 'package:twitee/Models/tab_item_data.dart';
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Screens/Detail/community_detail_screen.dart';
import 'package:twitee/Screens/Flow/list_flow_screen.dart';
import 'package:twitee/Screens/Flow/timeline_flow_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Widgets/BottomSheet/bottom_sheet_builder.dart';

import '../../Api/community_api.dart';
import '../../Models/view_config.dart';
import '../../Openapi/models/community.dart';
import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Resources/theme.dart';
import '../../Utils/constant.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';
import '../../Widgets/Twitter/refresh_interface.dart';
import '../Flow/community_list_flow_screen.dart';
import 'list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "/navigtion/home";

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with
        TickerProviderStateMixin,
        ScrollToHideMixin,
        AutomaticKeepAliveClientMixin,
        BottomNavgationMixin {
  @override
  bool get wantKeepAlive => true;

  late TabController _tabController;
  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();
  List<PinnedTimelineUnion> pinnedLists = [];
  TabItemDataList tabDataList = TabItemDataList([]);

  int get currentIndex => _tabController.index;

  Map<String, TabItemData> idToListFlowMap = {};

  ViewConfig viewConfig =
      ViewConfig.fromJson(HiveUtil.getMap(HiveUtil.homeViewConfigKey) ?? {});

  initTab() {
    tabDataList.addAll([
      TabItemData.build(
        context,
        "为你推荐",
        (key, scrollController) => ItemBuilder.buildConstraintContainer(
          child: TimelineFlowScreen(
            key: key,
            isLatest: false,
            scrollController: scrollController,
            triggerOffset: appBarWithTabBarHeight,
            viewConfig: viewConfig,
          ),
        ),
      ),
      TabItemData.build(
        context,
        "正在关注",
        (key, scrollController) => ItemBuilder.buildConstraintContainer(
          child: TimelineFlowScreen(
            key: key,
            scrollController: scrollController,
            triggerOffset: appBarWithTabBarHeight,
            viewConfig: viewConfig,
          ),
        ),
      ),
    ]);
    _tabController = TabController(length: tabDataList.length, vsync: this);
    _tabController.index =
        appProvider.homeTabIndex.clamp(0, tabDataList.length - 1);
    _tabController.addListener(() {
      appProvider.homeTabIndex = _tabController.index;
    });
    if (mounted) setState(() {});
    panelScreenState?.refreshScrollControllers();
  }

  addTabs() {
    UserInfo? info = HiveUtil.getUserInfo();
    tabDataList = tabDataList.sublist(0, 2);
    for (var list in pinnedLists) {
      String idStr = "";
      if (list is TimelineTwitterListInfo) {
        idStr = list.idStr;
      } else if (list is Community) {
        idStr = list.result.idStr ?? "";
      }
      if (idToListFlowMap[idStr] == null) {
        if (list is TimelineTwitterListInfo) {
          idToListFlowMap[idStr] = TabItemData.build(
            context,
            list.name,
            (key, scrollController) => ItemBuilder.buildConstraintContainer(
              child: ListFlowScreen(
                key: key,
                listId: list.idStr,
                userId: info!.idStr,
                scrollController: scrollController,
              ),
            ),
            contextMenu: ListScreenState.buildListTabContextMenu(context, list),
          );
        } else if (list is Community) {
          idToListFlowMap[idStr] = TabItemData.build(
            context,
            list.result.name,
            (key, scrollController) => ItemBuilder.buildConstraintContainer(
              child: CommunityListFlowScreen(
                key: key,
                communityId: list.result.idStr ?? "",
                scrollController: scrollController,
                location: CommunityDisplayLocation.home,
              ),
            ),
            contextMenu: CommunityDetailScreenState.buildCommunityContextMenu(
              context,
              list.result,
              showUrlButtons: false,
            ),
            showPopButton: true,
            onPopTap: (key) {
              CommunityListFlowScreenState? state =
                  key.currentState as CommunityListFlowScreenState?;
              state?.showPopMenu();
            },
          );
        }
        tabDataList.add(idToListFlowMap[idStr]!);
      } else {
        tabDataList.add(idToListFlowMap[idStr]!);
      }
    }
    int index = currentIndex;
    _tabController = TabController(
      length: tabDataList.length,
      vsync: this,
      initialIndex: index.clamp(0, tabDataList.length - 1),
    );
    if (mounted) setState(() {});
    panelScreenState?.refreshScrollControllers();
  }

  refreshPinnedLists() async {
    var res = await ListApi.getPinnedLists();
    if (res.success) {
      pinnedLists = res.data;
      addTabs();
    }
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
      if (mounted) initTab();
      refreshPinnedLists();
    });
  }

  _buildLogo({
    double size = 50,
  }) {
    return IgnorePointer(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.antiAlias,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Utils.isDark(context)
                  ? 'assets/logo-light-transparent.png'
                  : 'assets/logo-transparent.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: MyTheme.background,
      extendBody: true,
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        showMenu: true,
        spacing: ResponsiveUtil.isLandscape() ? 15 : 10,
        title: "首页",
        leftPadding: 12,
        rightPadding: 8,
        centerInMobile: true,
        titleWidget: ResponsiveUtil.isLandscape() ? null : _buildLogo(),
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
        ],
        bottom: ItemBuilder.buildTabBar(
          context,
          _tabController,
          tabDataList.tabList,
          onTap: onTapTab,
          showBorder: true,
          width: MediaQuery.of(context).size.width,
        ),
        bottomHeight: 56,
      ),
      body: Stack(
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
      ),
    );
  }

  onTapTab(int index) {
    panelScreenState?.showBottomNavigationBar();
    if (!_tabController.indexIsChanging && index == currentIndex) {
      if (tabDataList.getScrollController(index) != null &&
          tabDataList.getScrollController(index)!.offset > 30) {
        scrollToTop();
      } else {
        refresh();
      }
    }
    appProvider.homeTabIndex = index;
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
    refreshPinnedLists();
    tabDataList.getRefreshMixin(currentIndex)?.refresh();
  }

  refreshViewConfig() {
    setState(() {});
    HiveUtil.put(HiveUtil.homeViewConfigKey, viewConfig.toJson());
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

  @override
  FutureOr onTapBottomNavigation() {
    onTapTab(_tabController.index);
  }
}
