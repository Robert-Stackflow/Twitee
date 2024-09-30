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

import 'dart:ui';

import 'package:context_menus/context_menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:move_to_background/move_to_background.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:twitee/Screens/Setting/about_setting_screen.dart';
import 'package:twitee/Screens/Setting/setting_navigation_screen.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/Custom/marquee_widget.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';

import '../Utils/app_provider.dart';
import '../Utils/asset_util.dart';
import '../Utils/route_util.dart';
import '../Widgets/Hidable/scroll_to_hide.dart';
import '../Widgets/Scaffold/my_scaffold.dart';
import '../Widgets/WaterfallFlow/reorderable_grid.dart';
import '../Widgets/WaterfallFlow/reorderable_grid_view.dart';
import '../Widgets/WaterfallFlow/sliver_waterfall_flow.dart';
import '../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  String appName = "";
  List<Tab> tabList = [];
  String _searchKey = "";
  ScrollController _scrollController = ScrollController();
  final ScrollController _nestScrollController = ScrollController();
  final ScrollToHideController _fabScrollToHideController =
      ScrollToHideController();
  final ScrollToHideController _bottombarScrollToHideController =
      ScrollToHideController();
  final TextEditingController _searchController = TextEditingController();
  final PageController _marqueeController = PageController();
  late AnimationController _animationController;
  final FocusNode _searchFocusNode = FocusNode();
  GridItemsNotifier gridItemsNotifier = GridItemsNotifier();
  final ValueNotifier<bool> _shownSearchbarNotifier = ValueNotifier(false);

  bool get hasSearchFocus => _searchFocusNode.hasFocus;

  @override
  void initState() {
    super.initState();
    initAppName();
    _searchController.addListener(() {
      performSearch(_searchController.text);
    });
    _animationController = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 300),
    );
  }

  initAppName() {
    PackageInfo.fromPlatform().then((info) {
      setState(() {
        appName = info.appName;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      key: homeScaffoldKey,
      resizeToAvoidBottomInset: false,
      body: ResponsiveUtil.isLandscape()
          ? _buildMainContent()
          : PopScope(
              canPop: false,
              onPopInvokedWithResult: (_, __) {
                if (mounted && _shownSearchbarNotifier.value) {
                  changeSearchBar(false);
                } else {
                  MoveToBackground.moveTaskToBack();
                }
              },
              child: _buildMobileBody(),
            ),
      bottomNavigationBar:
          ResponsiveUtil.isDesktop() ? null : _buildMobileBottombar(),
      floatingActionButton: ResponsiveUtil.isDesktop() ? null : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      extendBody: true,
    );
  }

  _buildMobileBody() {
    return NestedScrollView(
      controller: _nestScrollController,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          _buildMobileAppbar(),
        ];
      },
      body: Builder(
        builder: (context) {
          _scrollController = PrimaryScrollController.of(context);
          return _buildMainContent();
        },
      ),
    );
  }

  changeSearchBar(bool shown) {
    Future.delayed(const Duration(milliseconds: 200), () {
      _shownSearchbarNotifier.value = shown;
    });
    _marqueeController.animateToPage(shown ? 1 : 0,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    if (shown) {
      _searchFocusNode.requestFocus();
      _animationController.reverse();
    } else {
      _searchController.clear();
      _searchFocusNode.unfocus();
      _animationController.forward();
    }
  }

  getActions(AppProvider provider) {
    return [
      ItemBuilder.buildPopupMenuButton(
        context: context,
        icon: Icon(Icons.more_vert_rounded,
            color: Theme.of(context).iconTheme.color),
        itemBuilder: (context) {
          return ItemBuilder.buildPopupMenuItems(
            context,
            GenericContextMenu(
              buttonConfigs: [
                ContextMenuButtonConfig(
                  S.current.setting,
                  icon: AssetUtil.loadDouble(
                    context,
                    AssetUtil.settingLightIcon,
                    AssetUtil.settingDarkIcon,
                  ),
                  onPressed: () {
                    RouteUtil.pushCupertinoRoute(
                        context, const SettingNavigationScreen());
                  },
                ),
                ContextMenuButtonConfig(
                  S.current.about,
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/logo-transparent.png',
                      height: 24,
                      width: 24,
                      fit: BoxFit.contain,
                    ),
                  ),
                  onPressed: () {
                    RouteUtil.pushCupertinoRoute(
                        context, const AboutSettingScreen());
                  },
                ),
              ],
            ),
          );
        },
      ),
      const SizedBox(width: 5),
    ];
  }

  _buildMobileAppbar() {
    return Consumer<AppProvider>(
      builder: (context, provider, child) => ValueListenableBuilder(
        valueListenable: _shownSearchbarNotifier,
        builder: (context, shownSearchbar, child) =>
            ItemBuilder.buildSliverAppBar(
          context: context,
          useBackdropFilter: provider.enableFrostedGlassEffect,
          floating: provider.hideAppbarWhenScrolling,
          pinned: !provider.hideAppbarWhenScrolling,
          backgroundColor: Theme.of(context)
              .scaffoldBackgroundColor
              .withOpacity(provider.enableFrostedGlassEffect ? 0.2 : 1),
          title: SizedBox(
            height: kToolbarHeight,
            child: MarqueeWidget(
              count: 2,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        if (!_shownSearchbarNotifier.value) {
                          changeSearchBar(true);
                        }
                      },
                      child: Text(
                        appName,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(fontWeightDelta: 2),
                      ),
                    ),
                  );
                } else {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(right: 24),
                      child: Row(
                        children: [
                          ItemBuilder.buildIconButton(
                            context: context,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            onTap: () {
                              changeSearchBar(false);
                            },
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  );
                }
              },
              autoPlay: false,
              controller: _marqueeController,
            ),
          ),
          expandedHeight: kToolbarHeight,
          collapsedHeight: kToolbarHeight,
          actions: _shownSearchbarNotifier.value ? [] : getActions(provider),
        ),
      ),
    );
  }

  _buildMobileBottombar({double verticalPadding = 10}) {
    double height = kToolbarHeight +
        verticalPadding * 2 +
        (ResponsiveUtil.isLandscapeTablet() ? 24 : 0);
    return Selector<AppProvider, bool>(
      selector: (context, provider) => provider.hideBottombarWhenScrolling,
      builder: (context, hideBottombarWhenScrolling, child) =>
          Selector<AppProvider, bool>(
        selector: (context, provider) => provider.enableFrostedGlassEffect,
        builder: (context, enableFrostedGlassEffect, child) {
          var container = Container(
            alignment: Alignment.centerLeft,
            height: height,
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .canvasColor
                  .withOpacity(enableFrostedGlassEffect ? 0.2 : 1),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  blurRadius: 30,
                  spreadRadius: 1,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: 5 + verticalPadding)
                .copyWith(right: 70),
            child: Container(),
          );
          return ScrollToHide(
            enabled: hideBottombarWhenScrolling,
            scrollController: _scrollController,
            controller: _bottombarScrollToHideController,
            height: height,
            duration: const Duration(milliseconds: 300),
            hideDirection: Axis.vertical,
            child: ResponsiveUtil.isLandscapeTablet()
                ? IgnorePointer(
                    child: Container(
                      height: height,
                      decoration: const BoxDecoration(color: Color(0x00ffffff)),
                    ),
                  )
                : enableFrostedGlassEffect
                    ? ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: container,
                        ),
                      )
                    : container,
          );
        },
      ),
    );
  }

  _buildMainContent() {
    Widget gridView = Selector<AppProvider, bool>(
      selector: (context, provider) => provider.hideBottombarWhenScrolling,
      builder: (context, hideBottombarWhenScrolling, child) =>
          ReorderableGridView.builder(
        gridItemsNotifier: gridItemsNotifier,
        autoScroll: true,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
            bottom: hideBottombarWhenScrolling ? 10 : 85),
        gridDelegate: const SliverWaterfallFlowDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        onReorder: (_, __) {},
        cacheExtent: 9999,
        // itemDragEnable: (index) {
        //   if (tokens[index].pinnedInt == 1) {
        //     return false;
        //   }
        //   return true;
        // },
        onReorderStart: (_) {
          _fabScrollToHideController.hide();
          _bottombarScrollToHideController.hide();
        },
        onReorderEnd: (_, __) {
          _fabScrollToHideController.show();
          _bottombarScrollToHideController.show();
        },
        proxyDecorator: (Widget child, int index, Animation<double> animation) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(rootContext).shadowColor,
                  offset: const Offset(0, 4),
                  blurRadius: 10,
                  spreadRadius: 1,
                ).scale(2)
              ],
            ),
            child: child,
          );
        },
        itemCount: 0,
        itemBuilder: (context, index) {
          return Container();
        },
      ),
    );
    Widget body = gridView;
    return SlidableAutoCloseBehavior(child: body);
  }

  unfocusSearch() {
    _searchFocusNode.unfocus();
  }

  performSearch(String searchKey) {
    _searchKey = searchKey;
  }
}
