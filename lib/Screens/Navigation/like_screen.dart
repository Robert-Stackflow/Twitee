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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:twitee/Api/data_api.dart';
import 'package:twitee/Models/feedback_actions.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Hidable/scroll_to_hide.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/post_item.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/cursor_type.dart';
import '../../Openapi/models/feedback_info.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_cursor.dart';
import '../../Openapi/models/timeline_timeline_item.dart';
import '../../Openapi/models/timeline_tweet.dart';
import '../../Openapi/models/user_tweets_response.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/responsive_util.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key, required this.userId});

  final String userId;

  static const String routeName = "/navigtion/like";

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin,
        ScrollToHideMixin,
        BottomNavgationMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<FeedbackActions> _feedbackActions = [];

  List<TimelineAddEntry> validEntries = [];

  bool _loading = false;

  final ScrollController _scrollController = ScrollController();

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  late AnimationController _refreshRotationController;

  bool _noMore = false;

  bool _inited = false;

  @override
  FutureOr onTapBottomNavigation() {
    panelScreenState?.showBottomNavigationBar();
    if (_scrollController.offset > 30) {
      _scrollToTop();
    } else {
      _refresh();
    }
  }

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      panelScreenState?.refreshScrollControllers();
    });
  }

  _scrollToTop() async {
    await _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  _refresh() async {
    _refreshRotationController.repeat();
    await _scrollToTop();
    _refreshRotationController.stop();
    _refreshRotationController.forward();
    _easyRefreshController.resetHeader();
    _easyRefreshController.callRefresh();
  }

  Future<IndicatorResult> _onRefresh() async {
    if (_loading) return IndicatorResult.none;
    _loading = true;
    cursorBottom = null;
    try {
      ResponseResult res;
      res = await DataApi.getLikes(userId: widget.userId);
      if (res.success) {
        UserTweetsResponse response = res.data;
        Timeline? timeline;
        timeline = response.data.user.result.timelineV2?.timeline;
        if (timeline == null) {
          return IndicatorResult.fail;
        }
        if (timeline.responseObjects != null) {
          _feedbackActions =
              (timeline.responseObjects!['feedbackActions'] as List<dynamic>)
                  .map((e) => FeedbackActions.fromJson(e))
                  .toList();
        }
        List<TimelineAddEntry> newEntries = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            validEntries = _processEntries(instruction.entries);
            newEntries = _processEntries(instruction.entries);
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
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败");
      ILogger.error("Twitee", "Failed to get likes", e, t);
      return IndicatorResult.fail;
    } finally {
      _inited = true;
      _loading = false;
      if (mounted) setState(() {});
    }
  }

  Future<IndicatorResult> _onLoad() async {
    if (cursorBottom == null) return IndicatorResult.none;
    if (_loading) return IndicatorResult.none;
    _loading = true;
    try {
      ResponseResult res;
      res = await DataApi.getLikes(
        userId: widget.userId,
        cursorBottom: cursorBottom!.value,
      );
      if (res.success) {
        UserTweetsResponse response = res.data;
        Timeline? timeline;
        timeline = response.data.user.result.timelineV2?.timeline;
        if (timeline == null) {
          return IndicatorResult.fail;
        }
        if (timeline.responseObjects != null) {
          _feedbackActions.addAll(
              (timeline.responseObjects!['feedbackActions'] as List<dynamic>)
                  .map((e) => FeedbackActions.fromJson(e))
                  .toList());
        }
        List<TimelineAddEntry> newEntries = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries.addAll(_processEntries(instruction.entries));
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
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to load likes", e, t);
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
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        showMenu: true,
        spacing: ResponsiveUtil.isLandscape() ? 15 : 10,
        title: "喜欢",
        showBorder: true,
        centerInMobile: true,
      ),
      body: Stack(
        children: [
          EasyRefresh(
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
              child: !_inited || validEntries.isNotEmpty
                  ? WaterfallFlow.extent(
                      controller: _scrollController,
                      padding: ResponsiveUtil.isLandscape()
                          ? const EdgeInsets.all(8)
                              .add(const EdgeInsets.only(bottom: 16))
                          : const EdgeInsets.only(bottom: 16),
                      mainAxisSpacing: ResponsiveUtil.isLandscape() ? 6 : 2,
                      maxCrossAxisExtent: 800,
                      crossAxisSpacing: 6,
                      children: List.generate(
                        validEntries.length,
                        (index) {
                          return PostItem(
                            entry: validEntries[index],
                            feedbackActions:
                                _getFeedBackActions(validEntries[index]),
                          );
                        },
                      ),
                    )
                  : ItemBuilder.buildEmptyPlaceholder(
                      context: context,
                      text: "暂无内容",
                      scrollController: _scrollController,
                    ),
            ),
          ),
          Positioned(
            right: ResponsiveUtil.isLandscape() ? 16 : 12,
            bottom: ResponsiveUtil.isLandscape() ? 16 : 76,
            child: ScrollToHide(
              scrollControllers: [_scrollController],
              hideDirection: AxisDirection.down,
              child: _buildFloatingButtons(),
            ),
          ),
        ],
      ),
    );
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
              _refresh();
            },
          ),
        const SizedBox(height: 10),
        ItemBuilder.buildShadowIconButton(
          context: context,
          icon: const Icon(Icons.arrow_upward_rounded),
          onTap: () {
            _scrollToTop();
          },
        ),
      ],
    );
  }

  @override
  List<ScrollController> getScrollControllers() {
    return [_scrollController];
  }
}
