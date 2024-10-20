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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:twitee/Api/search_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Models/search_timeline_tab_item.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Openapi/models/timline_trend.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Utils/responsive_util.dart';
import '../../Utils/utils.dart';

class SearchExploreFlowScreen extends StatefulWidgetForFlow {
  const SearchExploreFlowScreen({
    super.key,
    required this.tabItem,
    super.nested,
    super.scrollController,
    super.triggerOffset,
  });

  final SearchTimelineTabItem tabItem;

  static const String routeName = "/navigtion/searchExploreFlow";

  @override
  State<SearchExploreFlowScreen> createState() =>
      _SearchExploreFlowScreenState();
}

class _SearchExploreFlowScreenState extends State<SearchExploreFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  String? cursorTop;
  String? cursorBottom;

  List<TimelineTimelineItem> items = [];

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
    if (_loading) return;
    _loading = true;
    cursorBottom = null;
    try {
      ResponseResult res = await SearchApi.getGenericTimelineById(
        timelineId: widget.tabItem.timeline!.id!,
      );
      if (res.success) {
        List<TimelineTimelineItem> newEntries = [];
        Timeline timeline = res.data;
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries = _processEntries(instruction);
            items = newEntries;
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
      ResponseResult res = await SearchApi.getGenericTimelineById(
        timelineId: widget.tabItem.timeline!.id!,
        cursorBottom: cursorBottom,
      );
      if (res.success) {
        List<TimelineTimelineItem> newItems = [];
        Timeline timeline = res.data;
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newItems = _processEntries(instruction);
            items.addAll(newItems);
          }
        }
        if (newItems.isEmpty) {
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

  List<TimelineTimelineItem> _processEntries(TimelineAddEntries entries) {
    List<TimelineTimelineItem> items = [];
    for (var entry in entries.entries) {
      if (entry.content is TimelineTimelineItem) {
        var module = entry.content as TimelineTimelineItem;
        if (module.itemContent is TimelineTrend) {
          items.add(module);
        }
      }
      if (entry.content is TimelineTimelineCursor) {
        var cursor = entry.content as TimelineTimelineCursor;
        if (cursor.cursorType == CursorType.top) {
          cursorTop = cursor.value;
        } else {
          cursorBottom = cursor.value;
        }
      }
    }
    return items;
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
        child: !_inited || items.isNotEmpty
            ? WaterfallFlow.extent(
                controller: _scrollController,
                padding: ResponsiveUtil.isLandscape()
                    ? const EdgeInsets.all(8)
                        .add(const EdgeInsets.only(bottom: 16))
                    : const EdgeInsets.only(bottom: 16),
                mainAxisSpacing: ResponsiveUtil.isLandscape() ? 6 : 2,
                maxCrossAxisExtent: 400,
                crossAxisSpacing: 6,
                children: List.generate(
                  items.length,
                  (index) {
                    return _buildTrendItem(items[index]);
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

  _buildTrendItem(TimelineTimelineItem item) {
    TimelineTrend trend = item.itemContent as TimelineTrend;
    bool showDot = Utils.isNotEmpty(trend.rank) &&
        Utils.isNotEmpty(trend.trendMetadata?.domainContext);
    var radius = ResponsiveUtil.isLandscape()
        ? BorderRadius.circular(8)
        : BorderRadius.zero;
    return Material(
      color: Theme.of(context).canvasColor,
      borderRadius: radius,
      child: InkWell(
        borderRadius: radius,
        onTap: () {
          if (Utils.isNotEmpty(trend.name)) {
            searchScreenState?.perfromSearch(trend.name!);
          }
        },
        child: Container(
          decoration: BoxDecoration(borderRadius: radius),
          height: 78,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${trend.rank ?? ""}${showDot ? " · " : ""}${trend.trendMetadata?.domainContext ?? ""}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              AutoSizeText(
                trend.name ?? "",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.apply(fontWeightDelta: 2),
                maxLines: 1,
              ),
              Text(
                trend.trendMetadata?.metaDescription ?? "",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
