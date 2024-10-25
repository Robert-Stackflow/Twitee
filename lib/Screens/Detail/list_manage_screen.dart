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
import 'package:twitee/Api/data_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Utils/constant.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/cursor_type.dart';
import '../../Openapi/models/module_item.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_cursor.dart';
import '../../Openapi/models/timeline_timeline_module.dart';
import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Twitter/twitter_list_item.dart';

class ListManageScreen extends StatefulWidget {
  const ListManageScreen({super.key, required this.userId});

  final String userId;

  static const String routeName = "/navigtion/listManage";

  @override
  State<ListManageScreen> createState() => _ListManageScreenState();
}

class _ListManageScreenState extends State<ListManageScreen>
    with TickerProviderStateMixin {
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<TimelineTwitterList> validItems = [];

  bool _loading = false;

  final ScrollController _scrollController = ScrollController();

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();

  bool _noMore = false;

  @override
  void initState() {
    super.initState();
  }

  Future<IndicatorResult> _onRefresh() async {
    if (_loading) return IndicatorResult.none;
    _loading = true;
    cursorBottom = null;
    try {
      ResponseResult res;
      res = await DataApi.getLists(userId: widget.userId);
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineTwitterList> newEntries = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries = validItems = _processEntries(instruction.entries);
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
        IToast.showTop("加载失败");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to get lists", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
    }
  }

  Future<IndicatorResult> _onLoad() async {
    if (cursorBottom == null) return IndicatorResult.none;
    if (_loading) return IndicatorResult.none;
    _loading = true;
    try {
      ResponseResult res;
      res = await DataApi.getLists(
        userId: widget.userId,
        cursorBottom: cursorBottom!.value,
      );
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineTwitterList> newEntries = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries.addAll(_processEntries(instruction.entries));
            validItems.addAll(newEntries);
            _refreshCursor(instruction.entries);
            if (mounted) setState(() {});
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
      ILogger.error("Twitee", "Failed to load lists", e, t);
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

  List<TimelineTwitterList> _processEntries(List<TimelineAddEntry> entries) {
    List<ModuleItem> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineModule) {
        TimelineTimelineModule module = entry.content as TimelineTimelineModule;
        if (module.items != null) {
          result.addAll(
              module.items!.where((element) => element != null).map((e) => e!));
        }
      }
    }
    List<TimelineTwitterList> lists = [];
    for (var item in result) {
      if (item.item.itemContent is TimelineTwitterList) {
        lists.add(item.item.itemContent as TimelineTwitterList);
      }
    }
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        title: "管理列表",
        transparent: true,
        showBack: true,
        actions: [
          ItemBuilder.buildIconButton(
            context: context,
            icon: Icon(
              Icons.add_rounded,
              size: Theme.of(context).iconTheme.size,
              color: Theme.of(context).iconTheme.color,
            ),
            onTap: () {
              IToast.showTop("暂不支持编辑列表");
            },
          ),
          if (ResponsiveUtil.isLandscape())
            ItemBuilder.buildBlankIconButton(context),
          const SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          EasyRefresh.builder(
            onRefresh: () async {
              return await _onRefresh();
            },
            onLoad: () async {
              return await _onLoad();
            },
            refreshOnStart: true,
            triggerAxis: Axis.vertical,
            controller: _easyRefreshController,
            childBuilder: (context, physics) => validItems.isNotEmpty
                ? ItemBuilder.buildLoadMoreNotification(
                    onLoad: _onLoad,
                    noMore: _noMore,
                    child: WaterfallFlow.extent(
                      controller: _scrollController,
                      physics: physics,
                      padding: ResponsiveUtil.isLandscape()
                          ? const EdgeInsets.all(8)
                              .add(const EdgeInsets.only(bottom: 16))
                          : const EdgeInsets.only(bottom: 16),
                      mainAxisSpacing: ResponsiveUtil.isLandscape() ? 6 : 2,
                      maxCrossAxisExtent: 600,
                      crossAxisSpacing: 6,
                      children: List.generate(
                        validItems.length,
                        (index) {
                          return TwitterListItem(list: validItems[index]);
                        },
                      ),
                    ),
                  )
                : ItemBuilder.buildEmptyPlaceholder(
                    context: context,
                    physics: physics,
                    text: "暂无列表",
                    scrollController: _scrollController,
                  ),
          ),
          Positioned(
            right: ResponsiveUtil.isLandscape() ? 16 : 12,
            bottom: ResponsiveUtil.isLandscape() ? 16 : 76,
            child: ScrollToHide(
              controller: _scrollToHideController,
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
    return ResponsiveUtil.isLandscape()
        ? Column(
            children: [
              if (ResponsiveUtil.isLandscape())
                ItemBuilder.buildShadowIconButton(
                  context: context,
                  icon: const Icon(Icons.add_rounded),
                  onTap: () async {
                    IToast.showTop("暂不支持新建列表");
                  },
                ),
            ],
          )
        : emptyWidget;
  }
}
