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
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/post_item.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Resources/theme.dart';
import '../../Utils/enums.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/WaterfallFlow/extended_list_library.dart';

class CommentFlowScreen extends StatefulWidgetForFlow {
  const CommentFlowScreen({
    super.key,
    required this.tweetId,
    this.rankType = RankType.Relevance,
    super.nested,
    super.scrollController,
    super.triggerOffset,
  });

  final String tweetId;

  final RankType rankType;

  static const String routeName = "/navigtion/commentFlow";

  @override
  State<CommentFlowScreen> createState() => _CommentFlowScreenState();
}

class _CommentFlowScreenState extends State<CommentFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;
  TimelineTimelineCursor? cursorMore;

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
      var res = await PostApi.getTweetDetail(
        tweetId: widget.tweetId,
        rankType: widget.rankType,
      );
      if (res.success) {
        _initPhase = InitPhase.successful;
        TweetDetailResponse response = res.data;
        Timeline? timeline = response.data.threadedConversationWithInjectionsV2;
        if (timeline == null) {
          return IndicatorResult.fail;
        }
        List<TimelineAddEntry> newEntries = [];
        for (var instruction in timeline.instructions) {
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
      var res = await PostApi.getTweetDetail(
        tweetId: widget.tweetId,
        rankType: widget.rankType,
        cursorBottom: cursorBottom!.value,
      );
      if (res.success) {
        _initPhase = InitPhase.successful;
        TweetDetailResponse response = res.data;
        Timeline? timeline = response.data.threadedConversationWithInjectionsV2;
        if (timeline == null) {
          return IndicatorResult.fail;
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
    bool hasUpdateCursorBottom = false;
    bool hasUpdateCursorMore = false;
    for (var entry in entries) {
      if (entry.content is TimelineTimelineItem &&
          (entry.content as TimelineTimelineItem).itemContent
              is TimelineTimelineCursor) {
        var cursor = (entry.content as TimelineTimelineItem).itemContent
            as TimelineTimelineCursor;
        if (cursor.cursorType == CursorType.top) {
          cursorTop = cursor;
        } else if (cursor.cursorType == CursorType.bottom) {
          cursorBottom = cursor;
          hasUpdateCursorBottom = true;
        } else if (cursor.cursorType == CursorType.showMore ||
            cursor.cursorType == CursorType.showMoreThreads ||
            cursor.cursorType == CursorType.showMoreThreadsPrompt) {
          cursorMore = cursor;
        }
      }
    }
    if (!hasUpdateCursorBottom) cursorBottom = null;
    if (!hasUpdateCursorMore) cursorMore = null;
  }

  List<TimelineAddEntry> _processEntries(List<TimelineAddEntry> entries) {
    List<TimelineAddEntry> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineModule &&
          (entry.content as TimelineTimelineModule).displayType ==
              DisplayType.verticalConversation) {
        result.add(entry);
      }
    }
    return result;
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
                padding: MyTheme.responsiveListFlowPadding,
                mainAxisSpacing: MyTheme.responsiveMainAxisSpacing,
                crossAxisSpacing: MyTheme.responsiveCrossAxisSpacing,
                maxCrossAxisExtent: 800,
                lastChildLayoutTypeBuilder: (index) =>
                    index >= validEntries.length
                        ? LastChildLayoutType.foot
                        : LastChildLayoutType.none,
                children: List.generate(
                  validEntries.length + (cursorMore != null ? 1 : 0),
                  (index) {
                    return PostItem(entry: validEntries[index]);
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
