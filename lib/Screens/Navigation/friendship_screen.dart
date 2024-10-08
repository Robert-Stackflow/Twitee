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
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Custom/custom_tab_indicator.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';

class FriendshipScreen extends StatefulWidget {
  const FriendshipScreen({super.key, this.userId});

  final String? userId;

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
  List<GlobalKey> keyList = [];

  bool get isOther => widget.userId != null;

  late AnimationController _refreshRotationController;

  final ScrollController _scrollController = ScrollController();

  initTab() {
    UserInfo? info = HiveUtil.getUserInfo();
    String userId = widget.userId ?? info!.idStr;
    tabList = [
      _buildTab("正在关注"),
      _buildTab("关注者"),
      _buildTab("好友"),
      _buildTab("认证关注者")
    ];
    keyList = List.generate(4, (_) => GlobalKey());
    pageList = [
      UserFlowScreen(
          key: keyList[0], type: UserFlowType.following, userId: userId),
      UserFlowScreen(
          key: keyList[1], type: UserFlowType.follower, userId: userId),
      FriendsFlowScreen(key: keyList[2], userId: userId),
      UserFlowScreen(
          key: keyList[3],
          type: UserFlowType.blueVerifiedFollower,
          userId: userId),
    ];
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _tabController = TabController(length: 0, vsync: this);
    initTab();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        showBack: isOther,
        backSpacing: 0,
        titleWidget: _buildTabBar(
            56, EdgeInsets.only(left: isOther ? 0 : 10, right: 10)),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: pageList,
            onPageChanged: (index) {
              _tabController.animateTo(index);
            },
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: ScrollToHide(
              scrollController: _scrollController,
              hideDirection: Axis.vertical,
              child: _buildFloatingButtons(),
            ),
          ),
        ],
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

  scrollToTop() {
    (keyList[_tabController.index].currentState as RefreshMixin?)
        ?.scrollToTop();
  }

  refresh() async {
    _refreshRotationController.repeat();
    await scrollToTop();
    _refreshRotationController.stop();
    _refreshRotationController.forward();
    (keyList[_tabController.index].currentState as RefreshMixin?)?.refresh();
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
          icon: const Icon(Icons.arrow_upward_rounded),
          onTap: () {
            scrollToTop();
          },
        ),
      ],
    );
  }
}
