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
import 'package:twitee/Api/community_api.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Widgets/Twitter/topic_row.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Resources/theme.dart';
import '../../Utils/enums.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Twitter/community_item.dart';

class CommunityDiscoveryScreen extends StatefulWidgetForFlow {
  const CommunityDiscoveryScreen({
    super.key,
    super.nested,
    super.scrollController,
    super.triggerOffset,
    this.topics = const [],
  });

  final List<CommunityTopic> topics;

  static const String routeName = "/navigtion/communityDiscoveryFlow";

  @override
  State<CommunityDiscoveryScreen> createState() => _ListFlowScreenState();
}

class _ListFlowScreenState extends State<CommunityDiscoveryScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  String? cursorBottom;

  List<Community> validEntries = [];

  String? currentTopicId;

  bool _loading = false;

  late final ScrollController _scrollController;

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  bool _noMore = false;
  InitPhase _initPhase = InitPhase.haveNotConnected;

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController ?? ScrollController();
    if (widget.nested) {
      _onRefresh();
    }
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
    if (widget.nested) {
      await _onRefresh();
    } else {
      _easyRefreshController.callRefresh(scrollController: _scrollController);
    }
  }

  _getDiscoveryTimeline() async {
    if (_loading) return;
    _loading = true;
    cursorBottom = null;
    try {
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
        setState(() {});
      }
      var res = await CommunityApi.getCommunityDiscoveryTimeline();
      if (res.success) {
        _initPhase = InitPhase.successful;
        Timeline timeline = res.data;
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            validEntries = _processEntries(instruction.entries);
          }
        }
        return IndicatorResult.success;
      } else {
        _initPhase = InitPhase.failed;
        IToast.showTop("加载失败");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to get list timeline", e, t);
      _initPhase = InitPhase.failed;
      return IndicatorResult.fail;
    } finally {
      _loading = false;
      if (mounted) setState(() {});
    }
  }

  List<Community> _processEntries(List<TimelineAddEntry> entries) {
    List<Community> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineItem &&
          (entry.content as TimelineTimelineItem).itemContent
              is TimelineCommunity) {
        TimelineCommunity community = (entry.content as TimelineTimelineItem)
            .itemContent as TimelineCommunity;
        result.add(community.communityResults);
      }
    }
    return result;
  }

  _onRefresh([String? topicId]) async {
    if (topicId == null) {
      return await _getDiscoveryTimeline();
    }
    if (_loading) return;
    _loading = true;
    cursorBottom = null;
    try {
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
        setState(() {});
      }
      var res = await CommunityApi.getTopicTimeline(topicId: topicId);
      if (res.success) {
        _initPhase = InitPhase.successful;
        List<Community> newEntries = res.data;
        validEntries = newEntries;
        cursorBottom = res.data2;
        if (newEntries.isEmpty || cursorBottom == null) {
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
      ILogger.error("Twitee", "Failed to get list timeline", e, t);
      _initPhase = InitPhase.failed;
      return IndicatorResult.fail;
    } finally {
      _loading = false;
      if (mounted) setState(() {});
    }
  }

  _onLoad([String? topicId]) async {
    if (cursorBottom == null) return;
    if (_loading) return;
    _loading = true;
    try {
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
        setState(() {});
      }
      var res = await CommunityApi.getTopicTimeline(
        topicId: topicId ?? "",
        cursorBottom: cursorBottom!,
      );
      if (res.success) {
        _initPhase = InitPhase.successful;
        List<Community> newEntries = res.data;
        validEntries.addAll(newEntries);
        cursorBottom = res.data2;
        if (newEntries.isEmpty || cursorBottom == null) {
          _noMore = true;
          return IndicatorResult.noMore;
        } else {
          _noMore = false;
          return IndicatorResult.success;
        }
      } else {
        _initPhase = InitPhase.failed;
        IToast.showTop("加载失败");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      _initPhase = InitPhase.failed;
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to load list timeline", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
      if (mounted) setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.nested ? _buildBody() : _buildBodyWithTopics();
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
        return _buildBodyWithTopics();
      default:
        return Container();
    }
  }

  _buildBodyWithTopics() {
    return Column(
      children: [
        TopicRow(
          topics: widget.topics,
          onSelectTopic: (topicId) async {
            currentTopicId = topicId;
            setState(() {});
            _easyRefreshController.callRefresh();
          },
        ),
        Expanded(
          child: _buildMainBody(),
        ),
      ],
    );
  }

  _buildMainBody() {
    return EasyRefresh.builder(
      onRefresh: () async {
        return await _onRefresh(currentTopicId);
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
          maxCrossAxisExtent: 600,
                children: List.generate(
                  validEntries.length,
                  (index) {
                    return CommunityItem(community: validEntries[index]);
                  },
                ),
              )
            : ItemBuilder.buildEmptyPlaceholder(
                context: context,
                text: "暂无内容",
                scrollController: _scrollController,
                physics: pyhsics,
              ),
      ),
    );
  }
}
