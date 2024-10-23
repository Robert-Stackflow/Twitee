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
import 'package:provider/provider.dart';
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Screens/Detail/list_manage_screen.dart';
import 'package:twitee/Screens/Detail/user_detail_screen.dart';
import 'package:twitee/Screens/Flow/user_flow_screen.dart';
import 'package:twitee/Screens/Navigation/bookmark_screen.dart';
import 'package:twitee/Screens/Detail/friendship_screen.dart';
import 'package:twitee/Screens/Navigation/community_screen.dart';
import 'package:twitee/Screens/Navigation/like_screen.dart';
import 'package:twitee/Screens/Navigation/list_screen.dart';
import 'package:twitee/Screens/Navigation/search_screen.dart';
import 'package:twitee/Screens/Setting/about_setting_screen.dart';
import 'package:twitee/Screens/Setting/setting_navigation_screen.dart';
import 'package:twitee/Screens/main_screen.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/constant.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Widgets/Hidable/scroll_to_hide.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Scaffold/my_scaffold.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';
import 'package:twitee/Widgets/Window/window_caption.dart';

import '../Api/user_api.dart';
import '../Openapi/models/user.dart';
import '../Openapi/models/user_response.dart';
import '../Utils/app_provider.dart';
import '../Utils/enums.dart';
import '../Utils/lottie_util.dart';
import '../Utils/route_util.dart';
import '../Utils/user_util.dart';
import '../Utils/utils.dart';
import '../Widgets/Dialog/dialog_builder.dart';
import '../Widgets/Scaffold/my_bottom_navigation_bar.dart';
import 'Login/login_screen.dart';
import 'Navigation/home_screen.dart';

class PanelScreen extends StatefulWidget {
  const PanelScreen({
    super.key,
  });

  static const String routeName = "/panel";

  @override
  State<PanelScreen> createState() => PanelScreenState();
}

