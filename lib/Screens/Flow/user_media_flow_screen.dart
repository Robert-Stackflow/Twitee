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
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Screens/Detail/tweet_detail_screen.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../../Utils/app_provider.dart';
import '../../Utils/enums.dart';
import '../../Utils/tweet_util.dart';

class UserMediaFlowScreen extends StatefulWidget {
  const UserMediaFlowScreen({
    super.key,
    required this.userId,
    this.nested = false,
    this.scrollController,
  });

  final String userId;

  static const String routeName = "/navigtion/userMediaFlow";

  final bool nested;

  final ScrollController? scrollController;

  @override
  State<UserMediaFlowScreen> createState() => _UserMediaFlowScreenState();
}

class _UserMediaFlowScreenState extends State<UserMediaFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<TimelineTweet> gridTweets = [];

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
      _onRefresh();
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
      ResponseResult res = await UserApi.getUserMedia(userId: widget.userId);
      if (res.success) {
        _initPhase = InitPhase.successful;
        UserTweetsResponse response = res.data;
        Timeline? timeline = response.data.user.result.timelineV2?.timeline;
        if (timeline == null) {
          return IndicatorResult.fail;
        }
        List<TimelineTweet> newTweets = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newTweets.addAll(_processEntries(instruction.entries));
            _refreshCursor(instruction.entries);
          }
          if (instruction is TimelineAddToModule) {
            newTweets.addAll(filterTweet(instruction.moduleItems));
          }
        }
        gridTweets = newTweets;
        if (mounted) setState(() {});
        if (newTweets.isEmpty) {
          _noMore = true;
        } else {
          _noMore = false;
        }
        return IndicatorResult.success;
      } else {
        _initPhase = InitPhase.failed;
        IToast.showTop("加载失败：${res.message}");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      _initPhase = InitPhase.failed;
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
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
        setState(() {});
      }
      ResponseResult res = await UserApi.getUserMedia(
        userId: widget.userId,
        cursorBottom: cursorBottom?.value,
      );
      if (res.success) {
        _initPhase = InitPhase.successful;
        UserTweetsResponse response = res.data;
        Timeline? timeline = response.data.user.result.timelineV2?.timeline;
        if (timeline == null) {
          return IndicatorResult.fail;
        }
        List<TimelineTweet> newTweets = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newTweets.addAll(_processEntries(instruction.entries));
            _refreshCursor(instruction.entries);
          }
          if (instruction is TimelineAddToModule) {
            newTweets.addAll(filterTweet(instruction.moduleItems));
          }
        }
        gridTweets.addAll(newTweets);
        if (mounted) setState(() {});
        if (newTweets.isEmpty) {
          _noMore = true;
          return IndicatorResult.noMore;
        } else {
          _noMore = false;
          return IndicatorResult.success;
        }
      } else {
        _initPhase = InitPhase.failed;
        IToast.showTop("加载失败：${res.message}");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      _initPhase = InitPhase.failed;
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to load homeline", e, t);
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

  List<TimelineTweet> _processEntries(List<TimelineAddEntry> entries) {
    List<TimelineAddEntry> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineModule &&
          (entry.content as TimelineTimelineModule).displayType ==
              DisplayType.verticalGrid) {
        result.add(entry);
      }
    }
    return getGridTweets(result);
  }

  getGridTweets(List<TimelineAddEntry> entries) {
    List<TimelineTweet> tweets = [];
    for (var entry in entries) {
      TimelineTimelineModule module = entry.content as TimelineTimelineModule;
      tweets.addAll(filterTweet(module.items ?? []));
    }
    return tweets.where((e) => TweetUtil.hasMedia(e)).toList();
  }

  filterTweet(List<ModuleItem?> moduleItems) {
    List<TimelineTweet> tweets = [];
    List<ModuleItem> items = moduleItems
        .where((e) => e != null)
        .map((e) => e as ModuleItem)
        .toList();
    for (var item in items) {
      if (item.item.itemContent is TimelineTweet) {
        tweets.add(item.item.itemContent as TimelineTweet);
      }
    }
    return tweets.where((e) => TweetUtil.hasMedia(e)).toList();
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
      onRefresh: widget.nested
          ? null
          : () async {
              return await _onRefresh();
            },
      onLoad: () async {
        return await _onLoad();
      },
      refreshOnStart: true,
      triggerAxis: Axis.vertical,
      controller: _easyRefreshController,
      childBuilder: (context, pyhsics) => gridTweets.isNotEmpty
          ? ItemBuilder.buildLoadMoreNotification(
              onLoad: _onLoad,
              noMore: _noMore,
              child: GridView.extent(
                physics: pyhsics,
                controller: widget.nested ? null : _scrollController,
                padding: const EdgeInsets.all(8)
                    .add(const EdgeInsets.only(bottom: 16)),
                maxCrossAxisExtent: 160,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                children: List.generate(
                  gridTweets.length,
                  (index) {
                    return _buildGridItem(160, gridTweets[index]);
                  },
                ),
              ),
            )
          : ItemBuilder.buildEmptyPlaceholder(
              context: context,
              text: "暂无内容",
              scrollController: _scrollController,
            ),
    );
  }

  _buildGridItem(double size, TimelineTweet timelineTweet) {
    Tweet tweet = TweetUtil.getTrueTweetByResult(timelineTweet.tweetResults)!;
    int count = TweetUtil.getMediaCount(timelineTweet);
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            panelScreenState
                ?.pushPage(TweetDetailScreen(tweetId: tweet.restId!));
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ItemBuilder.buildCachedImage(
                  imageUrl: tweet.legacy!.entities.media![0]!.mediaUrlHttps!,
                  width: size,
                  height: size,
                  context: context,
                  fit: BoxFit.cover,
                  showLoading: false,
                ),
              ),
              if (count > 1)
                const Positioned(
                  right: 8,
                  bottom: 8,
                  child: Icon(
                    Icons.collections_outlined,
                    color: Colors.white,
                  ),
                )
            ],
          )),
    );
  }
}
