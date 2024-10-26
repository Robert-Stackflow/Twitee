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
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/community_item.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Resources/theme.dart';
import '../../Utils/enums.dart';
import '../../Utils/responsive_util.dart';

class CommunitiesFlowScreen extends StatefulWidgetForFlow {
  const CommunitiesFlowScreen({
    super.key,
    required this.query,
    super.nested,
    super.scrollController,
    super.triggerOffset,
  });

  final String query;

  static const String routeName = "/navigtion/communitiesFlow";

  @override
  State<CommunitiesFlowScreen> createState() => _CommunitiesFlowScreenState();
}

class _CommunitiesFlowScreenState extends State<CommunitiesFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  String? cursorBottom;

  List<Community> validEntries = [];

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

  _onRefresh() async {
    if (widget.query.isEmpty) {
      _initPhase = InitPhase.successful;
      setState(() {});
      return;
    }
    if (_loading) return;
    _loading = true;
    cursorBottom = null;
    try {
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
        setState(() {});
      }
      var res = await CommunityApi.getCommunitiesSearch(query: widget.query);
      if (res.success) {
        _initPhase = InitPhase.successful;
        List<Community> newEntries = res.data;
        cursorBottom = res.data2;
        validEntries = newEntries;
        if (newEntries.isEmpty) {
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

  _onLoad() async {
    if (cursorBottom == null) return;
    if (_loading) return;
    _loading = true;
    try {
      if (_initPhase != InitPhase.successful) {
        _initPhase = InitPhase.connecting;
        setState(() {});
      }
      var res = await CommunityApi.getCommunitiesSearch(
        cursorBottom: cursorBottom!,
        query: widget.query,
      );
      if (res.success) {
        _initPhase = InitPhase.successful;
        _initPhase = InitPhase.successful;
        List<Community> newEntries = res.data;
        cursorBottom = res.data2;
        validEntries.addAll(newEntries);
        if (newEntries.isEmpty) {
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
      onRefresh: () async {
        return await _onRefresh();
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
                text: "暂无社群",
                scrollController: _scrollController,
                physics: pyhsics,
              ),
      ),
    );
  }
}
