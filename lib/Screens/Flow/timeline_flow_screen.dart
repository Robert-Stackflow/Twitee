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
import 'package:twitee/Models/feedback_actions.dart';
import 'package:twitee/Models/view_config.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/post_item.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Api/timeline_api.dart';
import '../../Resources/theme.dart';
import '../../Utils/tweet_util.dart';

class TimelineFlowScreen extends StatefulWidgetForFlow {
  const TimelineFlowScreen({
    super.key,
    this.isLatest = true,
    super.scrollController,
    super.nested,
    super.triggerOffset,
    this.viewConfig,
  });

  final bool isLatest;

  final ViewConfig? viewConfig;

  static const String routeName = "/navigtion/timelineFlow";

  @override
  State<TimelineFlowScreen> createState() => _TimelineFlowScreenState();
}

class _TimelineFlowScreenState extends State<TimelineFlowScreen>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin,
        RefreshMixin,
        ViewConfigMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;
  late ViewConfig? viewConfig = widget.viewConfig;

  List<FeedbackActions> _feedbackActions = [];

  List<TimelineAddEntry> validEntries = [];

  List<TimelineAddEntry> get filteredEntries {
    return validEntries
        .where((entry) => TweetUtil.filterEntry(entry, viewConfig))
        .toList();
  }

  bool _loading = false;

  late final ScrollController _scrollController;

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  bool _noMore = false;

  bool _inited = false;

  @override
  refreshViewConfig(ViewConfig viewConfig) async {
    await scrollToTop();
    this.viewConfig = viewConfig;
    if (mounted) setState(() {});
  }

  @override
  ScrollController? getScrollController() {
    return _scrollController;
  }

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController ?? ScrollController();
    if (widget.nested) {
      _onRefresh();
    }
  }

  @override
  scrollToTop() async {
    if (_scrollController.hasClients) {
      await _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  refresh() async {
    _easyRefreshController.resetHeader();
    if (widget.nested) {
      await _onRefresh();
    } else {
      _easyRefreshController.callRefresh(scrollController: _scrollController);
    }
  }

  _onRefresh() async {
    if (_loading) return;
    _loading = true;
    cursorBottom = null;
    try {
      var res = await TimelineApi.getHomeTimeline(
        isLatest: widget.isLatest,
        seenTweetIds: validEntries.map((e) {
          return e.sortIndex.toString();
        }).toList(),
      );
      if (res.success) {
        var response = res.data;
        if (response!.data.home.homeTimelineUrt!.responseObjects != null) {
          _feedbackActions = (response!.data.home.homeTimelineUrt!
                  .responseObjects!['feedbackActions'] as List<dynamic>)
              .map((e) => FeedbackActions.fromJson(e))
              .toList();
        }
        List<TimelineAddEntry> newEntries = [];
        for (var instruction
            in response!.data.home.homeTimelineUrt!.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries = validEntries = _processEntries(instruction.entries);
            _refreshCursor(instruction.entries);
          }
        }
        if (newEntries.isEmpty) {
          _noMore = true;
        } else {
          _noMore = false;
        }
        return IndicatorResult.success;
      } else {
        IToast.showTop("加载失败");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to get homeline", e, t);
      return IndicatorResult.fail;
    } finally {
      _inited = true;
      _loading = false;
      if (mounted) setState(() {});
    }
  }

  _onLoad() async {
    if (cursorBottom == null) return;
    if (_loading) return;
    _loading = true;
    try {
      var res = await TimelineApi.getHomeTimeline(
        cursorBottom: cursorBottom!.value,
        isLatest: widget.isLatest,
      );
      if (res.success) {
        var response = res.data;
        if (response!.data.home.homeTimelineUrt!.responseObjects != null) {
          _feedbackActions.addAll((response!.data.home.homeTimelineUrt!
                  .responseObjects!['feedbackActions'] as List<dynamic>)
              .map((e) => FeedbackActions.fromJson(e))
              .toList());
        }
        List<TimelineAddEntry> newEntries = [];
        for (var instruction
            in response!.data.home.homeTimelineUrt!.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries = _processEntries(instruction.entries);
            newEntries.removeWhere((element) {
              return validEntries.any((e) {
                return e.entryId == element.entryId;
              });
            });
            validEntries.addAll(newEntries);
            _refreshCursor(instruction.entries);
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
        IToast.showTop("加载失败");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to load homeline", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
      if (mounted) setState(() {});
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

  _processEntries(List<TimelineAddEntry> entries) {
    List<TimelineAddEntry> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineItem &&
          (entry.content as TimelineTimelineItem).itemContent
              is TimelineTweet &&
          ((entry.content as TimelineTimelineItem).itemContent as TimelineTweet)
                  .promotedMetadata ==
              null) {
        result.add(entry);
      } else if (entry.content is TimelineTimelineModule &&
          (entry.content as TimelineTimelineModule).displayType ==
              DisplayType.verticalConversation) {
        result.add(entry);
      }
    }
    return result;
  }

  List<FeedbackActions> _getFeedBackActions(TimelineAddEntry entry) {
    List<FeedbackActions> res = [];
    if (entry.content is TimelineTimelineItem) {
      var item = entry.content as TimelineTimelineItem;
      if (item.feedbackInfo != null) {
        var info = FeedbackInfo.fromJson(item.feedbackInfo!);
        if (info.feedbackKeys != null) {
          res.addAll(info.feedbackKeys!.expand((key) {
            return _feedbackActions
                .where((element) => element.key == key)
                .toList();
          }).toList());
        }
      }
    }
    List<FeedbackActions> childs = [];
    for (var action in res) {
      if (action.value != null && action.value!.childKeys != null) {
        var childActions = action.value!.childKeys!.expand((key) {
          return _feedbackActions
              .where((element) => element.key == key)
              .toList();
        }).toList();
        childs.addAll(childActions);
      }
    }
    res.addAll(childs);
    res = res.toSet().toList();
    return res;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return EasyRefresh.builder(
      onRefresh: () async {
        return await _onRefresh();
      },
      onLoad: () async {
        return await _onLoad();
      },
      refreshOnStart: true,
      triggerAxis: Axis.vertical,
      controller: _easyRefreshController,
      childBuilder: (context, pyhsics) => ItemBuilder.buildLoadMoreNotification(
        onLoad: _onLoad,
        noMore: _noMore,
        child: !_inited || filteredEntries.isNotEmpty
            ? WaterfallFlow.extent(
                physics: pyhsics,
                controller: widget.nested ? null : _scrollController,
                padding: MyTheme.responsiveFlowPadding,
                mainAxisSpacing: MyTheme.responsiveMainAxisSpacing,
                crossAxisSpacing: MyTheme.responsiveCrossAxisSpacing,
                maxCrossAxisExtent: MyTheme.postMaxCrossAxisExtent,
                children: List.generate(
                  filteredEntries.length,
                  (index) {
                    return PostItem(
                      key: GlobalObjectKey(
                          filteredEntries[index].sortIndex.toString()),
                      entry: filteredEntries[index],
                      feedbackActions:
                          _getFeedBackActions(filteredEntries[index]),
                    );
                  },
                ),
              )
            : ItemBuilder.buildEmptyPlaceholder(
                context: context,
                text: "暂无内容",
                scrollController: _scrollController,
                physics: pyhsics,
              ),
      ),
    );
  }
}
