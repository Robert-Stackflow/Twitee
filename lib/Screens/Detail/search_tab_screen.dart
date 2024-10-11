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
import 'package:twitee/Models/search_timeline_tab_item.dart';
import 'package:twitee/Openapi/models/timline_trend.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/cursor_type.dart';
import '../../Openapi/models/module_item.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_timeline_cursor.dart';
import '../../Openapi/models/timeline_timeline_module.dart';
import '../../Utils/utils.dart';

class SearchTabScreen extends StatefulWidget {
  const SearchTabScreen({super.key, required this.tabItem});

  final SearchTimelineTabItem tabItem;

  static const String routeName = "/navigtion/searchTab";

  @override
  State<SearchTabScreen> createState() => _SearchTabScreenState();
}

class _SearchTabScreenState extends State<SearchTabScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  String? cursorTop;
  String? cursorBottom;

  List<ModuleItem> items = [];

  bool _loading = false;

  final ScrollController _scrollController = ScrollController();

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  bool _noMore = false;

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
        List<ModuleItem> newEntries = [];
        Timeline timeline = res.data;
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries = _processEntries(instruction);
            items = newEntries;
            if (mounted) setState(() {});
          }
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
      ResponseResult res = await SearchApi.getGenericTimelineById(
        timelineId: widget.tabItem.timeline!.id!,
        cursorBottom: cursorBottom,
      );
      if (res.success) {
        List<ModuleItem> newItems = [];
        Timeline timeline = res.data;
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newItems = _processEntries(instruction);
            items.addAll(newItems);
            return IndicatorResult.success;
          }
        }
        if (mounted) setState(() {});
        if (newItems.isEmpty) {
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

  _processEntries(TimelineAddEntries entries) {
    List<ModuleItem> items = [];
    for (var entry in entries.entries) {
      if (entry.content is TimelineTimelineModule) {
        var module = entry.content as TimelineTimelineModule;
        for (var item in module.items ?? []) {
          if (item is ModuleItem && item.item.itemContent is TimelineTrend) {
            items.add(item);
          }
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
        child: WaterfallFlow.extent(
          controller: _scrollController,
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
          maxCrossAxisExtent: 400,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          children: List.generate(
            items.length,
            (index) {
              return _buildTrendItem(items[index]);
            },
          ),
        ),
      ),
    );
  }

  _buildTrendItem(ModuleItem item) {
    TimelineTrend trend = item.item.itemContent as TimelineTrend;
    bool showDot = Utils.isNotEmpty(trend.rank) &&
        Utils.isNotEmpty(trend.trendMetadata?.domainContext);
    return Material(
      color: Theme.of(context).canvasColor,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          if (Utils.isNotEmpty(trend.name)) {
            searchScreenState?.perfromSearch(trend.name!);
          }
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          height: 78,
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${trend.rank ?? ""}${showDot ? " · " : ""}${trend.trendMetadata?.domainContext ?? ""}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    trend.name ?? "",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.apply(fontWeightDelta: 2),
                  ),
                  Text(
                    trend.trendMetadata?.metaDescription ?? "",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
