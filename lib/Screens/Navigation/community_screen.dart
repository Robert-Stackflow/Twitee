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
import 'package:twitee/Screens/Detail/communities_search_screen.dart';
import 'package:twitee/Screens/Flow/community_discovery_screen.dart';
import 'package:twitee/Screens/Flow/community_explore_screen.dart';
import 'package:twitee/Screens/Flow/community_home_screen.dart';
import 'package:twitee/Utils/route_util.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../../Api/community_api.dart';
import '../../Models/response_result.dart';
import '../../Models/tab_item_data.dart';
import '../../Models/view_config.dart';
import '../../Openapi/models/topic_context.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/constant.dart';
import '../../Utils/enums.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/ilogger.dart';
import '../../Utils/itoast.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/BottomSheet/bottom_sheet_builder.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  static const String routeName = "/navigtion/community";

  @override
  State<CommunityScreen> createState() => CommunityScreenState();
}

class CommunityScreenState extends State<CommunityScreen>
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

  int get currentIndex => _tabController.index;
  ViewConfig viewConfig = ViewConfig.fromJson(
      HiveUtil.getMap(HiveUtil.communityViewConfigKey) ?? {});

  Map<String, TabItemData> idToListFlowMap = {};

  InitPhase _initPhase = InitPhase.haveNotConnected;
  List<CommunityTopic> topics = [];

  @override
  FutureOr onTapBottomNavigation() {
    onTapTab(_tabController.index);
  }

  refreshTopics() async {
    try {
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
        setState(() {});
      }
      ResponseResult res;
      res = await CommunityApi.getCommunityTopics();
      if (res.success) {
        topics = res.data;
        _initPhase = InitPhase.successful;
        initTab();
      } else {
        _initPhase = InitPhase.failed;
        IToast.showTop("加载话题列表失败");
      }
    } catch (e, t) {
      _initPhase = InitPhase.failed;
      IToast.showTop("加载失败");
      ILogger.error("Twitee", "Failed to get topics", e, t);
    }
    setState(() {});
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
      refreshTopics();
    });
  }

  initTab() {
    tabDataList.addAll([
      TabItemData.build(
        context,
        "主页",
        (key, scrollController) => ItemBuilder.buildConstraintContainer(
          child: CommunityHomeScreen(
            key: key,
            scrollController: scrollController,
            triggerOffset: appBarWithTabBarHeight,
            topics: topics,
          ),
        ),
      ),
      TabItemData.build(
        context,
        "发现社群",
        (key, scrollController) => ItemBuilder.buildConstraintContainer(
          child: CommunityDiscoveryScreen(
            key: key,
            scrollController: scrollController,
            triggerOffset: appBarWithTabBarHeight,
            topics: topics,
          ),
        ),
      ),
      TabItemData.build(
        context,
        "推荐",
        (key, scrollController) => ItemBuilder.buildConstraintContainer(
          child: CommunityExploreScreen(
            key: key,
            scrollController: scrollController,
            triggerOffset: appBarWithTabBarHeight,
            topics: topics,
          ),
        ),
      ),
    ]);
    _tabController = TabController(length: tabDataList.length, vsync: this);
    panelScreenState?.refreshScrollControllers();
    _tabController.addListener(() {
      if (mounted) setState(() {});
    });
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
        title: "社群",
        bottomHeight: 56,
        leftPadding: 48,
        rightPadding: 8,
        centerInMobile: true,
        bottom: _initPhase == InitPhase.successful
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
            icon: const Icon(Icons.search_rounded),
            onTap: () {
              RouteUtil.pushPanelCupertinoRoute(
                  context, const CommunitiesSearchScreen());
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
            background: Colors.transparent, text: "加载话题列表中...");
      case InitPhase.failed:
        return ItemBuilder.buildError(
          context: context,
          onTap: refreshTopics,
        );
      case InitPhase.successful:
        return Stack(
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
        );
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

  refreshViewConfig() {
    setState(() {});
    HiveUtil.put(HiveUtil.communityViewConfigKey, viewConfig.toJson());
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
        if (ResponsiveUtil.isLandscape() && _tabController.index != 1) ...[
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
        if (ResponsiveUtil.isLandscape() && _tabController.index == 1) ...[
          const SizedBox(height: 10),
          ItemBuilder.buildShadowIconButton(
            context: context,
            icon: const Icon(Icons.search_rounded),
            onTap: () async {
              RouteUtil.pushPanelCupertinoRoute(
                  context, const CommunitiesSearchScreen());
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
