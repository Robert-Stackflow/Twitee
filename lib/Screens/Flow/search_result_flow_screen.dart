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
import 'package:twitee/Api/search_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Openapi/models/timeline_twitter_list.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/post_item.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/Twitter/twitter_list_item.dart';
import 'package:twitee/Widgets/Twitter/user_item.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

class SearchResultFlowScreen extends StatefulWidget {
  const SearchResultFlowScreen({
    super.key,
    required this.type,
    required this.query,
    this.scrollController,
  });

  final SearchTimelineType type;

  final String query;

  final ScrollController? scrollController;

  static const String routeName = "/navigtion/searchResultFlow";

  @override
  State<SearchResultFlowScreen> createState() => _SearchResultFlowScreenState();
}

class _SearchResultFlowScreenState extends State<SearchResultFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  bool get _isMedia => widget.type == SearchTimelineType.Media;

  bool get _isList => widget.type == SearchTimelineType.Lists;

  List<TimelineAddEntry> validEntries = [];

  List<TimelineTwitterList> timelineTwitterLists = [];

  List<TimelineTweet> gridTweets = [];

  bool _loading = false;

  late final ScrollController _scrollController;

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  bool _noMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController ?? ScrollController();
  }

  @override
  ScrollController? getScrollController() {
    return _scrollController;
  }

  @override
  scrollToTop() async {
    await _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  refresh() async {
    _easyRefreshController.resetHeader();
    _easyRefreshController.callRefresh();
  }

  _onRefresh() async {
    if (_loading) return;
    _loading = true;
    cursorBottom = null;
    try {
      ResponseResult res;
      res = await SearchApi.getSearchTimeline(
        query: widget.query,
        type: widget.type,
      );
      if (res.success) {
        SearchTimelineResponse response = res.data;
        List<TimelineAddEntry> newEntries = [];
        Timeline? timeline =
            response.data.searchByRawQuery?.searchTimeline?.timeline;
        if (timeline == null) {
          return IndicatorResult.fail;
        }
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries = validEntries = _processEntries(instruction.entries);
            _refreshCursor(instruction.entries);
          }
        }
        if (_isList) {
          _refreshLists();
        } else if (_isMedia) {
          _refreshGridTweets();
        }
        if (mounted) setState(() {});
        if (newEntries.isEmpty) {
          _noMore = true;
          return IndicatorResult.noMore;
        } else {
          _noMore = false;
          return IndicatorResult.success;
        }
      } else {
        IToast.showTop("加载失败：${res.message}");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to get homeline", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
    }
  }

  _onLoad() async {
    if (cursorBottom == null) return;
    if (_loading) return;
    _loading = true;
    try {
      ResponseResult res = await SearchApi.getSearchTimeline(
        query: widget.query,
        type: widget.type,
        cursorBottom: cursorBottom?.value,
      );
      if (res.success) {
        SearchTimelineResponse response = res.data;
        List<TimelineAddEntry> newEntries = [];
        Timeline? timeline =
            response.data.searchByRawQuery?.searchTimeline?.timeline;
        if (timeline == null) {
          return IndicatorResult.fail;
        }
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            validEntries.addAll(_processEntries(instruction.entries));
            newEntries = _processEntries(instruction.entries);
            _refreshCursor(instruction.entries);
          }
        }
        if (_isList) {
          _refreshLists();
        } else if (_isMedia) {
          _refreshGridTweets();
        }
        if (mounted) setState(() {});
        if (newEntries.isEmpty) {
          _noMore = true;
          return IndicatorResult.noMore;
        } else {
          _noMore = false;
          return IndicatorResult.success;
        }
      } else {
        IToast.showTop("加载失败：${res.message}");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to load homeline", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
    }
  }

  _refreshCursor(List<TimelineAddEntry> entries) {
    for (var entry in entries) {
      if (entry.content is TimelineTimelineCursor) {
        if ((entry.content as TimelineTimelineCursor).cursorType ==
            CursorType.top) {
          cursorTop = entry.content as TimelineTimelineCursor;
        } else if ((entry.content as TimelineTimelineCursor).cursorType ==
            CursorType.bottom) {
          cursorBottom = entry.content as TimelineTimelineCursor;
        }
      }
    }
  }

  List<TimelineAddEntry> _processEntries(List<TimelineAddEntry> entries) {
    List<TimelineAddEntry> result = [];
    for (var entry in entries) {
      if (widget.type.useTimelineTimelineItem) {
        if (entry.content is TimelineTimelineItem) {
          result.add(entry);
        }
      } else if (widget.type.useTimelineTimelineModule) {
        if (entry.content is TimelineTimelineModule) {
          result.add(entry);
        }
      }
    }
    return result;
  }

  _refreshLists() {
    timelineTwitterLists.clear();
    List<TimelineTwitterList> lists = [];
    for (var entry in validEntries) {
      TimelineTimelineModule module = entry.content as TimelineTimelineModule;
      List<ModuleItem> items = module.items
              ?.where((e) => e != null)
              .map((e) => e as ModuleItem)
              .toList() ??
          [];
      List<TimelineTwitterList> tmp = items
          .where((e) => e.item.itemContent is TimelineTwitterList)
          .map((e) => e.item.itemContent as TimelineTwitterList)
          .toList();
      lists.addAll(tmp);
    }
    timelineTwitterLists = lists;
  }

  _refreshGridTweets() {
    gridTweets.clear();
    List<TimelineTweet> tweets = [];
    for (var entry in validEntries) {
      TimelineTimelineModule module = entry.content as TimelineTimelineModule;
      if (module.displayType == DisplayType.verticalGrid) {
        List<ModuleItem> items = module.items
                ?.where((e) => e != null)
                .map((e) => e as ModuleItem)
                .toList() ??
            [];
        for (var item in items) {
          if (item.item.itemContent is TimelineTweet) {
            tweets.add(item.item.itemContent as TimelineTweet);
          }
        }
      }
    }
    gridTweets = tweets.where((e) => TweetUtil.hasMedia(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return EasyRefresh(
      onRefresh: () async {
        return await _onRefresh();
      },
      onLoad: () async {
        return await _onLoad();
      },
      refreshOnStart: true,
      triggerAxis: Axis.vertical,
      controller: _easyRefreshController,
      child: _buildBody(),
    );
  }

  _buildBody() {
    if (_isMedia) {
      return _buildWaterfallFlow(
        maxCrossAxisExtent: 160,
        children: List.generate(
          gridTweets.length,
          (index) {
            return _buildGridItem(160, gridTweets[index]);
          },
        ),
        useGrid: true,
      );
    } else if (_isList) {
      return _buildWaterfallFlow(
        maxCrossAxisExtent: 600,
        children: List.generate(
          timelineTwitterLists.length,
          (index) {
            return TwitterListItem(list: timelineTwitterLists[index]);
          },
        ),
      );
    } else {
      return _buildWaterfallFlow(
        maxCrossAxisExtent: 600,
        children: List.generate(
          validEntries.length,
          (index) {
            return _buildItem(validEntries[index]);
          },
        ),
      );
    }
  }

  _buildWaterfallFlow({
    double maxCrossAxisExtent = 600,
    List<Widget> children = const [],
    bool useGrid = false,
  }) {
    return ItemBuilder.buildLoadMoreNotification(
      onLoad: _onLoad,
      noMore: _noMore,
      child: useGrid
          ? GridView.extent(
              controller: _scrollController,
              padding: const EdgeInsets.all(8).add(const EdgeInsets.only(bottom: 16)),
              maxCrossAxisExtent: maxCrossAxisExtent,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              children: children,
            )
          : WaterfallFlow.extent(
              controller: _scrollController,
              padding: const EdgeInsets.all(8).add(const EdgeInsets.only(bottom: 16)),
              maxCrossAxisExtent: maxCrossAxisExtent,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              children: children,
            ),
    );
  }

  _buildGridItem(double size, TimelineTweet timelineTweet) {
    Tweet tweet = TweetUtil.getTrueTweetByResult(timelineTweet.tweetResults)!;
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: ItemBuilder.buildCachedImage(
            imageUrl: tweet.legacy!.entities.media![0]!.mediaUrlHttps!,
            width: size,
            height: size,
            context: context,
            fit: BoxFit.cover,
            showLoading: false,
          ),
        ),
      ),
    );
  }

  _buildItem(TimelineAddEntry entry) {
    if (widget.type.useTimelineTimelineItem) {
      TimelineTimelineItem item = entry.content as TimelineTimelineItem;
      if (item.itemContent is TimelineUser) {
        User user =
            (item.itemContent as TimelineUser).userResults!.result as User;
        return UserItem(userLegacy: user.legacy);
      } else if (item.itemContent is TimelineTweet) {
        return PostItem(entry: entry);
      }
    }
    return Container();
  }
}
