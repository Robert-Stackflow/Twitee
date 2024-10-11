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
import 'package:twitee/Api/post_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Screens/Flow/timeline_flow_screen.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/Twitter/post_item.dart';

import '../../Utils/responsive_util.dart';
import '../../Widgets/Custom/custom_tab_indicator.dart';
import '../../Widgets/Custom/sliver_appbar_delegate.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';
import '../../Widgets/Twitter/refresh_interface.dart';

class TweetDetailScreen extends StatefulWidget {
  const TweetDetailScreen({super.key, required this.tweetId});

  final String tweetId;

  static const String routeName = "/navigtion/tweetDetail";

  @override
  State<TweetDetailScreen> createState() => TweetDetailScreenState();
}

class TweetDetailScreenState extends State<TweetDetailScreen>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  TweetDetailResponse? tweetDetailResponse;
  TimelineAddEntry? tweetEntry;
  bool _inited = false;
  late TabController _tabController;
  List<Tab> tabList = [];
  List<Widget> pageList = [];
  List<GlobalKey> keyList = [];

  late AnimationController _refreshRotationController;

  RefreshMixin? get currentRefreshMixin =>
      keyList[_tabController.index].currentState as RefreshMixin?;

  initTab() {
    keyList = List.generate(3, (_) => GlobalKey());
    tabList = [
      _buildTab("最相关"),
      _buildTab("最新"),
      _buildTab("最多点赞"),
    ];
    pageList = [
      TimelineFlowScreen(nested: true),
      TimelineFlowScreen(nested: true),
      TimelineFlowScreen(nested: true),
    ];
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  fetchDetail() async {
    ResponseResult response =
        await PostApi.getTweetDetail(tweetId: widget.tweetId);
    if (response.success) {
      tweetDetailResponse = response.data;
      Timeline? timeline =
          tweetDetailResponse!.data.threadedConversationWithInjectionsV2;
      if (timeline != null) {
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            _processEntries(instruction.entries);
          }
        }
      }
    } else {
      IToast.showTop("获取详情失败：$response.message");
    }
    _inited = true;
    setState(() {});
  }

  _processEntries(List<TimelineAddEntry> entries) {
    for (TimelineAddEntry entry in entries) {
      if (entry.content is TimelineTimelineItem &&
          (entry.content as TimelineTimelineItem).itemContent
              is TimelineTweet) {
        tweetEntry = entry;
        break;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 0, vsync: this);
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    fetchDetail();
    initTab();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
          context: context, title: "帖子详情", showBack: true),
      body: _inited
          ? _buildBody()
          : ItemBuilder.buildLoadingDialog(context,
              text: "加载中...", background: Colors.transparent),
    );
  }

  _buildBody() {
    return tweetDetailResponse == null || tweetEntry == null
        ? _buildError()
        : _buildMainBody();
  }

  _buildMainBody() {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(color: Theme.of(context).canvasColor),
            child: PostItem(
              entry: tweetEntry!,
              isDetail: true,
            ),
          ),
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverAppBarDelegate(
            tabBar: _buildTabBar(),
            radius: 0,
          ),
        ),
      ],
      body: Stack(
        children: [
          _buildTabBarView(),
          Positioned(
            right: 16,
            bottom: 16,
            child: ScrollToHide(
              scrollController: currentRefreshMixin?.getScrollController() ??
                  ScrollController(),
              hideDirection: Axis.vertical,
              child: _buildFloatingButtons(),
            ),
          ),
        ],
      ),
    );
  }

  _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: pageList,
    );
  }

  _buildTabBar([double? height, EdgeInsetsGeometry? padding]) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height ?? 56),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 1,
            ),
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 1,
            ),
          ),
        ),
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

  _buildError() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "加载失败",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          ItemBuilder.buildRoundButton(context, text: "重试", onTap: () {
            fetchDetail();
          }),
        ],
      ),
    );
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

  void refresh() {
    currentRefreshMixin?.refresh();
  }

  void scrollToTop() {
    currentRefreshMixin?.scrollToTop();
  }
}
