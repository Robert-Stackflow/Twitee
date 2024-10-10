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
import 'package:twitee/Api/list_api.dart';
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Screens/Navigation/list_flow_screen.dart';
import 'package:twitee/Screens/Navigation/timeline_flow_screen.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Custom/custom_tab_indicator.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "/navigtion/home";

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  List<Tab> tabList = [];
  List<TimelineTwitterListInfo> pinnedLists = [];
  List<Widget> pageList = [];
  List<GlobalKey> keyList = [];

  late AnimationController _refreshRotationController;

  final ScrollController _scrollController = ScrollController();

  initTab() {
    keyList = List.generate(2, (_) => GlobalKey());
    tabList = [
      _buildTab("为你推荐"),
      _buildTab("正在关注"),
    ];
    pageList = [
      TimelineFlowScreen(key: keyList[0], isLatest: false),
      TimelineFlowScreen(
        key: keyList[1],
      ),
    ];
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  addTabs() {
    UserInfo? info = HiveUtil.getUserInfo();
    tabList = tabList.sublist(0, 2);
    pageList = pageList.sublist(0, 2);
    keyList = keyList.sublist(0, 2);
    for (var list in pinnedLists) {
      tabList.add(_buildTab(list.name));
      GlobalKey key = GlobalKey();
      keyList.add(key);
      pageList.add(
          ListFlowScreen(key: key, listId: list.idStr, userId: info!.idStr));
    }
    _tabController.animateTo(_tabController.index.clamp(0, tabList.length - 1));
    _tabController = TabController(length: tabList.length, vsync: this);
    if (mounted) setState(() {});
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
    initTab();
    refreshPinnedLists();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        titleWidget:
            _buildTabBar(56, const EdgeInsets.symmetric(horizontal: 10)),
      ),
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: pageList,
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
