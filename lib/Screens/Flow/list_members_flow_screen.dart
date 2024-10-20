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
import 'package:twitee/Api/list_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/Twitter/user_item.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/cursor_type.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_cursor.dart';
import '../../Openapi/models/timeline_timeline_item.dart';
import '../../Openapi/models/timeline_user.dart';
import '../../Openapi/models/user.dart';
import '../../Utils/responsive_util.dart';

enum ListMembersFlowType { members, subscribers }

class ListMembersFlowScreen extends StatefulWidgetForFlow {
  const ListMembersFlowScreen({
    super.key,
    required this.type,
    required this.listId,
    super.nested,
    super.scrollController,
    super.triggerOffset,
  });

  final ListMembersFlowType type;

  final String listId;

  static const String routeName = "/navigtion/listMembersFlow";

  @override
  State<ListMembersFlowScreen> createState() => _ListMembersFlowScreenState();
}

class _ListMembersFlowScreenState extends State<ListMembersFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<TimelineUser> validEntries = [];

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
      ResponseResult res;
      switch (widget.type) {
        case ListMembersFlowType.members:
          res = await ListApi.getMembers(listId: widget.listId);
          break;
        case ListMembersFlowType.subscribers:
          res = await ListApi.getSubscribers(listId: widget.listId);
          break;
      }
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineUser> newEntries = [];
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
    if (cursorBottom == null) return;
    if (_loading) return;
    _loading = true;
    try {
      ResponseResult res;
      switch (widget.type) {
        case ListMembersFlowType.members:
          res = await ListApi.getMembers(
              listId: widget.listId, cursor: cursorBottom!.value);
          break;
        case ListMembersFlowType.subscribers:
          res = await ListApi.getSubscribers(
              listId: widget.listId, cursor: cursorBottom!.value);
          break;
      }
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineUser> newEntries = [];
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

  List<TimelineUser> _processEntries(List<TimelineAddEntry> entries) {
    List<TimelineUser> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineItem &&
          (entry.content as TimelineTimelineItem).itemContent is TimelineUser) {
        result.add((entry.content as TimelineTimelineItem).itemContent
            as TimelineUser);
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
        child: validEntries.isNotEmpty || !_inited
            ? WaterfallFlow.extent(
                controller: _scrollController,
                padding: ResponsiveUtil.isLandscape()
                    ? const EdgeInsets.all(8)
                        .add(const EdgeInsets.only(bottom: 16))
                    : const EdgeInsets.only(bottom: 16),
                mainAxisSpacing: ResponsiveUtil.isLandscape() ? 6 : 2,
                maxCrossAxisExtent: 600,
                crossAxisSpacing: 6,
                children: List.generate(
                  validEntries.length,
                  (index) {
                    return _buildUserItem(validEntries[index]);
                  },
                ),
              )
            : ItemBuilder.buildEmptyPlaceholder(
                context: context,
                text: "暂无用户",
                scrollController: _scrollController,
              ),
      ),
    );
  }

  _buildUserItem(TimelineUser timelineUser) {
    User user = timelineUser.userResults!.result as User;
    return UserItem(userLegacy: user.legacy, userId: user.restId ?? "");
  }
}
