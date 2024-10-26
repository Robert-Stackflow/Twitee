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
import 'package:twitee/Screens/Flow/community_global_search_result_flow.dart';
import 'package:twitee/Utils/app_provider.dart';

import '../../Models/tab_item_data.dart';
import '../../Utils/constant.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';
import '../../Widgets/Twitter/refresh_interface.dart';
import '../Flow/communities_flow_screen.dart';

class CommunitiesSearchScreen extends StatefulWidget {
  const CommunitiesSearchScreen({super.key});

  static const String routeName = "/navigtion/communitiesSearch";

  @override
  State<CommunitiesSearchScreen> createState() =>
      CommunitiesSearchScreenState();
}

class CommunitiesSearchScreenState extends State<CommunitiesSearchScreen>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin,
        ScrollToHideMixin {
  @override
  bool get wantKeepAlive => true;

  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();
  late TabController _resultTabController;
  TabItemDataList resultTabDataList = TabItemDataList([]);

  int get currentResultIndex => _resultTabController.index;

  late AnimationController _refreshRotationController;

  FocusNode searchFocusNode = FocusNode();

  final TextEditingController _searchController = TextEditingController();
  final LayerLink _layerLink = LayerLink();

  initResultTab() {
    resultTabDataList.clear();
    resultTabDataList.addAll([
      TabItemData.build(
        context,
        "社群",
        (key, scrollController) => CommunitiesFlowScreen(
          key: key,
          query: _searchController.text,
          scrollController: scrollController,
        ),
      ),
      TabItemData.build(
        context,
        "热门",
        (key, scrollController) => CommunityGlobalSearchResultFlowScreen(
          key: key,
          isLatest: false,
          query: _searchController.text,
          scrollController: scrollController,
        ),
      ),
      TabItemData.build(
        context,
        "最新",
        (key, scrollController) => CommunityGlobalSearchResultFlowScreen(
          key: key,
          isLatest: true,
          query: _searchController.text,
          scrollController: scrollController,
        ),
      ),
    ]);
    _resultTabController =
        TabController(length: resultTabDataList.length, vsync: this);
    if (mounted) setState(() {});
    panelScreenState?.refreshScrollControllers();
  }

  perfromSearch(String key) {
    if (key.isEmpty) return;
    _searchController.text = key;
    refresh();
    initResultTab();
  }

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _resultTabController = TabController(length: 0, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initResultTab();
      Future.delayed(const Duration(milliseconds: 300), () {
        searchFocusNode.requestFocus();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
        context: context,
        showMenu: false,
        showBack: true,
        spacing: 0,
        onBackTap: () {
          panelScreenState?.popPage();
        },
        titleWidget: Container(
          margin: const EdgeInsets.all(10),
          constraints: ResponsiveUtil.isLandscape()
              ? const BoxConstraints(
                  maxWidth: searchBarWidth,
                  minWidth: searchBarWidth,
                  maxHeight: 56)
              : BoxConstraints(
                  maxWidth: width - 80, minWidth: width - 80, maxHeight: 56),
          child: CompositedTransformTarget(
            link: _layerLink,
            child: ItemBuilder.buildDesktopSearchBar(
              context: context,
              borderRadius: 8,
              tag: "SearchCommnuity",
              bottomMargin: 18,
              hintFontSizeDelta: 1,
              focusNode: searchFocusNode,
              controller: _searchController,
              background: Colors.grey.withAlpha(40),
              hintText: "搜索社群和推文",
              onSubmitted: (text) async {
                perfromSearch(text);
              },
            ),
          ),
        ),
        bottom: resultTabDataList.tabList.isEmpty
            ? null
            : ItemBuilder.buildTabBar(
                context,
                _resultTabController,
                resultTabDataList.tabList,
                showBorder: true,
                forceUnscrollable: true,
                width: MediaQuery.of(context).size.width,
                background: Theme.of(context).canvasColor,
                onTap: (index) {
                  if (mounted) setState(() {});
                  if (!_resultTabController.indexIsChanging &&
                      index == currentResultIndex) {
                    if (resultTabDataList.getScrollController(index) != null &&
                        resultTabDataList.getScrollController(index)!.offset >
                            30) {
                      scrollToTop();
                    } else {
                      refresh();
                    }
                  }
                },
                padding: const EdgeInsets.symmetric(horizontal: 10),
              ),
        bottomHeight: 56,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Stack(
      children: [
        _buildResult(),
        Positioned(
          right: 16,
          bottom: 16,
          child: ScrollToHide(
            controller: _scrollToHideController,
            scrollControllers: resultTabDataList.scrollControllerList,
            hideDirection: AxisDirection.down,
            child: _buildFloatingButtons(),
          ),
        ),
      ],
    );
  }

  _buildResult() {
    return TabBarView(
      controller: _resultTabController,
      children: resultTabDataList.pageList,
    );
  }

  scrollToTop() {
    resultTabDataList
        .getRefreshMixin(_resultTabController.index)
        ?.scrollToTop();
    _scrollToHideController.show();
    panelScreenState?.showBottomNavigationBar();
  }

  refresh() async {
    _refreshRotationController.repeat();
    await scrollToTop();
    _refreshRotationController.stop();
    _refreshRotationController.forward();
    resultTabDataList.getRefreshMixin(_resultTabController.index)?.refresh();
  }

  _buildFloatingButtons() {
    return Column(
      children: [
        if (ResponsiveUtil.isLandscape())
          ItemBuilder.buildShadowIconButton(
            context: context,
            icon: RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0)
                  .animate(_refreshRotationController),
              child: const Icon(Icons.refresh_rounded),
            ),
            onTap: () async {
              refresh();
            },
          ),
        const SizedBox(height: 10),
        ItemBuilder.buildShadowIconButton(
          context: context,
          icon: const Icon(Icons.arrow_upward_rounded),
          onTap: () {
            scrollToTop();
          },
        ),
      ],
    );
  }

  @override
  List<ScrollController> getScrollControllers() {
    return resultTabDataList.scrollControllerList;
  }
}
