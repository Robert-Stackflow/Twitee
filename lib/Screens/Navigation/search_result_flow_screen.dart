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
import 'package:twitee/Screens/Navigation/post_item.dart';
import 'package:twitee/Screens/Navigation/refresh_interface.dart';
import 'package:twitee/Screens/Navigation/user_item.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

class SearchResultFlowScreen extends StatefulWidget {
  const SearchResultFlowScreen(
      {super.key, required this.type, required this.query});

  final SearchTimelineType type;

  final String query;

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

  List<TimelineAddEntry> validEntries = [];

  bool _loading = false;

  final ScrollController _scrollController = ScrollController();

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  bool _noMore = false;

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
            setState(() {});
          }
        }
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
            setState(() {});
          }
        }
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
      child: ItemBuilder.buildLoadMoreNotification(
        onLoad: _onLoad,
        noMore: _noMore,
        child: WaterfallFlow.extent(
          controller: _scrollController,
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
          maxCrossAxisExtent: 600,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          children: List.generate(
            validEntries.length,
            (index) {
              return _buildItem(validEntries[index]);
            },
          ),
        ),
      ),
    );
  }

  _buildItem(TimelineAddEntry entry) {
    if (widget.type.useTimelineTimelineItem) {
      TimelineTimelineItem item = entry.content as TimelineTimelineItem;
      if (item.itemContent is TimelineUser) {
        return _buildUserItem(item.itemContent as TimelineUser);
      } else if (item.itemContent is TimelineTweet) {
        return PostItem(entry: entry);
      }
    } else if (widget.type.useTimelineTimelineModule) {
      TimelineTimelineModule module = entry.content as TimelineTimelineModule;
      if (module.displayType == DisplayType.verticalGrid) {
        List<ModuleItem> items = module.items
                ?.where((e) => e != null)
                .map((e) => e as ModuleItem)
                .toList() ??
            [];
        return WaterfallFlow.extent(
          maxCrossAxisExtent: 200,
          shrinkWrap: true,
          children: List.generate(
            items.length,
            (index) {
              ModuleItem item = items[index];
              if (item.item.itemContent is TimelineTweet) {
                TimelineTweet timelineTweet =
                    item.item.itemContent as TimelineTweet;
                Tweet tweet = timelineTweet.tweetResults!.result as Tweet;
                print(tweet.legacy!.entities.media![0]!.mediaUrlHttps!);
                return GestureDetector(
                  child: ItemBuilder.buildCachedImage(
                    imageUrl: tweet.legacy!.entities.media![0]!.mediaUrlHttps!,
                    width: 300,
                    height: 300,
                    context: context,
                  ),
                );
              }
              return Container();
            },
          ),
        );
      }
    }
    return Container();
  }

  _buildUserItem(TimelineUser timelineUser) {
    User user = timelineUser.userResults!.result as User;
    return UserItem(userLegacy: user.legacy);
  }
}
