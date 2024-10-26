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
import 'package:twitee/Api/list_api.dart';
import 'package:twitee/Models/tab_item_data.dart';
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Screens/Detail/community_detail_screen.dart';
import 'package:twitee/Screens/Flow/list_flow_screen.dart';
import 'package:twitee/Screens/Flow/timeline_flow_screen.dart';
import 'package:twitee/Utils/app_provider.dart';

import '../../Api/community_api.dart';
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

  initTab() {
    tabDataList.addAll([
      TabItemData.build(
        context,
        "为你推荐",
        (key, scrollController) => TimelineFlowScreen(
          key: key,
          isLatest: false,
          scrollController: scrollController,
          triggerOffset: appBarWithTabBarHeight,
        ),
      ),
      TabItemData.build(
        context,
        "正在关注",
        (key, scrollController) => TimelineFlowScreen(
          key: key,
          scrollController: scrollController,
          triggerOffset: appBarWithTabBarHeight,
        ),
      ),
    ]);
    _tabController = TabController(length: tabDataList.length, vsync: this);
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
            (key, scrollController) => ListFlowScreen(
              key: key,
              listId: list.idStr,
              userId: info!.idStr,
              scrollController: scrollController,
            ),
            contextMenu: ListScreenState.buildListTabContextMenu(context, list),
          );
        } else if (list is Community) {
          idToListFlowMap[idStr] = TabItemData.build(
            context,
            list.result.name,
            (key, scrollController) => CommunityListFlowScreen(
              key: key,
              communityId: list.result.idStr ?? "",
              scrollController: scrollController,
              location: CommunityDisplayLocation.home,
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
        initialIndex: index.clamp(0, tabDataList.length - 1));
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
      initTab();
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
        rightPadding: 30.5,
        centerInMobile: true,
        titleWidget: ResponsiveUtil.isLandscape() ? null : _buildLogo(),
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
              controller: _tabController, children: tabDataList.pageList),
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

  _buildFloatingButtons() {
    return Column(
      children: [
        if (ResponsiveUtil.isLandscape())
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
