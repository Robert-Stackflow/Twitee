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
import 'package:twitee/Api/topic_api.dart';
import 'package:twitee/Api/user_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/cursor_type.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_cursor.dart';
import '../../Openapi/models/timeline_timeline_item.dart';
import '../../Openapi/models/timeline_topic.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Dialog/dialog_builder.dart';
import '../../Resources/theme.dart';

class UserTopicFlowScreen extends StatefulWidgetForFlow {
  const UserTopicFlowScreen({
    super.key,
    required this.userId,
    super.nested,
    super.scrollController,
    super.triggerOffset,
  });

  final String userId;

  static const String routeName = "/navigtion/userTopicFlow";

  @override
  State<UserTopicFlowScreen> createState() => _UserTopicFlowScreenState();
}

class _UserTopicFlowScreenState extends State<UserTopicFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<TimelineTopic> validEntries = [];

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
      ResponseResult res = await UserApi.getTopics(userId: widget.userId);
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineTopic> newEntries = [];
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
      ResponseResult res = await UserApi.getTopics(userId: widget.userId);
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineTopic> newEntries = [];
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

  List<TimelineTopic> _processEntries(List<TimelineAddEntry> entries) {
    List<TimelineTopic> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineItem &&
          (entry.content as TimelineTimelineItem).itemContent
              is TimelineTopic) {
        result.add((entry.content as TimelineTimelineItem).itemContent
            as TimelineTopic);
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
                padding: MyTheme.responsiveListFlowPadding,
                mainAxisSpacing: MyTheme.responsiveMainAxisSpacing,
                crossAxisSpacing: MyTheme.responsiveCrossAxisSpacing,
                maxCrossAxisExtent: 600,
                children: List.generate(
                  validEntries.length,
                  (index) {
                    return _buildItem(validEntries[index]);
                  },
                ),
              )
            : ItemBuilder.buildEmptyPlaceholder(
                context: context,
                text: "暂无话题",
                scrollController: _scrollController,
              ),
      ),
    );
  }

  _buildItem(TimelineTopic item) {
    var radius = ResponsiveUtil.isLandscape()
        ? BorderRadius.circular(8)
        : BorderRadius.zero;
    return ItemBuilder.buildClickItem(
      Material(
        color: Theme.of(context).canvasColor,
        borderRadius: radius,
        child: InkWell(
          onTap: () {},
          borderRadius: radius,
          child: Container(
            decoration: BoxDecoration(borderRadius: radius),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ItemBuilder.buildHeroCachedImage(
                    imageUrl: item.topic.iconUrl,
                    context: context,
                    height: 36,
                    width: 36,
                    showLoading: false,
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  height: 42,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.topic.name,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.apply(fontSizeDelta: -1),
                      ),
                      if (Utils.isNotEmpty(item.topic.description))
                        const SizedBox(height: 3),
                      if (Utils.isNotEmpty(item.topic.description))
                        Text(
                          item.topic.description ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.apply(fontSizeDelta: 2),
                        ),
                    ],
                  ),
                ),
                const Spacer(),
                ItemBuilder.buildRoundButton(
                  context,
                  text: item.topic.following ? "正在关注" : "关注",
                  background: item.topic.following
                      ? null
                      : Theme.of(context).primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  onTap: () async {
                    String topicName = item.topic.name;
                    if (item.topic.following) {
                      DialogBuilder.showConfirmDialog(context,
                          title: "取消关注$topicName",
                          message:
                              "是否取消关注$topicName？即使取消关注该话题，你仍会看到有关该话题的帖子，具体取决于你关注的账号。",
                          onTapConfirm: () async {
                        var res = await TopicApi.unFollowTopic(
                            topicId: item.topic.topicId);
                        if (res.success) {
                          item.topic.following = false;
                          setState(() {});
                          IToast.showTop("已取消关注$topicName");
                        } else {
                          IToast.showTop("取消关注$topicName失败");
                        }
                      });
                    } else {
                      var res = await TopicApi.followTopic(
                          topicId: item.topic.topicId);
                      if (res.success) {
                        item.topic.following = true;
                        setState(() {});
                        IToast.showTop("已关注$topicName");
                      } else {
                        IToast.showTop("关注$topicName失败");
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
