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
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../../Models/tab_item_data.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/constant.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';
import '../Flow/community_members_flow_screen.dart';

class CommunityMembersScreen extends StatefulWidget {
  const CommunityMembersScreen({
    super.key,
    required this.communityId,
    this.initType,
  });

  final String communityId;

  final CommunityMembersFlowType? initType;

  static const String routeName = "/navigtion/communityMembers";

  @override
  State<CommunityMembersScreen> createState() => CommunityMembersScreenState();
}

class CommunityMembersScreenState extends State<CommunityMembersScreen>
    with TickerProviderStateMixin, ScrollToHideMixin {
  late TabController _tabController;
  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();
  TabItemDataList tabDataList = TabItemDataList([]);

  int get currentIndex => _tabController.index;

  FocusNode searchFocusNode = FocusNode();
  final TextEditingController _searchController = TextEditingController();

  bool showSearchResult = false;

  GlobalKey<CommunityMembersFlowScreenState> searchResultKey =
      GlobalKey<CommunityMembersFlowScreenState>();

  initTab() {
    String communityId = widget.communityId;
    tabDataList.addAll(
      [
        TabItemData.build(
          context,
          "成员",
          (key, scrollController) => CommunityMembersFlowScreen(
            key: key,
            type: CommunityMembersFlowType.members,
            communityId: communityId,
            scrollController: scrollController,
          ),
        ),
        TabItemData.build(
          context,
          "版主",
          (key, scrollController) => CommunityMembersFlowScreen(
            key: key,
            type: CommunityMembersFlowType.moderators,
            communityId: communityId,
            scrollController: scrollController,
          ),
        ),
      ],
    );
    _tabController = TabController(length: tabDataList.length, vsync: this);
    if (widget.initType != null) {
      _tabController.index = widget.initType!.index;
    }
  }

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _tabController = TabController(length: 0, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initTab();
    });
    _searchController.addListener(() {
      if (showSearchResult && _searchController.text.isEmpty) {
        showSearchResult = false;
        setState(() {});
      }
    });
  }

  perfromSearch(String key) {
    if (key.isEmpty) return;
    _searchController.text = key;
    showSearchResult = true;
    searchResultKey.currentState?.performSearch(key);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PopScope(
      canPop: !showSearchResult,
      onPopInvokedWithResult: (_, __) {
        if (showSearchResult) {
          showSearchResult = false;
          _searchController.text = "";
          setState(() {});
        }
      },
      child: Scaffold(
        appBar: ItemBuilder.buildDesktopAppBar(
          context: context,
          showBack: true,
          spacing: 0,
          onBackTap: () {
            if (showSearchResult) {
              showSearchResult = false;
              _searchController.text = "";
              setState(() {});
            } else {
              panelScreenState?.popPage();
            }
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
            child: ItemBuilder.buildDesktopSearchBar(
              context: context,
              borderRadius: 8,
              tag: "SearchCommnuityMembers",
              bottomMargin: 18,
              hintFontSizeDelta: 1,
              focusNode: searchFocusNode,
              controller: _searchController,
              background: Colors.grey.withAlpha(40),
              hintText: "搜索成员",
              onSubmitted: (text) async {
                perfromSearch(text);
              },
            ),
          ),
          bottom: showSearchResult
              ? null
              : ItemBuilder.buildTabBar(
                  context,
                  _tabController,
                  tabDataList.tabList,
                  onTap: onTapTab,
                  forceUnscrollable: true,
                  showBorder: true,
                  width: MediaQuery.of(context).size.width,
                ),
          bottomHeight: 56,
        ),
        body: Stack(
          children: [
            TabBarView(
              controller: _tabController,
              children: tabDataList.pageList,
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: ScrollToHide(
                controller: _scrollToHideController,
                scrollControllers: tabDataList.scrollControllerList,
                hideDirection: AxisDirection.down,
                child: _buildFloatingButtons(),
              ),
            ),
            if (showSearchResult)
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: CommunityMembersFlowScreen(
                  key: searchResultKey,
                  type: CommunityMembersFlowType.members,
                  communityId: widget.communityId,
                  query: _searchController.text,
                  isSearch: true,
                ),
              ),
          ],
        ),
      ),
    );
  }

  onTapTab(int index) {
    if (!_tabController.indexIsChanging && index == currentIndex) {
      if (tabDataList.getScrollController(index) != null &&
          tabDataList.getScrollController(index)!.offset > 30) {
        scrollToTop();
      } else {
        refresh();
      }
    }
  }

  scrollToTop() async {
    await tabDataList.getRefreshMixin(currentIndex)?.scrollToTop();
    _scrollToHideController.show();
    panelScreenState?.showBottomNavigationBar();
  }

  refresh() async {
    _refreshRotationController.repeat();
    await scrollToTop();
    _refreshRotationController.stop();
    _refreshRotationController.forward();
    tabDataList.getRefreshMixin(currentIndex)?.refresh();
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
    return tabDataList.scrollControllerList;
  }
}
