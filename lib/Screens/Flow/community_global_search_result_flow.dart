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
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/post_item.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Api/community_api.dart';
import '../../Resources/theme.dart';
import '../../Utils/responsive_util.dart';

class CommunityGlobalSearchResultFlowScreen extends StatefulWidgetForFlow {
  const CommunityGlobalSearchResultFlowScreen({
    super.key,
    required this.isLatest,
    required this.query,
    super.nested,
    super.scrollController,
    super.triggerOffset,
  });

  final bool isLatest;

  final String query;

  static const String routeName = "/navigtion/communitySearchResultFlow";

  @override
  State<CommunityGlobalSearchResultFlowScreen> createState() =>
      _SearchResultFlowScreenState();
}

class _SearchResultFlowScreenState
    extends State<CommunityGlobalSearchResultFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<TimelineAddEntry> validEntries = [];

  bool _loading = false;

  late final ScrollController _scrollController;

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  bool _noMore = false;

  bool _inited = false;

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
    if (widget.query.isEmpty) {
      _inited = true;
      setState(() {});
      return;
    }
    if (_loading) return;
    _loading = true;
    cursorBottom = null;
    try {
      ResponseResult res;
      if (widget.isLatest) {
        res = await CommunityApi.getGlobalCommunitiesLatestPostSearchTimeline(
          query: widget.query,
        );
      } else {
        res = await CommunityApi.getGlobalCommunitiesPostSearchTimeline(
          query: widget.query,
        );
      }
      if (res.success) {
        Timeline timeline = res.data;
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
    if (widget.query.isEmpty) {
      _inited = true;
      setState(() {});
      return;
    }
    if (cursorBottom == null) return;
    if (_loading) return;
    _loading = true;
    try {
      ResponseResult res;
      if (widget.isLatest) {
        res = await CommunityApi.getGlobalCommunitiesLatestPostSearchTimeline(
          query: widget.query,
          cursorBottom: cursorBottom!.value,
        );
      } else {
        res = await CommunityApi.getGlobalCommunitiesPostSearchTimeline(
          query: widget.query,
          cursorBottom: cursorBottom!.value,
        );
      }
      if (res.success) {
        Timeline timeline = res.data;
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

  List<TimelineAddEntry> _processEntries(List<TimelineAddEntry> entries) {
    List<TimelineAddEntry> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineItem) {
        result.add(entry);
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
      child: !_inited || validEntries.isNotEmpty
          ? _buildBody()
          : ItemBuilder.buildEmptyPlaceholder(
              context: context,
              text: "暂无搜索结果",
              scrollController: _scrollController,
            ),
    );
  }

  _buildBody() {
    return _buildWaterfallFlow(
      maxCrossAxisExtent: MyTheme.postMaxCrossAxisExtent,
      children: List.generate(
        validEntries.length,
        (index) {
          return _buildItem(validEntries[index]);
        },
      ),
    );
  }

  _buildWaterfallFlow({
    double maxCrossAxisExtent = 800,
    List<Widget> children = const [],
  }) {
    return ItemBuilder.buildLoadMoreNotification(
      onLoad: _onLoad,
      noMore: _noMore,
      child: WaterfallFlow.extent(
        controller: _scrollController,
        padding: MyTheme.responsiveFlowPadding,
        mainAxisSpacing: MyTheme.responsiveMainAxisSpacing,
        crossAxisSpacing: MyTheme.responsiveCrossAxisSpacing,
        maxCrossAxisExtent: maxCrossAxisExtent,
        children: children,
      ),
    );
  }

  _buildItem(TimelineAddEntry entry) {
    TimelineTimelineItem item = entry.content as TimelineTimelineItem;
    if (item.itemContent is TimelineTweet) {
      return PostItem(entry: entry);
    }
  }
}
