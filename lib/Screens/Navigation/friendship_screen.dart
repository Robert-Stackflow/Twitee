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
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Screens/Navigation/friends_flow_screen.dart';
import 'package:twitee/Screens/Navigation/user_flow_screen.dart';
import 'package:twitee/Widgets/Window/window_caption.dart';

import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Custom/custom_tab_indicator.dart';

class FriendshipScreen extends StatefulWidget {
  const FriendshipScreen({super.key});

  static const String routeName = "/navigtion/friendship";

  @override
  State<FriendshipScreen> createState() => FriendshipScreenState();
}

class FriendshipScreenState extends State<FriendshipScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  List<Tab> tabList = [];
  List<TimelineTwitterListInfo> pinnedLists = [];
  final PageController _pageController = PageController();
  List<Widget> pageList = [];

  initTab() {
    UserInfo? info = HiveUtil.getUserInfo();
    tabList = [
      _buildTab("正在关注"),
      _buildTab("关注者"),
      _buildTab("好友"),
      _buildTab("认证关注者"),
    ];
    pageList = [
      UserFlowScreen(type: UserFlowType.following, userId: info!.idStr),
      UserFlowScreen(type: UserFlowType.follower, userId: info.idStr),
      FriendsFlowScreen(userId: info.idStr),
      UserFlowScreen(
          type: UserFlowType.blueVerifiedFollower, userId: info.idStr),
    ];
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 0, vsync: this);
    initTab();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Stack(
          children: [
            if (ResponsiveUtil.isDesktop()) const WindowMoveHandle(),
            _buildTabBar(56, const EdgeInsets.symmetric(horizontal: 10)),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: pageList,
        onPageChanged: (index) {
          _tabController.animateTo(index);
        },
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
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          },
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
