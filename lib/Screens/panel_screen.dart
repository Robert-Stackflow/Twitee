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
import 'package:twitee/Screens/Navigation/bookmark_screen.dart';
import 'package:twitee/Screens/Navigation/friendship_screen.dart';
import 'package:twitee/Screens/Navigation/like_screen.dart';
import 'package:twitee/Screens/Navigation/list_screen.dart';
import 'package:twitee/Screens/Navigation/search_screen.dart';
import 'package:twitee/Screens/Setting/about_setting_screen.dart';
import 'package:twitee/Screens/Setting/setting_navigation_screen.dart';
import 'package:twitee/Utils/constant.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Scaffold/my_scaffold.dart';
import 'package:twitee/Widgets/Window/window_caption.dart';

import '../Utils/app_provider.dart';
import '../Utils/route_util.dart';
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
    with TickerProviderStateMixin {
  PageController _pageController = PageController();
  List<Widget> _pageList = [];
  bool unlogin = false;
  int _currentIndex = 0;
  GlobalKey<MyScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    initPage();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      jumpToPage(appProvider.sidebarChoice.index);
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
  }

  logout() {
    unlogin = true;
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
      _pageList = [
        HomeScreen(key: homeScreenKey),
        SearchScreen(key: searchScreenKey),
        const BookmarkScreen(),
        LikeScreen(userId: info.idStr),
        ListScreen(userId: info.idStr),
        const FriendshipScreen(),
        const BookmarkScreen(),
        const BookmarkScreen(),
      ];
      jumpToPage(appProvider.sidebarChoice.index);
    }
  }

  void jumpToPage(int index) {
    _currentIndex = index;
    setState(() {});
    if (_pageController.hasClients) {
      _pageController.jumpToPage(index);
    }
  }

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          if (!unlogin)
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _pageList,
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
                      rootContext, const LoginByPasswordScreen());
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
      drawer: _buildDrawer(),
      bottomNavigationBar:
          !ResponsiveUtil.isLandscape() ? _buildBottomNavigationBar() : null,
    );
  }

  _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "首页",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "搜索",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: "收藏",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "喜欢",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "列表",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_outlined),
          label: "好友",
        ),
      ],
      onTap: (index) {
        jumpToPage(index);
      },
    );
  }

  _buildDrawer() {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
          children: [
            ItemBuilder.buildEntryItem(
              context: context,
              topRadius: true,
              title: "设置",
              onTap: () {
                RouteUtil.pushCupertinoRoute(
                    context, const SettingNavigationScreen());
              },
            ),
            ItemBuilder.buildEntryItem(
              context: context,
              bottomRadius: true,
              title: "关于",
              onTap: () {
                RouteUtil.pushCupertinoRoute(
                    context, const AboutSettingScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
