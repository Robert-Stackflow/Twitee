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
import 'package:twitee/Screens/Flow/user_media_flow_screen.dart';
import 'package:twitee/Screens/Flow/user_tweet_flow_screen.dart';
import 'package:twitee/Screens/Navigation/friendship_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/enums.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';

import '../../Api/user_api.dart';
import '../../Models/tab_item_data.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/uri_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Custom/sliver_appbar_delegate.dart';
import '../../Widgets/Dialog/dialog_builder.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../Flow/user_flow_screen.dart';

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
  InitPhase _initPhase = InitPhase.haveNotConnected;

  late TabController _tabController;
  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();
  TabItemDataList tabDataList = TabItemDataList([]);

  int get currentIndex => _tabController.index;

  List<UserLegacy> friendList = [];

  ScrollController? primaryController;

  initTab() {
    primaryController = PrimaryScrollController.of(context);
    tabDataList.addAll([
      TabItemData.build(
        "帖子",
        (key2, scrollController2) => UserTweetFlowScreen(
          key: key2,
          userId: user!.restId!,
          nested: true,
          scrollController: primaryController,
        ),
      ),
      TabItemData.build(
        "回复",
        (key2, scrollController2) => UserTweetFlowScreen(
          key: key2,
          userId: user!.restId!,
          nested: true,
          type: UserTweetFlowType.TweetsAndReplies,
          scrollController: primaryController,
        ),
      ),
      TabItemData.build(
        "媒体",
        (key2, scrollController2) => UserMediaFlowScreen(
          key: key2,
          userId: user!.restId!,
          nested: true,
          scrollController: primaryController,
        ),
      ),
    ]);
    _tabController = TabController(length: tabDataList.length, vsync: this);
  }

  fetchUserInfo() async {
    _initPhase = InitPhase.connecting;
    var res = await UserApi.getUserInfo(widget.screenName);
    if (res.success) {
      response = res.data;
      fetchFriendList();
      initTab();
      _initPhase = InitPhase.successful;
    } else {
      IToast.showTop("获取用户信息失败：${res.message}");
      _initPhase = InitPhase.failed;
    }
    if (response == null || userLegacy == null) _initPhase = InitPhase.failed;
    if (mounted) setState(() {});
  }

  fetchFriendList() async {
    var res = await UserApi.getFriendList(userId: user!.restId!);
    if (res.success) {
      friendList = res.data;
    } else {
      IToast.showTop("获取好友列表失败：${res.message}");
    }
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 0, vsync: this);
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fetchUserInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
          context: context, title: "个人主页", showBack: true),
      body: _buildBody(),
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
          onTap: fetchUserInfo,
        );
      case InitPhase.successful:
        return _buildMainBody();
      default:
        return Container();
    }
  }

  _buildMainBody() {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
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
            tabBar: ItemBuilder.buildTabBar(
              context,
              _tabController,
              tabDataList.tabList,
              onTap: onTapTab,
              showBorder: true,
              padding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            radius: 0,
          ),
        ),
      ],
      body: Stack(
        children: [
          _buildTabBarView(),
          Positioned(
            right: 16,
            bottom: 16,
            child: ScrollToHide(
              controller: _scrollToHideController,
              scrollControllers: [
                primaryController ?? ScrollController(),
                ...tabDataList.scrollControllerList
              ],
              hideDirection: Axis.vertical,
              child: _buildFloatingButtons(),
            ),
          ),
        ],
      ),
    );
  }

  _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: tabDataList.pageList,
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

  _buildMoreContextMenuButtons() {
    String screenName = userLegacy?.screenName ?? "";
    String url = userLegacy?.url ?? "https://twitter.com/$screenName";
    return GenericContextMenu(
      buttonConfigs: [
        ContextMenuButtonConfig(
          "${userLegacy?.blocking ?? false ? "取消屏蔽" : "屏蔽"} @$screenName",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: Icon(
                  userLegacy?.blocking ?? false
                      ? Icons.favorite_border_rounded
                      : Icons.heart_broken_outlined,
                  size: 20)),
          onPressed: () async {
            if (userLegacy?.blocking ?? false) {
              var res = await UserApi.unblock(userId: user!.restId!);
              if (res.success) {
                userLegacy?.blocking = false;
                if (mounted) setState(() {});
                IToast.showTop("已取消屏蔽@$screenName");
              } else {
                IToast.showTop("取消屏蔽@$screenName失败");
              }
            } else {
              DialogBuilder.showConfirmDialog(
                context,
                title: "屏蔽 @$screenName？",
                message: "他们将无法关注你或查看你的帖子，而你也将无法看到 @$screenName 的帖子或通知。",
                onTapConfirm: () async {
                  var res = await UserApi.block(userId: user!.restId!);
                  if (res.success) {
                    userLegacy?.blocking = true;
                    if (mounted) setState(() {});
                    IToast.showTop("已屏蔽@$screenName");
                  } else {
                    IToast.showTop("屏蔽@$screenName失败");
                  }
                },
              );
            }
          },
        ),
        ContextMenuButtonConfig(
          "${userLegacy?.muting ?? false ? "取消隐藏" : "隐藏"} @$screenName",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: Icon(
                  userLegacy?.muting ?? false
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 20)),
          onPressed: () async {
            if (userLegacy?.muting ?? false) {
              var res = await UserApi.unmute(userId: user!.restId!);
              if (res.success) {
                userLegacy?.muting = false;
                if (mounted) setState(() {});
                IToast.showTop("已取消隐藏@$screenName");
              } else {
                IToast.showTop("取消隐藏@$screenName失败");
              }
            } else {
              DialogBuilder.showConfirmDialog(
                context,
                title: "隐藏 @$screenName？",
                message: "你将无法在为你推荐或已关注中看到 @$screenName 的帖子或通知。",
                onTapConfirm: () async {
                  var res = await UserApi.mute(userId: user!.restId!);
                  if (res.success) {
                    userLegacy?.muting = true;
                    if (mounted) setState(() {});
                    IToast.showTop("已隐藏@$screenName");
                  } else {
                    IToast.showTop("隐藏@$screenName失败");
                  }
                },
              );
            }
          },
        ),
        ContextMenuButtonConfig(
          "从列表添加或移除 @$screenName",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.playlist_add_rounded, size: 20)),
          onPressed: () async {},
        ),
        ContextMenuButtonConfig.divider(),
        ContextMenuButtonConfig(
          "分享用户",
          icon: Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(Icons.share_rounded, size: 18)),
          onPressed: () async {
            UriUtil.share(context, url);
          },
        ),
        ContextMenuButtonConfig(
          "复制用户链接",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.link_rounded, size: 20)),
          onPressed: () async {
            Utils.copy(context, url, toastText: "已复制用户链接");
          },
        ),
        ContextMenuButtonConfig(
          "在浏览器打开",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.open_in_browser_rounded, size: 20)),
          onPressed: () async {
            UriUtil.openExternal(url);
          },
        ),
      ],
    );
  }

  _buildUserInfo() {
    String screenName = userLegacy?.screenName ?? userLegacy?.name ?? "";
    var metaRow = Wrap(
      spacing: 10,
      runSpacing: 5,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: [
        if (Utils.isNotEmpty(userLegacy!.location))
          ItemBuilder.buildIconTextButton(
            context,
            icon: Icon(
              Icons.location_city_outlined,
              size: 15,
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
            spacing: 3,
            text: userLegacy!.location,
            color: Theme.of(context).textTheme.bodySmall?.color,
            fontSizeDelta: 1,
            clickable: false,
          ),
        ItemBuilder.buildIconTextButton(
          context,
          icon: Icon(
            Icons.calendar_month_rounded,
            size: 15,
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
          spacing: 3,
          text: "${Utils.formatDateString(userLegacy!.createdAt ?? "")} 加入",
          color: Theme.of(context).textTheme.bodySmall?.color,
          fontSizeDelta: 1,
          clickable: false,
        ),
      ],
    );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              ItemBuilder.buildAvatar(
                context: context,
                imageUrl: TweetUtil.getBigAvatarUrl(
                        userLegacy!.profileImageUrlHttps) ??
                    AssetUtil.avatar,
                size: ResponsiveUtil.isMobile() ? 56 : 84,
                showDetail: true,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userLegacy!.name,
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                          fontSizeDelta: ResponsiveUtil.isMobile() ? 0 : 4),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "@${userLegacy!.screenName}",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.apply(fontSizeDelta: 2),
                    ),
                    if (ResponsiveUtil.isLandscape()) const SizedBox(height: 3),
                    if (ResponsiveUtil.isLandscape()) metaRow,
                  ],
                ),
              ),
              const SizedBox(width: 10),
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
                        if (mounted) setState(() {});
                        IToast.showTop("已取消关注@$screenName");
                      } else {
                        IToast.showTop("取消关注@$screenName失败");
                      }
                    });
                  } else {
                    var res = await UserApi.follow(userId: screenName);
                    if (res.success) {
                      userLegacy!.following = true;
                      if (mounted) setState(() {});
                      IToast.showTop("已关注@$screenName");
                    } else {
                      IToast.showTop("关注@$screenName失败");
                    }
                  }
                },
              ),
              const SizedBox(width: 10),
              ItemBuilder.buildRoundButton(
                context,
                icon: const Icon(Icons.more_horiz_rounded),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                onTap: () {
                  context.contextMenuOverlay
                      .show(_buildMoreContextMenuButtons());
                },
              ),
            ],
          ),
          if (ResponsiveUtil.isMobile()) const SizedBox(height: 10),
          if (ResponsiveUtil.isMobile()) metaRow,
          const SizedBox(height: 10),
          Wrap(
            spacing: 20,
            runSpacing: 5,
            children: [
              _buildCountItem(
                title: "帖子",
                value: "${userLegacy!.statusesCount ?? 0}",
                onTap: () {
                  _tabController.animateTo(0);
                },
              ),
              _buildCountItem(
                title: "照片和视频",
                value: "${userLegacy!.mediaCount ?? 0}",
                onTap: () {
                  _tabController.animateTo(2);
                },
              ),
              _buildCountItem(
                title: "正在关注",
                value: "${userLegacy!.friendsCount}",
                onTap: () {
                  panelScreenState?.pushPage(FriendshipScreen(
                      userId: user!.restId, initType: UserFlowType.following));
                },
              ),
              _buildCountItem(
                title: "关注者",
                value: "${userLegacy!.followersCount}",
                onTap: () {
                  panelScreenState?.pushPage(FriendshipScreen(
                      userId: user!.restId, initType: UserFlowType.follower));
                },
              ),
              if (friendList.isNotEmpty)
                _buildCountItem(
                  title: "关注了此账号",
                  value: friendList.map((e) => e.name).join("、"),
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
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: value,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.apply(fontWeightDelta: 2),
              ),
              const WidgetSpan(child: SizedBox(width: 4)),
              TextSpan(
                text: title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
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

  refresh() async {
    _refreshRotationController.repeat();
    await scrollToTop();
    _refreshRotationController.stop();
    _refreshRotationController.forward();
    tabDataList.getRefreshMixin(currentIndex)?.refresh();
  }

  scrollToTop() async {
    await tabDataList.getRefreshMixin(currentIndex)?.scrollToTop();
    _scrollToHideController.show();
  }
}
