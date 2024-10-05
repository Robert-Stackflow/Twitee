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

import 'package:context_menus/context_menus.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:twitee/Api/search_api.dart';
import 'package:twitee/Screens/Navigation/refresh_interface.dart';
import 'package:twitee/Screens/Navigation/search_result_flow_screen.dart';
import 'package:twitee/Screens/Navigation/search_tab_screen.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/Window/window_caption.dart';

import '../../Models/search_suggestion.dart';
import '../../Models/search_timeline_tab_item.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/Custom/custom_tab_indicator.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/item_builder.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  static const String routeName = "/navigtion/search";

  @override
  State<SearchScreen> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  late TabController _trendTabController;
  List<Tab> _trendTabList = [];
  final PageController _trendPageController = PageController();
  List<Widget> _trendPageList = [];
  List<GlobalKey> _trendKeyList = [];
  List<SearchTimelineTabItem> tabItems = [];

  late TabController _resultTabController;
  List<Tab> _resultTabList = [];
  final PageController _resultPageController = PageController();
  List<Widget> _resultPageList = [];
  List<GlobalKey> _resultKeyList = [];
  final List<String> _resultTabTitleList = ["热门", "最新", "用户", "媒体", "列表"];

  OverlayEntry? _overlayEntry;

  late AnimationController _refreshRotationController;

  final ScrollController _scrollController = ScrollController();

  FocusNode searchFocusNode = FocusNode();

  final TextEditingController _searchController = TextEditingController();
  final LayerLink _layerLink = LayerLink();

  SearchSuggestionResponse? response;

  double searchBarWidth = 360;

  bool _showResult = false;

  initTrendTab() {
    _trendKeyList = [];
    _trendTabList = [];
    _trendPageList = [];
    for (int i = 0; i < tabItems.length; i++) {
      _trendKeyList.add(GlobalKey());
      _trendTabList.add(_buildTab(tabItems[i].labelText!));
      _trendPageList.add(SearchTabScreen(
        key: _trendKeyList[i],
        tabItem: tabItems[i],
      ));
    }
    _trendTabController =
        TabController(length: _trendTabList.length, vsync: this);
    setState(() {});
  }

  initResultTab() {
    _resultKeyList = [];
    _resultTabList = [];
    _resultPageList = [];
    for (int i = 0; i < _resultTabTitleList.length; i++) {
      _resultKeyList.add(GlobalKey());
      _resultTabList.add(_buildTab(_resultTabTitleList[i]));
    }
    _resultTabController =
        TabController(length: _resultTabList.length, vsync: this);
    setState(() {});
  }

  refreshResultPageList() {
    _resultPageList = [
      SearchResultFlowScreen(key: _resultKeyList[0],
          type: SearchTimelineType.Top, query: _searchController.text),
      SearchResultFlowScreen(key: _resultKeyList[1],
          type: SearchTimelineType.Latest, query: _searchController.text),
      SearchResultFlowScreen(key: _resultKeyList[2],
          type: SearchTimelineType.People, query: _searchController.text),
      SearchResultFlowScreen(key: _resultKeyList[3],
          type: SearchTimelineType.Media, query: _searchController.text),
      SearchResultFlowScreen(key: _resultKeyList[4],
          type: SearchTimelineType.Lists, query: _searchController.text),
    ];
    setState(() {});
  }

  perfromSearch(String key) {
    if (key.isEmpty) return;
    _searchController.text = key;
    _hideSuggestions();
    _showResult = true;
    refreshResultPageList();
    _resultTabController.animateTo(0);
  }

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _trendTabController = TabController(length: 0, vsync: this);
    _resultTabController = TabController(length: 0, vsync: this);
    initResultTab();
    initTrendTab();
    initData();
    _searchController.addListener(() {
      EasyDebounce.debounce(
          'search-suggestion-debouncer', const Duration(milliseconds: 500), () {
        if (_searchController.text.isNotEmpty) {
          if (!_showResult) _fetchSuggestions();
        } else {
          _hideSuggestions();
        }
      });
    });
  }

  _fetchSuggestions() async {
    var res = await SearchApi.getSuggestion(query: _searchController.text);
    if (res.success) {
      setState(() {
        response = res.data;
      });
      _showSuggestions();
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
    var res = await SearchApi.getExplorePageTimelines();
    tabItems = res.data;
    initTrendTab();
  }

  void _showSuggestions() {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
    }
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideSuggestions() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    double width = searchBarWidth;
    double height = 400;
    return OverlayEntry(
      builder: (context) => Positioned(
        width: width,
        height: height,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: true,
          offset: const Offset(0.0, 48.0),
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
            ),
            child: ListView(
              children: [
                if (response != null)
                  ...response!.topics.map((e) => _buildTopicTile(e)),
                if (response != null)
                  ...response!.users.map((e) => _buildUserTile(e)),
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
          _searchController.clear();
          _hideSuggestions();
          IToast.showTop("前往查看用户：${e.name}");
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ItemBuilder.buildAvatar(
                context: context,
                imageUrl: e.profileImageUrlHttps,
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
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Stack(
          children: [
            if (ResponsiveUtil.isDesktop()) const WindowMoveHandle(),
            Container(
              margin: const EdgeInsets.all(10),
              constraints: BoxConstraints(
                  maxWidth: searchBarWidth,
                  minWidth: searchBarWidth,
                  maxHeight: 56),
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
          ],
        ),
      ),
      body: Stack(
        children: [
          _showResult ? _buildResult() : _buildTrend(),
          Positioned(
            right: 16,
            bottom: 16,
            child: ScrollToHide(
              scrollController: _scrollController,
              hideDirection: Axis.vertical,
              child: _buildFloatingButtons(),
            ),
          ),
        ],
      ),
    );
  }

  _buildTrend() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTabBar(_trendTabController, _trendTabList, (index) {
          _trendPageController.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        }, 56, const EdgeInsets.symmetric(horizontal: 10)),
        Expanded(
          child: PageView(
            controller: _trendPageController,
            children: _trendPageList,
            onPageChanged: (index) {
              _trendTabController.animateTo(index);
            },
          ),
        ),
      ],
    );
  }

  _buildResult() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTabBar(_resultTabController, _resultTabList, (index) {
          _resultPageController.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        }, 56, const EdgeInsets.symmetric(horizontal: 10)),
        Expanded(
          child: PageView(
            controller: _resultPageController,
            children: _resultPageList,
            onPageChanged: (index) {
              _resultTabController.animateTo(index);
            },
          ),
        ),
      ],
    );
  }

  _buildTabBar(
      TabController controller, List<Tab> tabList, Function(int index) onTap,
      [double? height, EdgeInsetsGeometry? padding]) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height ?? 56),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: TabBar(
          controller: controller,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          tabs: tabList,
          labelPadding: const EdgeInsets.symmetric(horizontal: 12),
          isScrollable: true,
          dividerHeight: 0,
          padding: padding,
          tabAlignment: TabAlignment.start,
          physics: const ClampingScrollPhysics(),
          labelStyle: Theme.of(context)
              .textTheme
              .titleMedium
              ?.apply(fontWeightDelta: 2),
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .titleMedium
              ?.apply(color: Colors.grey),
          indicator:
              CustomTabIndicator(borderColor: Theme.of(context).primaryColor),
          onTap: onTap,
        ),
      ),
    );
  }

  _buildTab(String str) {
    return Tab(
      child: ContextMenuRegion(
        behavior: ResponsiveUtil.isDesktop()
            ? const [ContextMenuShowBehavior.secondaryTap]
            : const [],
        contextMenu: Container(),
        child: GestureDetector(
          child: Text(str),
        ),
      ),
    );
  }

  scrollToTop() {
    (_trendKeyList[_trendTabController.index].currentState as RefreshMixin?)
        ?.scrollToTop();
  }

  refresh() async {
    _refreshRotationController.repeat();
    await scrollToTop();
    _refreshRotationController.stop();
    _refreshRotationController.forward();
    if (_showResult) {
      (_resultKeyList[_trendTabController.index].currentState as RefreshMixin?)
          ?.refresh();
    } else {
      (_trendKeyList[_trendTabController.index].currentState as RefreshMixin?)
          ?.refresh();
    }
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
}
