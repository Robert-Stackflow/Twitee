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
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/Twitter/post_item.dart';

import '../../Models/tab_item_data.dart';
import '../../Utils/enums.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Custom/sliver_appbar_delegate.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';
import '../Flow/comment_flow_screen.dart';

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
  InitPhase _initPhase = InitPhase.haveNotConnected;

  late TabController _tabController;
  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();
  TabItemDataList tabDataList = TabItemDataList([]);

  int get currentIndex => _tabController.index;
  ScrollController? primaryController;

  initTab() {
    primaryController = PrimaryScrollController.of(context);
    tabDataList.addAll([
      TabItemData.build(
        context,
        "最相关",
        (key, scrollController) => CommentFlowScreen(
          key: key,
          tweetId: widget.tweetId,
          nested: true,
          scrollController: primaryController,
        ),
      ),
      TabItemData.build(
        context,
        "最新",
        (key, scrollController) => CommentFlowScreen(
          key: key,
          tweetId: widget.tweetId,
          rankType: RankType.Recency,
          nested: true,
          scrollController: primaryController,
        ),
      ),
      TabItemData.build(
        context,
        "最多点赞",
        (key, scrollController) => CommentFlowScreen(
          key: key,
          tweetId: widget.tweetId,
          rankType: RankType.Likes,
          nested: true,
          scrollController: primaryController,
        ),
      ),
    ]);
    _tabController = TabController(length: tabDataList.length, vsync: this);
  }

  fetchDetail() async {
    _initPhase = InitPhase.connecting;
    setState(() {});
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
      _initPhase = InitPhase.successful;
    } else {
      IToast.showTop("获取详情失败：$response.message");
      _initPhase = InitPhase.failed;
    }
    if (tweetDetailResponse == null || tweetEntry == null) {
      _initPhase = InitPhase.failed;
    }
    if (mounted) setState(() {});
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initTab();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        title: "帖子详情",
        showBack: true,
        showBorder: true,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    switch (_initPhase) {
      case InitPhase.connecting:
        return ItemBuilder.buildLoadingDialog(context,
            background: Colors.transparent);
      case InitPhase.failed:
        return ItemBuilder.buildError(
          context: context,
          onTap: fetchDetail,
        );
      case InitPhase.successful:
        return _buildMainBody();
      default:
        return Container();
    }
  }

  _buildMainBody() {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverToBoxAdapter(
          child: PostItem(
            entry: tweetEntry!,
            isDetail: true,
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
              scrollControllers: [
                primaryController ?? ScrollController(),
                ...tabDataList.scrollControllerList
              ],
              hideDirection: AxisDirection.down,
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
