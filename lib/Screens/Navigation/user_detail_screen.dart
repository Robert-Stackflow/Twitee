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
import 'package:flutter/material.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Screens/Navigation/friendship_screen.dart';
import 'package:twitee/Screens/Navigation/timeline_flow_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';

import '../../Api/user_api.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/tweet_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Custom/custom_tab_indicator.dart';
import '../../Widgets/Custom/sliver_appbar_delegate.dart';
import '../../Widgets/Dialog/dialog_builder.dart';

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key, required this.screenName});

  final String screenName;

  static const String routeName = "/userDetail";

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;
  UserResponse? response;

  User? get user => response?.data.user.result as User;

  UserLegacy? get userLegacy => user?.legacy;
  bool _inited = false;

  late TabController _tabController;
  List<Tab> tabList = [];
  final PageController _pageController = PageController();
  List<Widget> pageList = [];
  List<GlobalKey> keyList = [];

  final ScrollController _scrollController = ScrollController();

  initTab() {
    keyList = List.generate(2, (_) => GlobalKey());
    tabList = [
      _buildTab("为你推荐"),
      _buildTab("正在关注"),
    ];
    pageList = [
      TimelineFlowScreen(key: keyList[0], isLatest: false),
      TimelineFlowScreen(
        key: keyList[1],
      ),
    ];
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  fetchUserInfo() async {
    var res = await UserApi.getUserInfo(widget.screenName);
    if (res.success) {
      response = res.data;
    } else {
      IToast.showTop("获取用户信息失败：${res.message}");
    }
    _inited = true;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchUserInfo();
    _tabController = TabController(length: 0, vsync: this);
    initTab();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
          context: context, title: "个人主页", showBack: true),
      body: _inited
          ? _buildBody()
          : ItemBuilder.buildLoadingDialog(context,
              text: "加载中...", background: Colors.transparent),
    );
  }

  _buildBody() {
    return response == null || userLegacy == null
        ? _buildError()
        : _buildMainBody();
  }

  _buildMainBody() {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              _buildBackgroundBanner(),
              _buildUserInfo(),
            ],
          ),
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverAppBarDelegate(
            tabBar: _buildTabBar(),
            radius: 0,
          ),
        ),
        SliverFillRemaining(
          child: _buildPageView(),
        ),
      ],
    );
  }

  _buildPageView() {
    return PageView(
      controller: _pageController,
      children: pageList,
      onPageChanged: (index) {
        _tabController.animateTo(index);
      },
    );
  }

  _buildTabBar([double? height, EdgeInsetsGeometry? padding]) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height ?? 56),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 1,
            ),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: TabBar(
            controller: _tabController,
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
            onTap: (index) {
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            },
          ),
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

  _buildBackgroundBanner() {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: ItemBuilder.buildHeroCachedImage(
        imageUrl: userLegacy?.profileBannerUrl ?? "",
        context: context,
        fit: BoxFit.cover,
        showLoading: false,
        isOrigin: false,
      ),
    );
  }

  _buildUserInfo() {
    var titleMedium = Theme.of(context).textTheme.titleMedium;
    String screenName = userLegacy?.screenName ?? userLegacy?.name ?? "";
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Theme.of(context).canvasColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              ItemBuilder.buildAvatar(
                context: context,
                imageUrl: userLegacy!.profileImageUrlHttps ?? AssetUtil.avatar,
                size: 84,
                showDetail: true,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userLegacy!.name,
                    style: Theme.of(context).textTheme.titleLarge?.apply(fontSizeDelta: 4),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "@${userLegacy!.screenName}",
                    style: Theme.of(context).textTheme.bodySmall?.apply(fontSizeDelta: 2),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "${Utils.formatDateString(userLegacy!.createdAt ?? "")} 加入",
                    style: Theme.of(context).textTheme.bodySmall?.apply(fontSizeDelta: 2),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              const Spacer(),
              ItemBuilder.buildRoundButton(
                context,
                text: userLegacy!.isFriend
                    ? "互相关注"
                    : userLegacy!.following ?? false
                        ? "正在关注"
                        : "关注",
                background: userLegacy!.isFriend
                    ? Colors.green
                    : userLegacy!.following ?? false
                        ? null
                        : Theme.of(context).primaryColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                onTap: () async {
                  if (userLegacy!.following ?? false) {
                    DialogBuilder.showConfirmDialog(context,
                        title: "取消关注 @$screenName？",
                        message: "你将无法在已关注中看到 @$screenName 的帖子或通知。",
                        onTapConfirm: () async {
                      var res = await UserApi.unfollow(userId: screenName);
                      if (res.success) {
                        userLegacy!.following = false;
                        setState(() {});
                        IToast.showTop("已取消关注@$screenName");
                      } else {
                        IToast.showTop("取消关注@$screenName失败");
                      }
                    });
                  } else {
                    var res = await UserApi.follow(userId: screenName);
                    if (res.success) {
                      userLegacy!.following = true;
                      setState(() {});
                      IToast.showTop("已关注@$screenName");
                    } else {
                      IToast.showTop("关注@$screenName失败");
                    }
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _buildCountItem(
                title: "正在关注",
                value: "${userLegacy!.friendsCount}",
                onTap: () {
                  panelScreenState
                      ?.pushPage(FriendshipScreen(userId: user!.restId));
                },
              ),
              const SizedBox(width: 20),
              _buildCountItem(
                title: "关注者",
                value: "${userLegacy!.followersCount}",
                onTap: () {
                  panelScreenState
                      ?.pushPage(FriendshipScreen(userId: user!.restId));
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          ItemBuilder.buildHtmlWidget(
            context,
            _processDescription(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  _buildCountItem({
    required String title,
    required String value,
    Function()? onTap,
  }) {
    return ItemBuilder.buildClickItem(
      clickable: onTap != null,
      GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Text(
              value,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.apply(fontWeightDelta: 2),
            ),
            const SizedBox(width: 4),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }

  _buildError() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "加载失败",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          ItemBuilder.buildRoundButton(context, text: "重试", onTap: () {
            fetchUserInfo();
          }),
        ],
      ),
    );
  }

  String _processDescription() {
    String fullText = userLegacy!.description;
    Map map = userLegacy!.entities;
    if (map.containsKey("description")) {
      Entities entities = Entities.fromJson(map["description"]);
      return TweetUtil.processWithEntities(fullText, entities,
          replaceNewline: false);
    }
    return fullText;
  }
}
