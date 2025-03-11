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

import 'dart:math';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:twitee/Models/translation_result.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Resources/theme.dart';
import 'package:twitee/Screens/Detail/friendship_screen.dart';
import 'package:twitee/Screens/Detail/search_result_screen.dart';
import 'package:twitee/Screens/Detail/user_list_screen.dart';
import 'package:twitee/Screens/Detail/user_topic_screen.dart';
import 'package:twitee/Screens/Flow/user_list_flow_screen.dart';
import 'package:twitee/Screens/Flow/user_media_flow_screen.dart';
import 'package:twitee/Screens/Flow/user_tweet_flow_screen.dart';
import 'package:twitee/Screens/Navigation/like_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/enums.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Widgets/BottomSheet/bottom_sheet_builder.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';

import '../../Api/user_api.dart';
import '../../Models/local_model.dart';
import '../../Models/tab_item_data.dart';
import '../../Models/user_info.dart';
import '../../Resources/colors.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/route_util.dart';
import '../../Utils/uri_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Custom/sliver_appbar_delegate.dart';
import '../../Widgets/Dialog/dialog_builder.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../../Widgets/Item/custom_html_widget.dart';
import '../Flow/user_flow_screen.dart';
import 'list_membership_manage_screen.dart';

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

  User? get user => response?.data.user.result as User?;

  UserLegacy? get userLegacy => user?.legacy;
  InitPhase _initPhase = InitPhase.haveNotConnected;

  bool isTranslating = false;
  bool isTranslationExpanded = true;
  TranslationResult? translationResult;

  late TabController _tabController;
  TabItemDataList tabDataList = TabItemDataList([]);
  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();

  int get currentIndex => _tabController.index;

  List<UserLegacy> friendList = [];

  ScrollController? primaryController;

  UserInfo? myInfo;

  bool get isMyself => myInfo?.idStr == user!.restId!;

  initTab() {
    primaryController = PrimaryScrollController.of(context);
    tabDataList.addAll([
      TabItemData.build(
        context,
        "推文",
        (key2, scrollController2) => UserTweetFlowScreen(
          key: key2,
          userId: user!.restId!,
          nested: true,
          scrollController: primaryController,
          type: UserTweetFlowType.Tweets,
        ),
      ),
      TabItemData.build(
        context,
        "转推",
        (key2, scrollController2) => UserTweetFlowScreen(
          key: key2,
          userId: user!.restId!,
          nested: true,
          scrollController: primaryController,
          type: UserTweetFlowType.Retweets,
        ),
      ),
      TabItemData.build(
        context,
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
        context,
        "媒体",
        (key2, scrollController2) => UserMediaFlowScreen(
          key: key2,
          userId: user!.restId!,
          nested: true,
          scrollController: primaryController,
        ),
      ),
      if (user!.highlightsInfo != null &&
          (user!.highlightsInfo!.canHighlightTweets ?? false))
        TabItemData.build(
          context,
          "亮点",
          (key2, scrollController2) => UserTweetFlowScreen(
            key: key2,
            userId: user!.restId!,
            nested: true,
            type: UserTweetFlowType.Highlights,
            scrollController: primaryController,
          ),
        ),
      if (user!.hasHiddenLikesOnProfile ?? false)
        TabItemData.build(
          context,
          "喜欢",
          (key2, scrollController2) => LikeScreen(
            key: key2,
            userId: user!.restId!,
            // nested: true,
            // type: UserTweetFlowType.Highlights,
            // scrollController: primaryController,
          ),
        ),
    ]);
    _tabController = TabController(length: tabDataList.length, vsync: this);
  }

  fetchUserInfo() async {
    myInfo = HiveUtil.getUserInfo();
    _initPhase = InitPhase.connecting;
    setState(() {});
    var res = await UserApi.getUserInfo(widget.screenName);
    if (res.success) {
      response = res.data;
      fetchFriendList();
      initTab();
      _initPhase = InitPhase.successful;
    } else {
      IToast.showTop("获取用户信息失败");
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
      IToast.showTop("获取好友列表失败");
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fetchUserInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: ResponsiveUtil.isLandscape()
          ? ItemBuilder.buildDesktopAppBar(
              context: context,
              title:
                  "个人主页${user != null && userLegacy != null ? " - ${userLegacy!.name}" : ""}",
              showBack: true)
          : null,
      body: ItemBuilder.buildConstraintContainer(
        child: _buildBody(),
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
          onTap: fetchUserInfo,
        );
      case InitPhase.successful:
        return Stack(
          children: [
            _buildMainBody(),
            Positioned(
              right: 16,
              bottom: 16,
              child: ScrollToHide(
                controller: _scrollToHideController,
                scrollControllers: [
                  primaryController ?? ScrollController(),
                  ...tabDataList.scrollControllerList
                ],
                hideDirection: AxisDirection.down,
                child: _buildFloatingButtons(),
              ),
            ),
          ],
        );
      default:
        return Container();
    }
  }

  _buildMainBody() {
    String screenName = userLegacy?.screenName ?? "";
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        if (ResponsiveUtil.isMobile())
          ItemBuilder.buildSliverAppBar(
            context: context,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            title: Text(
              user != null && userLegacy != null
                  ? "@${userLegacy!.screenName}"
                  : "",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.apply(color: Colors.white),
            ),
            leading: ItemBuilder.buildIconButton(
              context: context,
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
              onTap: () {
                Navigator.of(context).pop();
              },
              padding: const EdgeInsets.all(6),
              background: Colors.black38,
            ),
            backgroundWidget: _buildBlurBackground(
                height: kToolbarHeight + MediaQuery.paddingOf(context).top),
            pinned: true,
            actions: [
              ItemBuilder.buildIconButton(
                context: context,
                icon: const Icon(Icons.search_rounded, color: Colors.white),
                onTap: () {
                  panelScreenState?.pushPage(
                      SearchResultScreen(searchKey: 'from:$screenName '));
                },
                padding: const EdgeInsets.all(6),
                background: Colors.black38,
              ),
              const SizedBox(width: 5),
              ItemBuilder.buildIconButton(
                context: context,
                icon: const Icon(Icons.more_vert_rounded, color: Colors.white),
                onTap: () {
                  BottomSheetBuilder.showContextMenu(
                      context, _buildMoreContextMenuButtons());
                },
                padding: const EdgeInsets.all(6),
                background: Colors.black38,
              ),
              const SizedBox(width: 8),
            ],
            expandedHeight: 140.0,
            collapsedHeight: kToolbarHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: _buildBackgroundBanner(),
            ),
          ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              if (ResponsiveUtil.isLandscape()) _buildBackgroundBanner(),
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
              forceUnscrollable: true,
              showBorder: true,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              background: MyTheme.itemBackground,
            ),
            radius: 0,
          ),
        ),
      ],
      body: _buildTabBarView(),
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

  Widget _buildBlurBackground({
    double blurRadius = 10,
    double? height,
  }) {
    return Blur(
      blur: blurRadius,
      blurColor: Colors.black12,
      child: Utils.isNotEmpty(userLegacy?.profileBannerUrl)
          ? SizedBox(
              height: height,
              width: double.infinity,
              child: ItemBuilder.buildHeroCachedImage(
                imageUrl: userLegacy?.profileBannerUrl ?? AssetUtil.banner,
                context: context,
                fit: BoxFit.cover,
                showLoading: false,
                isOrigin: false,
                tagPrefix: "blurBackground",
              ),
            )
          : AssetUtil.load(
              AssetUtil.banner,
              fit: BoxFit.cover,
              height: height,
              width: double.infinity,
            ),
    );
  }

  _buildBackgroundBanner() {
    return Utils.isNotEmpty(userLegacy?.profileBannerUrl)
        ? SizedBox(
            height: 180,
            width: double.infinity,
            child: ItemBuilder.buildHeroCachedImage(
              imageUrl: userLegacy?.profileBannerUrl ?? AssetUtil.banner,
              context: context,
              fit: BoxFit.cover,
              showLoading: false,
              isOrigin: false,
              tagPrefix: "background",
            ),
          )
        : AssetUtil.load(
            AssetUtil.banner,
            fit: BoxFit.cover,
            height: 180,
            width: double.infinity,
          );
  }

  _buildMoreContextMenuButtons() {
    String screenName = userLegacy?.screenName ?? "";
    String url = userLegacy?.url ?? "https://twitter.com/$screenName";
    return FlutterContextMenu(
      entries: [
        if (!isMyself && (userLegacy?.following ?? false))
          FlutterContextMenuItem(
            userLegacy?.wantRetweets ?? false ? "关闭转推" : "开启转推",
            iconData: userLegacy?.wantRetweets ?? false
                ? Icons.repeat_rounded
                : Icons.repeat_rounded,
            onPressed: () async {
              if (userLegacy?.wantRetweets ?? false) {
                DialogBuilder.showConfirmDialog(
                  context,
                  title: "关闭来自 @$screenName 的转推？",
                  message: "你将不会在时间线中看到来自 @$screenName 的转推。",
                  onTapConfirm: () async {
                    var res = await IToast.showLoadingSnackbar(
                        "正在关闭转推",
                        () async =>
                            await UserApi.muteRetweet(userId: user!.restId!));
                    if (res.success) {
                      userLegacy?.wantRetweets = false;
                      if (mounted) setState(() {});
                      IToast.showTop("已关闭转推");
                    } else {
                      IToast.showTop("关闭转推失败");
                    }
                  },
                );
              } else {
                var res = await IToast.showLoadingSnackbar(
                    "正在开启转推",
                    () async =>
                        await UserApi.unmuteRetweet(userId: user!.restId!));
                if (res.success) {
                  userLegacy?.wantRetweets = true;
                  if (mounted) setState(() {});
                  IToast.showTop("已开启转推");
                } else {
                  IToast.showTop("开启转推失败");
                }
              }
            },
          ),
        if (!isMyself)
          FlutterContextMenuItem(
            appProvider.isBlockRetweetUser(userLegacy?.screenName)
                ? "开启转推（本地）"
                : "关闭转推（本地）",
            iconData: appProvider.isBlockRetweetUser(userLegacy?.screenName)
                ? Icons.repeat_rounded
                : Icons.repeat_rounded,
            onPressed: () async {
              if (!appProvider.isBlockRetweetUser(userLegacy?.screenName)) {
                DialogBuilder.showConfirmDialog(
                  context,
                  title: "在本地关闭来自 @$screenName 的转推？",
                  message: "你将不会在Twitee里的任何地方看到来自 @$screenName 的转推。",
                  onTapConfirm: () async {
                    appProvider.addBlockRetweetUser(LocalUserModel(
                      screenName: userLegacy?.screenName ?? "",
                      nickName: userLegacy?.name ?? "",
                      userId: user!.restId ?? "",
                      avatar: userLegacy?.profileImageUrlHttps ?? "",
                      viewCount: 0,
                      lastViewTime: 0,
                      lastBlockRetweetTime:
                          DateTime.now().millisecondsSinceEpoch,
                    ));
                    IToast.showTop("已关闭转推（本地）");
                  },
                );
              } else {
                appProvider
                    .removeBlockRetweetUser(userLegacy?.screenName ?? "");
                IToast.showTop("已开启转推（本地）");
              }
            },
          ),
        if (!isMyself)
          FlutterContextMenuItem(
            "${userLegacy?.blocking ?? false ? "取消屏蔽" : "屏蔽"} @$screenName",
            iconData: userLegacy?.blocking ?? false
                ? Icons.favorite_border_rounded
                : Icons.heart_broken_outlined,
            onPressed: () async {
              if (userLegacy?.blocking ?? false) {
                var res = await IToast.showLoadingSnackbar("正在取消屏蔽@$screenName",
                    () async => await UserApi.unblock(userId: user!.restId!));
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
                    var res = await IToast.showLoadingSnackbar(
                        "正在屏蔽@$screenName",
                        () async => await UserApi.block(userId: user!.restId!));
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
        if (!isMyself)
          FlutterContextMenuItem(
            "${userLegacy?.muting ?? false ? "取消隐藏" : "隐藏"} @$screenName",
            iconData: userLegacy?.muting ?? false
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            onPressed: () async {
              if (userLegacy?.muting ?? false) {
                var res = await IToast.showLoadingSnackbar("正在取消隐藏@$screenName",
                    () async => await UserApi.unmute(userId: user!.restId!));
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
                    var res = await IToast.showLoadingSnackbar(
                        "正在隐藏@$screenName",
                        () async => await UserApi.mute(userId: user!.restId!));
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
        if (!isMyself)
          FlutterContextMenuItem(
            "从列表添加或移除 @$screenName",
            iconData: Icons.playlist_add_rounded,
            onPressed: () async {
              if (ResponsiveUtil.isLandscape()) {
                RouteUtil.pushDialogRoute(
                  context,
                  ListMembershipManageScreen(targetUserId: user!.restId!),
                );
              } else {
                BottomSheetBuilder.showBottomSheet(
                  context,
                  (context) =>
                      ListMembershipManageScreen(targetUserId: user!.restId!),
                );
              }
            },
          ),
        if (!isMyself) FlutterContextMenuItem.divider(),
        FlutterContextMenuItem(
          "翻译简介",
          iconData: Icons.translate_rounded,
          onPressed: () async {
            if (isTranslating) return;
            Locale locale = Localizations.localeOf(context);
            isTranslating = true;
            setState(() {});
            var res = await IToast.showLoadingSnackbar(
                "正在翻译@$screenName的简介",
                () async => await UserApi.translateProfile(
                      userId: user!.restId!,
                      destinationLanguage: locale.toString(),
                    ));
            isTranslating = false;
            setState(() {});
            if (res.success) {
              translationResult = res.data;
              if (Utils.isEmpty(translationResult?.translation)) {
                IToast.showTop("翻译结果为空");
              }
              setState(() {});
            } else {
              IToast.showTop("翻译失败");
            }
          },
        ),
        FlutterContextMenuItem(
          "TA的列表",
          iconData: Icons.featured_play_list_outlined,
          onPressed: () async {
            panelScreenState?.pushPage(UserListScreen(
              userId: user!.restId ?? "",
              initType: UserListFlowType.create,
            ));
          },
        ),
        FlutterContextMenuItem(
          "TA的话题",
          iconData: Icons.topic_outlined,
          onPressed: () async {
            panelScreenState?.pushPage(UserTopicScreen(
              userId: user!.restId ?? "",
            ));
          },
        ),
        FlutterContextMenuItem.divider(),
        FlutterContextMenuItem(
          "分享用户",
          iconData: Icons.share_rounded,
          onPressed: () async {
            UriUtil.share(context, url);
          },
        ),
        FlutterContextMenuItem(
          "复制用户链接",
          iconData: Icons.link_rounded,
          onPressed: () async {
            Utils.copy(context, url, toastText: "已复制用户链接");
          },
        ),
        FlutterContextMenuItem(
          "在浏览器打开",
          iconData: Icons.open_in_browser_rounded,
          onPressed: () async {
            UriUtil.openExternal(url);
          },
        ),
      ],
    );
  }

  _buildButton({
    required String text,
    required Widget icon,
    Function()? onTap,
    Color? color,
  }) {
    Color? labelColor = MyTheme.textDarkGreyColor;
    return ItemBuilder.buildIconTextButton(
      context,
      icon: icon,
      spacing: 3,
      text: text,
      color: color ?? labelColor,
      fontSizeDelta: 1,
      onTap: onTap,
      clickable: onTap != null,
    );
  }

  _buildUserInfo() {
    String screenName = userLegacy?.screenName ?? userLegacy?.name ?? "";
    Url? url = getUrl();
    UserLegacyExtendedProfile? profile = user?.legacyExtendedProfile;
    String birthDate = "";
    if (profile != null && profile.birthdate != null) {
      birthDate = "${profile.birthdate?.month}月${profile.birthdate?.day}日";
      if (profile.birthdate?.year != null && profile.birthdate?.year != 0) {
        birthDate = "${profile.birthdate?.year}年$birthDate";
      }
    }
    Color? labelColor = MyTheme.textDarkGreyColor;
    String description = _processDescription();
    var metaRow = Wrap(
      spacing: 20,
      runSpacing: 3,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: [
        if (url != null)
          _buildButton(
            icon: Transform.rotate(
              angle: (3 / 4) * pi,
              child: Icon(Icons.link_rounded, size: 15, color: labelColor),
            ),
            color: MyColors.getLinkColor(context),
            text: url.displayUrl ?? url.expandedUrl ?? url.url,
            onTap: () {
              UriUtil.launchUrlUri(context, url.expandedUrl ?? url.url);
            },
          ),
        _buildButton(
          icon: Icon(Icons.date_range_rounded, size: 15, color: labelColor),
          text: "${Utils.formatDateString(userLegacy!.createdAt ?? "")} 加入",
        ),
        if (Utils.isNotEmpty(birthDate))
          _buildButton(
            icon: Icon(Icons.sports_football_outlined,
                size: 15, color: labelColor),
            text: "出生于 $birthDate",
          ),
      ],
    );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: MyTheme.itemBackground),
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
                      style: MyTheme.titleLarge.apply(
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
                  ],
                ),
              ),
              const SizedBox(width: 10),
              if (!isMyself)
                ItemBuilder.buildRoundButton(
                  context,
                  text: userLegacy!.isFriend
                      ? "互相关注"
                      : userLegacy!.following ?? false
                          ? "正在关注"
                          : "关注",
                  background: userLegacy!.isFriend
                      ? Colors.green
                      : Theme.of(context).primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  onTap: () async {
                    if (userLegacy!.following ?? false) {
                      DialogBuilder.showConfirmDialog(context,
                          title: "取消关注 @$screenName？",
                          message: "你将无法在已关注中看到 @$screenName 的帖子或通知。",
                          onTapConfirm: () async {
                        var res = await IToast.showLoadingSnackbar(
                            "正在取消关注@$screenName",
                            () async =>
                                await UserApi.unfollow(userId: user!.restId!));
                        if (res.success) {
                          userLegacy!.following = false;
                          if (mounted) setState(() {});
                          IToast.showTop("已取消关注@$screenName");
                        } else {
                          IToast.showTop("取消关注@$screenName失败");
                        }
                      });
                    } else {
                      var res = await IToast.showLoadingSnackbar(
                          "正在关注@$screenName",
                          () async =>
                              await UserApi.follow(userId: user!.restId!));
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
              if (ResponsiveUtil.isLandscape()) ...[
                ItemBuilder.buildRoundButton(
                  context,
                  icon: const Icon(Icons.search_rounded, size: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  onTap: () {
                    panelScreenState?.pushPage(
                        SearchResultScreen(searchKey: 'from:$screenName '));
                  },
                ),
                const SizedBox(width: 10),
                ItemBuilder.buildRoundButton(
                  context,
                  icon: const Icon(Icons.more_horiz_rounded),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  onTap: () {
                    BottomSheetBuilder.showContextMenu(
                        context, _buildMoreContextMenuButtons());
                  },
                ),
              ]
            ],
          ),
          if (Utils.isNotEmpty(description)) const SizedBox(height: 10),
          CustomHtmlWidget(
            content: description,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          if (translationResult != null) const SizedBox(height: 10),
          if (translationResult != null)
            ..._buildTranslation(translationResult!),
          const SizedBox(height: 16),
          if (Utils.isNotEmpty(userLegacy!.location)) ...[
            _buildButton(
              icon: Icon(Icons.location_city_outlined,
                  size: 15, color: labelColor),
              text: userLegacy!.location,
            ),
            const SizedBox(height: 3),
          ],
          metaRow,
          const SizedBox(height: 16),
          Wrap(
            spacing: 20,
            runSpacing: 3,
            children: [
              ItemBuilder.buildCountItem(
                context,
                title: "正在关注",
                value: userLegacy!.friendsCount ?? 0,
                onTap: () {
                  panelScreenState?.pushPage(FriendshipScreen(
                      userId: user!.restId, initType: UserFlowType.following));
                },
              ),
              ItemBuilder.buildCountItem(
                context,
                title: "关注者",
                value: userLegacy!.followersCount ?? 0,
                onTap: () {
                  panelScreenState?.pushPage(FriendshipScreen(
                      userId: user!.restId, initType: UserFlowType.follower));
                },
              ),
              if (!(user!.hasHiddenSubscriptionsOnProfile ?? false) &&
                  (user!.creatorSubscriptionsCount ?? 0) > 0)
                ItemBuilder.buildCountItem(
                  context,
                  title: "订阅服务",
                  value: user!.creatorSubscriptionsCount ?? 0,
                  onTap: () {
                    panelScreenState?.pushPage(FriendshipScreen(
                        userId: user!.restId,
                        initType: UserFlowType.subscriptions));
                  },
                ),
              if ((userLegacy!.statusesCount ?? 0) > 0)
                ItemBuilder.buildCountItem(
                  context,
                  title: "推文",
                  value: userLegacy!.statusesCount ?? 0,
                  onTap: () {
                    _tabController.animateTo(0);
                  },
                ),
              if ((userLegacy!.mediaCount ?? 0) > 0)
                ItemBuilder.buildCountItem(
                  context,
                  title: "照片和视频",
                  value: userLegacy!.mediaCount ?? 0,
                  onTap: () {
                    _tabController.animateTo(2);
                  },
                ),
            ],
          ),
          const SizedBox(height: 16),
          if (friendList.isNotEmpty)
            ItemBuilder.buildCountItem(
              context,
              title: "${friendList.length > 1 ? "都" : ""}关注了此账号",
              subTitle: friendList.map((e) => e.name).join("、"),
              fontSizeDelta: -2,
              onTap: () {
                panelScreenState?.pushPage(FriendshipScreen(
                  userId: user!.restId!,
                  initType: UserFlowType.followerYouKnow,
                ));
              },
            ),
          if (friendList.isEmpty)
            Text(
              "暂无好友关注了此账号",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.apply(fontSizeDelta: 2),
            ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  _buildTranslation(TranslationResult result) {
    String translation = TweetUtil.processTweetTranslation(result);
    if (Utils.isNotEmpty(translation)) {
      return [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isTranslationExpanded)
                CustomHtmlWidget(
                  content: translation,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              if (isTranslationExpanded) const SizedBox(height: 8),
              ItemBuilder.buildClickItem(
                GestureDetector(
                  onTap: () {
                    isTranslationExpanded = !isTranslationExpanded;
                    setState(() {});
                  },
                  child: Text(
                    isTranslationExpanded ? "收起翻译" : "查看翻译",
                    style: MyTheme.bodyMedium.apply(
                      fontWeightDelta: 2,
                      color: MyColors.getLinkColor(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ];
    } else {
      return [];
    }
  }

  String _processDescription() {
    String fullText = userLegacy!.description;
    Map map = userLegacy!.entities;
    if (map.containsKey("description")) {
      Entities entities = Entities.fromJson(map["description"]);
      return TweetUtil.processWithEntities(
        fullText,
        entities,
        replaceNewline: false,
        renderAt: true,
      );
    }
    return fullText;
  }

  Url? getUrl() {
    if (userLegacy!.entities.containsKey("url")) {
      Entities entities = Entities.fromJson(userLegacy!.entities["url"]);
      if (entities.urls.isNotEmpty) {
        return entities.urls[0];
      }
    }
    return null;
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
