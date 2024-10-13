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
import 'package:twitee/Api/post_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Screens/Flow/timeline_flow_screen.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/Twitter/post_item.dart';

import '../../Models/tab_item_data.dart';
import '../../Widgets/Custom/sliver_appbar_delegate.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';

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
  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
  ScrollToHideController();
  TabItemDataList tabDataList = TabItemDataList([]);

  int get currentIndex => _tabController.index;

  initTab() {
    // TabItemData.build(
    //   "帖子",
    //       (key, scrollController) => UserTweetFlowScreen(
    //     key: key,
    //     userId: user!.restId!,
    //     nested: true,
    //   ),
    // ),
    tabDataList.addAll([
      TabItemData.build(
        "最相关",
            (key, scrollController) =>
            TimelineFlowScreen(
              key: key,
              nested: true,
              scrollController: scrollController,
            ),
      ),
      TabItemData.build(
        "最新",
            (key, scrollController) =>
            TimelineFlowScreen(
              key: key,
              nested: true,
              scrollController: scrollController,
            ),
      ),
      TabItemData.build(
        "最多点赞",
            (key, scrollController) =>
            TimelineFlowScreen(
              key: key,
              nested: true,
              scrollController: scrollController,
            ),
      ),
    ]);
    _tabController = TabController(length: tabDataList.length, vsync: this);
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
      headerSliverBuilder: (context, innerBoxIsScrolled) =>
      [
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(color: Theme
                .of(context)
                .canvasColor),
            child: PostItem(
              entry: tweetEntry!,
              isDetail: true,
            ),
          ),
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverAppBarDelegate(
            tabBar: ItemBuilder.buildTabBar(
              context,
              _tabController,
              tabDataList.tabList,
              onTap: onTapTab,
              showBorder: true,
              padding: const EdgeInsets.symmetric(horizontal: 10),
            ),
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
              controller: _scrollToHideController,
              scrollController:
              tabDataList.getScrollControllerNotNull(currentIndex),
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
      children: tabDataList.pageList,
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

  _buildError() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "加载失败",
            style: Theme
                .of(context)
                .textTheme
                .titleMedium,
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

  refresh() async {
    _refreshRotationController.repeat();
    await scrollToTop();
    _refreshRotationController.stop();
    _refreshRotationController.forward();
    tabDataList.getRefreshMixin(currentIndex)?.refresh();
  }

  scrollToTop() async {
    await tabDataList.getRefreshMixin(currentIndex)?.scrollToTop();
    _scrollToHideController.show();
  }
}
