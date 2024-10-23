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
import 'package:twitee/Screens/Flow/topic_row.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Utils/enums.dart';
import '../../Utils/responsive_util.dart';

class CommunityDiscoveryFlowScreen extends StatefulWidgetForFlow {
  const CommunityDiscoveryFlowScreen({
    super.key,
    super.nested,
    super.scrollController,
    super.triggerOffset,
    this.topics = const [],
  });

  final List<CommunityTopic> topics;

  static const String routeName = "/navigtion/communityDiscoveryFlow";

  @override
  State<CommunityDiscoveryFlowScreen> createState() => _ListFlowScreenState();
}

class _ListFlowScreenState extends State<CommunityDiscoveryFlowScreen>
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
                    return _buildCommunityItem(
                      validEntries[index],
                    );
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

  _buildCommunityItem(Community community) {
    CommunityData communityData = community.result;
    ArticleCoverMediaInfo mediaInfo =
        communityData.customBannerMedia?.mediaInfo ??
            communityData.defaultBannerMedia!.mediaInfo!;
    return Material(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ItemBuilder.buildHeroCachedImage(
                  imageUrl: mediaInfo.originalImgUrl ?? AssetUtil.banner,
                  context: context,
                  width: 90,
                  height: 90,
                  showLoading: false,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      communityData.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.apply(fontWeightDelta: 2),
                    ),
                    ItemBuilder.buildCountItem(
                      context,
                      title: "成员",
                      value: communityData.memberCount ?? 0,
                    ),
                    if (communityData.primaryCommunityTopic != null)
                      Text(
                        "话题：${communityData.primaryCommunityTopic!.topicName!}",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.apply(fontSizeDelta: 2),
                      ),
                    Text(
                      communityData.description,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.apply(fontSizeDelta: 2),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
