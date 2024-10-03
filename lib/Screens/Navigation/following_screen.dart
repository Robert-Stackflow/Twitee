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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:twitee/Models/feedback_actions.dart';
import 'package:twitee/Openapi/models/cursor_type.dart';
import 'package:twitee/Openapi/models/feedback_info.dart';
import 'package:twitee/Openapi/models/timeline_timeline_cursor.dart';
import 'package:twitee/Screens/Navigation/post_item.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Hidable/scroll_to_hide.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Api/timeline_api.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_response.dart';
import '../../Openapi/models/timeline_timeline_item.dart';
import '../../Openapi/models/timeline_tweet.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key, this.isLatest = true});

  final bool isLatest;

  static const String routeName = "/navigtion/following";

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen>
    with TickerProviderStateMixin {
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  TimelineResponse? response;

  List<FeedbackActions> _feedbackActions = [];

  List<TimelineAddEntry> validEntries = [];

  bool _loading = false;

  final ScrollController _scrollController = ScrollController();

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  late AnimationController _refreshRotationController;

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
  }

  _scrollToTop() async {
    await _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  _onRefresh() async {
    if (_loading) return;
    _loading = true;
    try {
      var res = await TimelineApi.getHomeLatestline(
        isLatest: widget.isLatest,
        seenTweetIds: validEntries
            .map((e) {
              return e.sortIndex.toString();
            })
            .toList()
            .sublist(0, min(5, validEntries.length)),
      );
      if (res.success) {
        setState(() {
          response = res.data;
        });
        if (response!.data.home.homeTimelineUrt!.responseObjects != null) {
          _feedbackActions = (response!.data.home.homeTimelineUrt!
                  .responseObjects!['feedbackActions'] as List<dynamic>)
              .map((e) => FeedbackActions.fromJson(e))
              .toList();
        }
        for (var instruction
            in response!.data.home.homeTimelineUrt!.instructions) {
          if (instruction is TimelineAddEntries) {
            validEntries = _processEntries(instruction.entries);
            _refreshCursor(instruction.entries);
            setState(() {});
          }
        }
      }
      return IndicatorResult.success;
    } catch (e, t) {
      IToast.showTop("获取失败");
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
      var res = await TimelineApi.getHomeLatestline(
        cursorBottom: cursorBottom!.value,
        isLatest: widget.isLatest,
      );
      if (res.success) {
        setState(() {
          response = res.data;
        });
        if (response!.data.home.homeTimelineUrt!.responseObjects != null) {
          _feedbackActions.addAll((response!.data.home.homeTimelineUrt!
                  .responseObjects!['feedbackActions'] as List<dynamic>)
              .map((e) => FeedbackActions.fromJson(e))
              .toList());
        }
        for (var instruction
            in response!.data.home.homeTimelineUrt!.instructions) {
          if (instruction is TimelineAddEntries) {
            validEntries.addAll(_processEntries(instruction.entries));
            _refreshCursor(instruction.entries);
            setState(() {});
          }
        }
      }
      return IndicatorResult.success;
    } catch (e, t) {
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
    res =res.toSet().toList();
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        EasyRefresh(
          onRefresh: _onRefresh,
          refreshOnStart: true,
          triggerAxis: Axis.vertical,
          controller: _easyRefreshController,
          onLoad: _onLoad,
          child: ItemBuilder.buildLoadMoreNotification(
            onLoad: _onLoad,
            noMore: false,
            child: WaterfallFlow.extent(
              controller: _scrollController,
              padding: const EdgeInsets.all(8),
              maxCrossAxisExtent: 600,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              children: List.generate(
                validEntries.length,
                (index) {
                  return PostItem(
                    entry: validEntries[index],
                    feedbackActions: _getFeedBackActions(validEntries[index]),
                  );
                },
              ),
            ),
          ),
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
    );
  }

  _buildFloatingButtons() {
    return Column(
      children: [
        //图标可旋转，由_refreshRotationController控制
        ItemBuilder.buildShadowIconButton(
          context: context,
          icon: RotationTransition(
            turns:
                Tween(begin: 0.0, end: 1.0).animate(_refreshRotationController),
            child: const Icon(Icons.refresh_rounded),
          ),
          onTap: () async {
            _refreshRotationController.repeat();
            await _scrollToTop();
            _refreshRotationController.stop();
            _refreshRotationController.forward();
            _easyRefreshController.callRefresh();
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
}