class PanelScreenState extends State<PanelScreen>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin,
        ScrollToHideMixin {
  PageController _pageController = PageController();
  List<Widget> _pageList = [];
  List<GlobalKey> _keyList = [];
  bool unlogin = false;
  int _currentIndex = 0;
  GlobalKey<MyScaffoldState> scaffoldKey = GlobalKey();
  late AnimationController darkModeController;
  Widget? darkModeWidget;
  User? user;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();

  @override
  void initState() {
    super.initState();
    darkModeController = AnimationController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      initPage();
      darkModeWidget = LottieUtil.load(
        LottieUtil.sunLight,
        size: 25,
        autoForward: !Utils.isDark(context),
        controller: darkModeController,
      );
    });
    fetchUserInfo();
  }

  popAll() {
    while (panelNavigatorState?.canPop() ?? false) {
      panelNavigatorState?.pop();
    }
    appProvider.showNavigator = false;
    _pageController =
        PageController(initialPage: appProvider.sidebarChoice.index);
  }

  pushPage(Widget page) {
    if (ResponsiveUtil.isMobile()) {
      RouteUtil.pushCupertinoRoute(rootContext, page);
    } else {
      appProvider.showNavigator = true;
      panelNavigatorState?.push(RouteUtil.getFadeRoute(page));
    }
  }

  popPage() {
    if (ResponsiveUtil.isLandscape()) {
      if (panelNavigatorState?.canPop() ?? false) {
        panelNavigatorState?.pop();
        if (!(panelNavigatorState?.canPop() ?? false)) {
          appProvider.showNavigator = false;
        }
      } else {
        appProvider.showNavigator = false;
      }
      _pageController =
          PageController(initialPage: appProvider.sidebarChoice.index);
    } else {
      Navigator.pop(rootContext);
    }
  }

  fetchUserInfo() async {
    var userInfo = HiveUtil.getUserInfo();
    if (userInfo == null) {
      logout();
      return;
    }
    var res = await UserApi.getUserInfo(userInfo.screenName);
    if (res.success) {
      UserResponse response = res.data;
      user = response.data.user.result as User;
      setState(() {});
    }
  }

  logout() {
    unlogin = true;
    popAll();
    _pageList = [];
    setState(() {});
  }

  login() {
    unlogin = false;
    initPage();
    setState(() {});
  }

  Future<void> initPage() async {
    UserInfo? info = HiveUtil.getUserInfo();
    if (info == null) {
      _pageList = [];
    } else {
      _keyList = [
        homeScreenKey,
        searchScreenKey,
        GlobalKey(),
        GlobalKey(),
        listScreenKey,
        GlobalKey(),
      ];
      _pageList = [
        HomeScreen(key: homeScreenKey),
        SearchScreen(key: searchScreenKey),
        BookmarkScreen(key: _keyList[2]),
        LikeScreen(key: _keyList[3], userId: info.idStr),
        ListScreen(key: _keyList[4], userId: info.idStr),
        CommunityScreen(key: _keyList[5]),
      ];
      jumpToPage(appProvider.sidebarChoice.index);
    }
  }

  void jumpToPage(int index) {
    if (_currentIndex == index) {
      BottomNavgationMixin? mixin =
          _keyList[_currentIndex].currentState is BottomNavgationMixin?
              ? _keyList[_currentIndex].currentState as BottomNavgationMixin?
              : null;
      mixin?.onTapBottomNavigation();
    } else {
      _currentIndex = index;
      if (mounted) setState(() {});
      if (_pageController.hasClients) {
        _pageController.jumpToPage(index);
      }
    }
  }

  void openDrawer() {
    fetchUserInfo();
    scaffoldKey.currentState?.openDrawer();
  }

  void refreshScrollControllers() {
    setState(() {});
  }

  void showBottomNavigationBar() {
    _scrollToHideController.show();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MyScaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          if (!unlogin)
            GestureDetector(
              onHorizontalDragEnd: (details) {
                if (!ResponsiveUtil.isLandscape()) {
                  if (details.primaryVelocity != null &&
                      details.primaryVelocity! > 500) {
                    openDrawer();
                  }
                }
              },
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: _pageList,
              ),
            ),
          if (unlogin && ResponsiveUtil.isDesktop()) const WindowMoveHandle(),
          if (unlogin)
            Center(
              child: ItemBuilder.buildRoundButton(
                context,
                text: "前往登录",
                background: Theme.of(context).primaryColor,
                onTap: () {
                  RouteUtil.pushDialogRoute(
                    rootContext,
                    LoginByPasswordScreen(
                        jumpToMain: !ResponsiveUtil.isLandscape()),
                    popAll: true,
                  );
                },
              ),
            ),
          Selector<AppProvider, bool>(
            selector: (context, provider) => provider.showNavigator,
            builder: (context, value, child) => SizedBox(
              width: value ? double.infinity : 0,
              height: value ? double.infinity : 0,
              child: Navigator(
                key: panelNavigatorKey,
                onGenerateRoute: (settings) {
                  return MaterialPageRoute(builder: (context) => emptyWidget);
                },
              ),
            ),
          ),
        ],
      ),
      extendBody: true,
      drawer: _buildDrawer(),
      bottomNavigationBar: !ResponsiveUtil.isLandscape() && !unlogin
          ? _buildBottomNavigationBar()
          : null,
    );
  }

  _buildBottomNavigationBar() {
    return ScrollToHide(
      controller: _scrollToHideController,
      scrollControllers: getScrollControllers(),
      hideDirection: AxisDirection.down,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 1,
            ),
          ),
        ),
        child: MyBottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          showSelectedLabels: false,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined, size: 28),
              activeIcon: Icon(Icons.explore_rounded, size: 28),
              label: "首页",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded, size: 28),
              activeIcon: Icon(Icons.manage_search_rounded, size: 28),
              label: "搜索",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_rounded, size: 28),
              activeIcon: Icon(Icons.bookmark_rounded, size: 28),
              label: "收藏",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded, size: 28),
              activeIcon: Icon(Icons.favorite_rounded, size: 28),
              label: "喜欢",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.featured_play_list_outlined, size: 28),
              activeIcon: Icon(Icons.featured_play_list_rounded, size: 28),
              label: "列表",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined, size: 28),
              activeIcon: Icon(Icons.people_rounded, size: 28),
              label: "社群",
            ),
          ],
          onTap: (index) {
            appProvider.sidebarChoice = SideBarChoice.fromInt(index);
          },
          onDoubleTap: (index) {
            appProvider.sidebarChoice = SideBarChoice.fromInt(index);
          },
        ),
      ),
    );
  }

  _buildDrawer() {
    UserInfo? info = HiveUtil.getUserInfo();
    String avatarUrl = (Utils.isEmpty(info?.profileImageUrlHttps)
            ? info?.profileImageUrlHttps
            : info?.profileImageUrl) ??
        AssetUtil.avatar;
    avatarUrl = TweetUtil.getBigAvatarUrl(avatarUrl) ?? avatarUrl;
    return Drawer(
      backgroundColor: Theme.of(context).canvasColor,
      width: MediaQuery.sizeOf(context).width * 0.85,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(vertical: 20),
              children: [
                info == null
                    ? Container()
                    : Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ItemBuilder.buildAvatar(
                                  context: context,
                                  imageUrl: avatarUrl,
                                  size: 64,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        info.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        "@${info.screenName}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.apply(fontSizeDelta: 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              // spacing: 20,
                              // runSpacing: 5,
                              children: [
                                ItemBuilder.buildCountItem(
                                  context,
                                  title: "正在关注",
                                  value: user != null
                                      ? user!.legacy.friendsCount ?? 0
                                      : 0,
                                  subTitle: user != null ? null : "-",
                                  onTap: () {
                                    panelScreenState?.pushPage(
                                      FriendshipScreen(
                                          userId: info.idStr,
                                          initType: UserFlowType.following),
                                    );
                                  },
                                ),
                                const SizedBox(width: 20),
                                ItemBuilder.buildCountItem(
                                  context,
                                  title: "关注者",
                                  value: user != null
                                      ? user!.legacy.followersCount ?? 0
                                      : 0,
                                  subTitle: user != null ? null : "-",
                                  onTap: () {
                                    panelScreenState?.pushPage(
                                      FriendshipScreen(
                                          userId: info.idStr,
                                          initType: UserFlowType.follower),
                                    );
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                const SizedBox(height: 12),
                ItemBuilder.buildDivider(context, horizontal: 24, vertical: 10),
                ItemBuilder.buildListTile(
                  context: context,
                  title: "个人主页",
                  leading: Icons.photo_filter_rounded,
                  onTap: () {
                    panelScreenState?.pushPage(
                      UserDetailScreen(
                        screenName: info!.screenName,
                      ),
                    );
                  },
                ),
                ItemBuilder.buildListTile(
                  context: context,
                  title: "我的列表",
                  leading: Icons.featured_play_list_outlined,
                  onTap: () {
                    panelScreenState?.pushPage(
                      ListManageScreen(userId: info!.idStr),
                    );
                  },
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  ItemBuilder.buildIconButton(
                    context: context,
                    padding: const EdgeInsets.all(12),
                    icon: const Icon(Icons.exit_to_app),
                    onTap: () {
                      DialogBuilder.showConfirmDialog(
                        context,
                        title: "退出登录",
                        message: "是否退出登录？",
                        onTapConfirm: () async {
                          await UserUtil.logout();
                        },
                      );
                    },
                  ),
                  const SizedBox(width: 4),
                  ItemBuilder.buildIconButton(
                    context: context,
                    icon: const Icon(Icons.token_outlined),
                    padding: const EdgeInsets.all(12),
                    onTap: () {
                      RouteUtil.pushCupertinoRoute(
                          context, const SettingNavigationScreen());
                    },
                  ),
                  const SizedBox(width: 4),
                  ItemBuilder.buildIconButton(
                    context: context,
                    icon: const Icon(Icons.help_outline_rounded),
                    padding: const EdgeInsets.all(12),
                    onTap: () {
                      RouteUtil.pushCupertinoRoute(
                          context, const AboutSettingScreen());
                    },
                  ),
                  ItemBuilder.buildDynamicIconButton(
                    context: context,
                    icon: darkModeWidget ?? emptyWidget,
                    onTap: changeMode,
                    padding: const EdgeInsets.all(12),
                    onChangemode: (context, themeMode, child) {
                      if (darkModeController.duration != null) {
                        if (themeMode == ActiveThemeMode.light) {
                          darkModeController.forward();
                        } else if (themeMode == ActiveThemeMode.dark) {
                          darkModeController.reverse();
                        } else {
                          if (Utils.isDark(context)) {
                            darkModeController.reverse();
                          } else {
                            darkModeController.forward();
                          }
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  changeMode() {
    if (Utils.isDark(context)) {
      appProvider.themeMode = ActiveThemeMode.light;
      darkModeController.forward();
    } else {
      appProvider.themeMode = ActiveThemeMode.dark;
      darkModeController.reverse();
    }
  }

  @override
  List<ScrollController> getScrollControllers() {
    List<ScrollController> res = [];
    for (var page in _pageList) {
      var state = _keyList[_pageList.indexOf(page)].currentState;
      if (state is ScrollToHideMixin) {
        res.addAll((state as ScrollToHideMixin).getScrollControllers());
      }
    }
    return res;
  }

  @override
  bool get wantKeepAlive => true;
}
