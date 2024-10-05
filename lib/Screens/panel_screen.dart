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
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Screens/Navigation/bookmark_screen.dart';
import 'package:twitee/Screens/Navigation/friendship_screen.dart';
import 'package:twitee/Screens/Navigation/like_screen.dart';
import 'package:twitee/Screens/Navigation/list_screen.dart';
import 'package:twitee/Screens/Navigation/search_screen.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/Scaffold/my_scaffold.dart';

import '../Utils/app_provider.dart';
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
  final PageController _pageController = PageController();
  List<Widget> pageList = [];

  @override
  void initState() {
    super.initState();
    initPage();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      jumpToPage(appProvider.sidebarChoice.index);
    });
  }

  Future<void> initPage() async {
    UserInfo? info = HiveUtil.getUserInfo();
    if (info == null) {
      pageList = [];
    }
    pageList = [
      HomeScreen(key: homeScreenKey),
      const SearchScreen(),
      const BookmarkScreen(),
      LikeScreen(userId: info!.idStr),
      ListScreen(userId: info.idStr),
      const FriendshipScreen(),
      const BookmarkScreen(),
      const BookmarkScreen(),
    ];
  }

  void jumpToPage(int index) {
    _pageController.jumpToPage(index);
  }

  void openDrawer() {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      backgroundColor: Colors.transparent,
      body: PageView(
        controller: _pageController,
        children: pageList,
      ),
      drawer: _buildDrawer(),
      bottomNavigationBar:
          ResponsiveUtil.isMobile() ? _buildBottomNavigationBar() : null,
    );
  }

  _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const [],
    );
  }

  _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [],
      ),
    );
  }
}
