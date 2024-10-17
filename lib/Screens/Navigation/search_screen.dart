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

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:twitee/Api/search_api.dart';
import 'package:twitee/Screens/Detail/search_result_screen.dart';
import 'package:twitee/Screens/Detail/user_detail_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/enums.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/tweet_util.dart';

import '../../Models/search_suggestion.dart';
import '../../Models/search_timeline_tab_item.dart';
import '../../Models/tab_item_data.dart';
import '../../Utils/asset_util.dart';
import '../../Utils/constant.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';
import '../../Widgets/Twitter/refresh_interface.dart';
import '../Flow/search_explore_flow_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  static const String routeName = "/navigtion/search";

  @override
  State<SearchScreen> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin,
        ScrollToHideMixin {
  @override
  bool get wantKeepAlive => true;

  late TabController _trendTabController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();
  TabItemDataList trendTabDataList = TabItemDataList([]);

  int get currentTrendIndex => _trendTabController.index;
  List<SearchTimelineTabItem> tabItems = [];

  OverlayEntry? _overlayEntry;

  late AnimationController _refreshRotationController;

  FocusNode searchFocusNode = FocusNode();

  final TextEditingController _searchController = TextEditingController();
  final LayerLink _layerLink = LayerLink();

  SearchSuggestionResponse? _suggestionResponse;

  bool _showSuggestion = false;
  InitPhase _initPhase = InitPhase.haveNotConnected;

  initTrendTab() {
    trendTabDataList.clear();
    for (int i = 0; i < tabItems.length; i++) {
      trendTabDataList.add(
        TabItemData.build(
          tabItems[i].labelText!,
          (key, scrollController) => SearchExploreFlowScreen(
            key: key,
            tabItem: tabItems[i],
            scrollController: scrollController,
          ),
        ),
      );
    }
    _trendTabController =
        TabController(length: trendTabDataList.length, vsync: this);
    if (mounted) setState(() {});
    panelScreenState?.refreshScrollControllers();
  }

  perfromSearch(String key) {
    if (key.isEmpty) return;
    panelScreenState?.pushPage(SearchResultScreen(searchKey: key));
  }

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _trendTabController = TabController(length: 0, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initTrendTab();
      initData();
    });
    _searchController.addListener(() {
      EasyDebounce.debounce(
          'search-suggestion-debouncer', const Duration(milliseconds: 100), () {
        if (_searchController.text.isNotEmpty) {
          _fetchSuggestions();
        } else {
          _hideSuggestions();
        }
      });
    });
    searchFocusNode.addListener(() {
      if (searchFocusNode.hasFocus) {
        _showSuggestions();
      }
    });
  }

  _fetchSuggestions() async {
    if (_searchController.text.isEmpty) return;
    var res = await SearchApi.getSuggestion(query: _searchController.text);
    if (res.success) {
      setState(() {
        _suggestionResponse = res.data;
      });
      if (searchFocusNode.hasFocus) {
        _showSuggestions();
      }
    } else {
      IToast.showTop("搜索建议失败：${res.message}");
    }
  }

  @override
  void dispose() {
    EasyDebounce.cancelAll();
    super.dispose();
  }

  initData() async {
    _initPhase = InitPhase.connecting;
    setState(() {});
    var res = await SearchApi.getExplorePageTimelines();
    if (res.success) {
      tabItems = res.data;
      _initPhase = InitPhase.successful;
      setState(() {});
      initTrendTab();
    } else {
      _initPhase = InitPhase.failed;
      setState(() {});
    }
  }

  void _showSuggestions() {
    _showSuggestion = true;
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
    }
    if (_suggestionResponse == null) return;
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideSuggestions() {
    _showSuggestion = false;
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    double width = ResponsiveUtil.isLandscape()
        ? searchBarWidth
        : MediaQuery.sizeOf(context).width - 30;
    double height = ResponsiveUtil.isLandscape()
        ? 400
        : MediaQuery.sizeOf(context).height * 0.55;
    return OverlayEntry(
      builder: (context) => Positioned(
        width: width,
        height: height,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: true,
          offset: ResponsiveUtil.isLandscape()
              ? const Offset(0.0, 42.0)
              : const Offset(-45.0, 42.0),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  offset: const Offset(0, 4),
                  blurRadius: 10,
                  spreadRadius: 1,
                ).scale(2),
              ],
              border: Border.all(
                color: Theme.of(context).dividerColor,
                width: 0.5,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                if (_suggestionResponse != null)
                  ..._suggestionResponse!.topics.map((e) => _buildTopicTile(e)),
                if (_suggestionResponse != null)
                  ..._suggestionResponse!.users.map((e) => _buildUserTile(e)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildTopicTile(SuggestionTopic e) {
    return Material(
      child: InkWell(
        onTap: () {
          perfromSearch(e.topic);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const SizedBox(width: 6),
              const Icon(Icons.search_rounded, size: 28),
              const SizedBox(width: 14),
              Text(
                e.topic,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildUserTile(SuggestionUser e) {
    return Material(
      child: InkWell(
        onTap: () {
          // _searchController.clear();
          // _suggestionResponse == null;
          _hideSuggestions();
          panelScreenState
              ?.pushPage(UserDetailScreen(screenName: e.screenName));
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ItemBuilder.buildAvatar(
                context: context,
                imageUrl: TweetUtil.getBigAvatarUrl(e.profileImageUrlHttps) ??
                    AssetUtil.avatar,
                size: 40,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "@${e.screenName}",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.apply(fontSizeDelta: 2),
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

  @override
  Widget build(BuildContext context) {
    super.build(context);
    double width = MediaQuery.of(context).size.width;
    return PopScope(
      canPop: !_showSuggestion,
      onPopInvokedWithResult: (_, __) {
        if (_showSuggestion) {
          _hideSuggestions();
          if (mounted) setState(() {});
          return;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: ItemBuilder.buildDesktopAppBar(
          context: context,
          showMenu: true,
          showBack: false,
          spacing: 0,
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
                bottomMargin: 18,
                hintFontSizeDelta: 1,
                focusNode: searchFocusNode,
                controller: _searchController,
                background: Colors.grey.withAlpha(40),
                hintText: "搜索",
                onSubmitted: (text) async {
                  perfromSearch(text);
                },
              ),
            ),
          ),
        ),
        body: _buildBody(),
      ),
    );
  }

  _buildBody() {
    switch (_initPhase) {
      case InitPhase.connecting:
        return ItemBuilder.buildLoadingDialog(context,
            background: Colors.transparent);
      case InitPhase.failed:
        return ItemBuilder.buildError(
          context: context,
          onTap: initData,
        );
      case InitPhase.successful:
        return Stack(
          children: [
            _buildTrend(),
            Positioned(
              right: ResponsiveUtil.isLandscape() ? 16 : 12,
              bottom: ResponsiveUtil.isLandscape() ? 16 : 70,
              child: ScrollToHide(
                controller: _scrollToHideController,
                scrollControllers: trendTabDataList.scrollControllerList,
                hideDirection: Axis.vertical,
                child: _buildFloatingButtons(),
              ),
            ),
          ],
        );
      default:
        return Container();
    }
  }

  _buildTrend() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (trendTabDataList.tabList.isNotEmpty)
          ItemBuilder.buildTabBar(
            context,
            _trendTabController,
            trendTabDataList.tabList,
            autoScrollable: false,
            showBorder: true,
            width: MediaQuery.of(context).size.width,
            background: Theme.of(context).canvasColor,
            onTap: (index) {
              if (mounted) setState(() {});
              if (!_trendTabController.indexIsChanging &&
                  index == currentTrendIndex) {
                if (trendTabDataList.getScrollController(index) != null &&
                    trendTabDataList.getScrollController(index)!.offset > 30) {
                  scrollToTop();
                } else {
                  refresh();
                }
              }
            },
            padding: const EdgeInsets.symmetric(horizontal: 10),
          ),
        Expanded(
          child: TabBarView(
            controller: _trendTabController,
            children: trendTabDataList.pageList,
          ),
        ),
      ],
    );
  }

  scrollToTop() {
    trendTabDataList.getRefreshMixin(_trendTabController.index)?.scrollToTop();
    _scrollToHideController.show();
    panelScreenState?.showBottomNavigationBar();
  }

  refresh() async {
    _refreshRotationController.repeat();
    await scrollToTop();
    _refreshRotationController.stop();
    _refreshRotationController.forward();
    trendTabDataList.getRefreshMixin(_trendTabController.index)?.refresh();
  }

  _buildFloatingButtons() {
    return Column(
      children: [
        ItemBuilder.buildShadowIconButton(
          context: context,
          icon: RotationTransition(
            turns:
                Tween(begin: 0.0, end: 1.0).animate(_refreshRotationController),
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
    return trendTabDataList.scrollControllerList;
  }
}
