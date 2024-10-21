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
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Screens/Flow/user_flow_screen.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../../Models/tab_item_data.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/hive_util.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';

class FriendshipScreen extends StatefulWidget {
  const FriendshipScreen({
    super.key,
    this.userId,
    this.initType,
    this.isFriend = false,
  });

  final String? userId;

  final UserFlowType? initType;

  final bool isFriend;

  static const String routeName = "/navigtion/friendship";

  @override
  State<FriendshipScreen> createState() => FriendshipScreenState();
}

class FriendshipScreenState extends State<FriendshipScreen>
    with TickerProviderStateMixin, ScrollToHideMixin {
  late TabController _tabController;
  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();
  TabItemDataList tabDataList = TabItemDataList([]);

  int get currentIndex => _tabController.index;

  bool get isOther => widget.userId != null;

  initTab() {
    UserInfo? info = HiveUtil.getUserInfo();
    String userId = widget.userId ?? info!.idStr;
    tabDataList.addAll([
      TabItemData.build(
        "正在关注",
        (key, scrollController) => UserFlowScreen(
          key: key,
          type: UserFlowType.following,
          userId: userId,
          scrollController: scrollController,
        ),
      ),
      TabItemData.build(
        "关注者",
        (key, scrollController) => UserFlowScreen(
          key: key,
          type: UserFlowType.follower,
          userId: userId,
          scrollController: scrollController,
        ),
      ),
      TabItemData.build(
        "认证关注者",
        (key, scrollController) => UserFlowScreen(
          key: key,
          type: UserFlowType.blueVerifiedFollower,
          userId: userId,
          scrollController: scrollController,
        ),
      ),
      TabItemData.build(
        "订阅服务",
        (key, scrollController) => UserFlowScreen(
          key: key,
          type: UserFlowType.subscriptions,
          userId: userId,
          scrollController: scrollController,
        ),
      ),
      TabItemData.build(
        "你认识的关注者",
        (key, scrollController) => UserFlowScreen(
          key: key,
          type: UserFlowType.followerYouKnow,
          userId: userId,
          scrollController: scrollController,
        ),
      ),
    ]);
    _tabController = TabController(length: tabDataList.length, vsync: this);
    if (widget.initType != null) {
      _tabController.index =
          widget.initType!.index.clamp(0, tabDataList.length);
    }
    if (widget.isFriend) {
      _tabController.index = tabDataList.length - 1;
    }
  }

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    initTab();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        showBack: isOther,
        spacing: ResponsiveUtil.isLandscape() && !isOther ? 15 : 10,
        title: "社交网络",
        bottomHeight: 56,
        bottom: ItemBuilder.buildTabBar(
          context,
          _tabController,
          tabDataList.tabList,
          onTap: onTapTab,
          background: Theme.of(context).canvasColor,
          showBorder: true,
          width: MediaQuery.of(context).size.width,
        ),
      ),
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: tabDataList.pageList,
          ),
          Positioned(
            right: 16,
            bottom: 16,
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
    await tabDataList.getRefreshMixin(currentIndex)?.scrollToTop();
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
}
