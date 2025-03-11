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
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/Twitter/user_item.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/user.dart';
import '../../Resources/theme.dart';

enum CommunityMembersFlowType { members, moderators }

class CommunityMembersFlowScreen extends StatefulWidgetForFlow {
  const CommunityMembersFlowScreen({
    super.key,
    required this.type,
    required this.communityId,
    super.nested,
    super.scrollController,
    super.triggerOffset,
    this.query,
    this.isSearch = false,
  });

  final CommunityMembersFlowType type;

  final String communityId;

  final String? query;

  final bool isSearch;

  static const String routeName = "/navigtion/listMembersFlow";

  @override
  State<CommunityMembersFlowScreen> createState() =>
      CommunityMembersFlowScreenState();
}

class CommunityMembersFlowScreenState extends State<CommunityMembersFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  String? cursorBottom;

  List<User> validEntries = [];

  bool _loading = false;

  late final ScrollController _scrollController;

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  bool _noMore = false;

  bool _inited = false;

  late String? query = widget.query;

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

  performSearch(String key) {
    query = key;
    refresh();
  }

  _onRefresh() async {
    if (_loading) return;
    _loading = true;
    cursorBottom = null;
    try {
      ResponseResult res;
      if (widget.isSearch) {
        res = await CommunityApi.getCommunityMemeberBySearch(
          query: query ?? "",
          communityId: widget.communityId,
        );
      } else {
        switch (widget.type) {
          case CommunityMembersFlowType.members:
            res = await CommunityApi.getCommunityMembers(
                communityId: widget.communityId);
            break;
          case CommunityMembersFlowType.moderators:
            res = await CommunityApi.getCommunityModerators(
                communityId: widget.communityId);
            break;
        }
      }
      if (res.success) {
        List<User> newEntries = res.data;
        cursorBottom = res.data2;
        validEntries = newEntries;
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
    if (cursorBottom == null) return IndicatorResult.noMore;
    if (_loading) return;
    _loading = true;
    try {
      ResponseResult res;
      if (widget.isSearch) {
        res = await CommunityApi.getCommunityMemeberBySearch(
          query: query ?? "",
          communityId: widget.communityId,
          cursorBottom: cursorBottom!,
        );
      } else {
        switch (widget.type) {
          case CommunityMembersFlowType.members:
            res = await CommunityApi.getCommunityMembers(
                communityId: widget.communityId, cursorBottom: cursorBottom!);
            break;
          case CommunityMembersFlowType.moderators:
            res = await CommunityApi.getCommunityModerators(
                communityId: widget.communityId, cursorBottom: cursorBottom!);
            break;
        }
      }
      if (res.success) {
        List<User> newEntries = res.data;
        cursorBottom = res.data2;
        validEntries.addAll(newEntries);
        if (newEntries.isEmpty) {
          _noMore = true;
        } else {
          _noMore = false;
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
                padding: MyTheme.responsiveFlowPadding,
                mainAxisSpacing: MyTheme.responsiveMainAxisSpacing,
                crossAxisSpacing: MyTheme.responsiveCrossAxisSpacing,
                maxCrossAxisExtent: MyTheme.cardMaxCrossAxisExtent,
                children: List.generate(
                  validEntries.length,
                  (index) {
                    return _buildUserItem(validEntries[index]);
                  },
                ),
              )
            : ItemBuilder.buildEmptyPlaceholder(
                context: context,
                text: widget.isSearch ? "暂无搜索结果" : "暂无用户",
                scrollController: _scrollController,
              ),
      ),
    );
  }

  _buildUserItem(User user) {
    return UserItem(
      userLegacy: user.legacy,
      userId: user.restId ?? "",
      communityRole: user.communityRole,
    );
  }
}
