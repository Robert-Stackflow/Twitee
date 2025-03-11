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
import 'package:twitee/Resources/theme.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/Twitter/user_item.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/user_legacy.dart';
import '../../Utils/responsive_util.dart';

class FriendsFlowScreen extends StatefulWidgetForFlow {
  const FriendsFlowScreen({
    super.key,
    required this.userId,
    super.nested,
    super.scrollController,
    super.triggerOffset,
  });

  final String userId;

  static const String routeName = "/navigtion/friendsFlow";

  @override
  State<FriendsFlowScreen> createState() => _FriendsFlowScreenState();
}

class _FriendsFlowScreenState extends State<FriendsFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;

  String? cursorTop;
  String? cursorBottom;

  List<UserLegacy> users = [];

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
      ResponseResult res = await UserApi.getFriendList(userId: widget.userId);
      if (res.success) {
        List<UserLegacy> newEntries = res.data;
        users = newEntries;
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
      ResponseResult res = await UserApi.getFriendList(
          userId: widget.userId, cursorBottom: cursorBottom);
      if (res.success) {
        List<UserLegacy> newEntries = res.data;
        users.addAll(newEntries);
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
        child: users.isNotEmpty || !_inited
            ? WaterfallFlow.extent(
                controller: _scrollController,
                padding: MyTheme.responsiveCardFlowPadding,
                mainAxisSpacing: MyTheme.responsiveCardMainAxisSpacing,
                crossAxisSpacing: MyTheme.responsiveCardCrossAxisSpacing,
                maxCrossAxisExtent: MyTheme.cardMaxCrossAxisExtent,
                children: List.generate(
                  users.length,
                  (index) {
                    return UserItem(userLegacy: users[index], userId: "");
                  },
                ),
              )
            : ItemBuilder.buildEmptyPlaceholder(
                context: context,
                text: "暂无好友",
                scrollController: _scrollController,
              ),
      ),
    );
  }
}
