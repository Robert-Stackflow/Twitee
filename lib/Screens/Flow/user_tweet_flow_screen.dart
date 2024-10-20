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
import 'package:twitee/Api/user_api.dart';
import 'package:twitee/Models/feedback_actions.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/post_item.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Utils/enums.dart';
import '../../Utils/responsive_util.dart';

enum UserTweetFlowType { Tweets, TweetsAndReplies, Highlights }

class UserTweetFlowScreen extends StatefulWidgetForFlow {
  const UserTweetFlowScreen({
    super.key,
    required this.userId,
    this.type = UserTweetFlowType.Tweets,
    super.nested,
    super.scrollController,
    super.triggerOffset,
  });

  final String userId;

  final UserTweetFlowType type;

  static const String routeName = "/navigtion/userTweetFlow";

  @override
  State<UserTweetFlowScreen> createState() => _UserTweetFlowScreenState();
}

class _UserTweetFlowScreenState extends State<UserTweetFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<FeedbackActions> _feedbackActions = [];

  List<TimelineAddEntry> validEntries = [];

  bool _loading = false;

  late final ScrollController _scrollController;

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  bool _noMore = false;
  InitPhase _initPhase = InitPhase.haveNotConnected;

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
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
        setState(() {});
      }
      ResponseResult res;
      switch (widget.type) {
        case UserTweetFlowType.Tweets:
          res = await UserApi.getUserTweets(
            userId: widget.userId,
          );
          break;
        case UserTweetFlowType.TweetsAndReplies:
          res = await UserApi.getUserTweetsAndReplies(
            userId: widget.userId,
          );
          break;
        case UserTweetFlowType.Highlights:
          res = await UserApi.getUserHighlights(
            userId: widget.userId,
          );
          break;
      }
      if (res.success) {
        _initPhase = InitPhase.successful;
        UserTweetsResponse response = res.data;
        Timeline? timeline = response.data.user.result.timelineV2?.timeline ??
            response.data.user.result.timeline?.timeline;
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
            newEntries = validEntries = _processEntries(instruction.entries);
            _refreshCursor(instruction.entries);
            if (mounted) setState(() {});
          }
        }
        if (newEntries.isEmpty) {
          _noMore = true;
        } else {
          _noMore = false;
        }
        return IndicatorResult.success;
      } else {
        _initPhase = InitPhase.failed;
        IToast.showTop("加载失败");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to get homeline", e, t);
      _initPhase = InitPhase.failed;
      return IndicatorResult.fail;
    } finally {
      _loading = false;
      if (mounted) setState(() {});
    }
  }

  _onLoad() async {
    if (cursorBottom == null) return;
    if (_loading) return;
    _loading = true;
    try {
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
        setState(() {});
      }
      ResponseResult res;
      switch (widget.type) {
        case UserTweetFlowType.Tweets:
          res = await UserApi.getUserTweets(
            userId: widget.userId,
            cursorBottom: cursorBottom?.value,
          );
          break;
        case UserTweetFlowType.TweetsAndReplies:
          res = await UserApi.getUserTweetsAndReplies(
            userId: widget.userId,
            cursorBottom: cursorBottom?.value,
          );
          break;
        case UserTweetFlowType.Highlights:
          res = await UserApi.getUserHighlights(
            userId: widget.userId,
            cursorBottom: cursorBottom?.value,
          );
          break;
      }
      if (res.success) {
        _initPhase = InitPhase.successful;
        UserTweetsResponse response = res.data;
        Timeline? timeline = response.data.user.result.timelineV2?.timeline ??
            response.data.user.result.timeline?.timeline;
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
            validEntries.addAll(_processEntries(instruction.entries));
            newEntries = _processEntries(instruction.entries);
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
        _initPhase = InitPhase.failed;
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to load homeline", e, t);
      _initPhase = InitPhase.failed;
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
    return widget.nested ? _buildBody() : _buildMainBody();
  }

  _buildBody() {
    switch (_initPhase) {
      case InitPhase.connecting:
        return ItemBuilder.buildLoadingDialog(context,
            background: Colors.transparent);
      case InitPhase.failed:
        return ItemBuilder.buildError(
          context: context,
          onTap: refresh,
        );
      case InitPhase.successful:
        return _buildMainBody();
      default:
        return Container();
    }
  }

  _buildMainBody() {
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
        child: validEntries.isNotEmpty
            ? WaterfallFlow.extent(
                physics: pyhsics,
                controller: widget.nested ? null : _scrollController,
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
                      key: GlobalObjectKey(
                          validEntries[index].sortIndex.toString()),
                      entry: validEntries[index],
                      feedbackActions: _getFeedBackActions(validEntries[index]),
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
    );
  }
}
