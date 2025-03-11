/*
 * Copyright (c) 2024-2025 Robert-Stackflow.
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
import 'package:provider/provider.dart';
import 'package:twitee/Models/local_model.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Resources/theme.dart';
import '../../Widgets/Twitter/local_user_item.dart';

class BlockRetweetUserFlowScreen extends StatefulWidgetForFlow {
  const BlockRetweetUserFlowScreen({
    super.key,
    super.nested,
    super.scrollController,
    super.triggerOffset,
  });

  static const String routeName = "/navigtion/BlockRetweetUserFlow";

  @override
  State<BlockRetweetUserFlowScreen> createState() => _UserFlowScreenState();
}

class _UserFlowScreenState extends State<BlockRetweetUserFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  late final ScrollController _scrollController;

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

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
    return IndicatorResult.success;
  }

  _onLoad() async {
    return IndicatorResult.noMore;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Selector<AppProvider, List<LocalUserModel>>(
      selector: (context, provider) => provider.blockRetweetUsers,
      builder: (context, blockRetweetUsers, child) {
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
          childBuilder: (context, pyhsics) => blockRetweetUsers.isNotEmpty
              ? WaterfallFlow.extent(
                  physics: pyhsics,
                  controller: _scrollController,
                  padding: MyTheme.responsiveCardFlowPadding,
                  mainAxisSpacing: MyTheme.responsiveCardMainAxisSpacing,
                  crossAxisSpacing: MyTheme.responsiveCardCrossAxisSpacing,
                  maxCrossAxisExtent: MyTheme.cardMaxCrossAxisExtent,
                  children: List.generate(
                    blockRetweetUsers.length,
                    (index) {
                      return LocalUserItem(user: blockRetweetUsers[index]);
                    },
                  ),
                )
              : ItemBuilder.buildEmptyPlaceholder(
                  context: context,
                  text: "暂无已关闭转推的用户",
                  scrollController: _scrollController,
                  physics: pyhsics,
                ),
        );
      },
    );
  }
}
