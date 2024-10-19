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

import 'package:blur/blur.dart';
import 'package:context_menus/context_menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitee/Api/list_api.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Screens/Flow/list_flow_screen.dart';
import 'package:twitee/Screens/Flow/list_members_flow_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/enums.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/BottomSheet/bottom_sheet_builder.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/uri_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import 'list_members_screen.dart';

class ListDetailScreen extends StatefulWidget {
  const ListDetailScreen({
    super.key,
    required this.listId,
    required this.userId,
  });

  final String listId;
  final String userId;

  static const String routeName = "/listDetail";

  @override
  State<ListDetailScreen> createState() => _ListDetailScreenState();
}

class _ListDetailScreenState extends State<ListDetailScreen>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  InitPhase _initPhase = InitPhase.haveNotConnected;

  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();

  ScrollController? primaryController;

  GlobalKey key = GlobalKey();

  TimelineTwitterListInfo? listInfo;

  String get bannerUrl => listInfo!.defaultBannerMedia.mediaInfo.originalImgUrl;

  UserLegacy? get user => listInfo!.userResults.result != null
      ? (listInfo!.userResults.result! as User).legacy
      : null;

  bool get isMyself => widget.userId == user?.idStr;

  fetchListInfo() async {
    _initPhase = InitPhase.connecting;
    setState(() {});
    var res = await ListApi.getListInfo(listId: widget.listId);
    if (res.success) {
      listInfo = res.data;
      _initPhase = InitPhase.successful;
    } else {
      IToast.showTop("获取列表信息失败：${res.message}");
      _initPhase = InitPhase.failed;
    }
    if (listInfo == null || user == null) _initPhase = InitPhase.failed;
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fetchListInfo();
      primaryController = PrimaryScrollController.of(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: ResponsiveUtil.isLandscape()
          ? ItemBuilder.buildDesktopAppBar(
              context: context,
              title: "列表详情${listInfo != null ? " - ${listInfo!.name}" : ""}",
              showBack: true)
          : null,
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
          onTap: fetchListInfo,
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
        if (ResponsiveUtil.isMobile())
          ItemBuilder.buildSliverAppBar(
            context: context,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            title: Text(
              "列表详情",
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
            ),
            backgroundWidget: _buildBlurBackground(
                height: kToolbarHeight + MediaQuery.paddingOf(context).top),
            pinned: true,
            actions: [
              ItemBuilder.buildIconButton(
                context: context,
                icon: const Icon(Icons.more_vert_rounded, color: Colors.white),
                onTap: () {
                  BottomSheetBuilder.showContextMenu(
                      context, _buildMoreContextMenuButtons());
                },
              ),
              const SizedBox(width: 5),
            ],
            expandedHeight: 140.0,
            collapsedHeight: kToolbarHeight,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: _buildBackgroundBanner(),
            ),
          ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              if (ResponsiveUtil.isLandscape()) _buildBackgroundBanner(),
              _buildListInfo(),
            ],
          ),
        ),
      ],
      body: Stack(
        children: [
          ListFlowScreen(
            key: key,
            listId: widget.listId,
            userId: widget.userId,
            scrollController: primaryController,
            nested: true,
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: ScrollToHide(
              controller: _scrollToHideController,
              scrollControllers: [primaryController ?? ScrollController()],
              hideDirection: Axis.vertical,
              child: _buildFloatingButtons(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: ResponsiveUtil.isLandscape()
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: ResponsiveUtil.isLandscape()
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Text(
                      listInfo!.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "${user!.name}@${user!.screenName}",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.apply(fontSizeDelta: 2),
                    ),
                    Text(
                      "创建于 ${Utils.formatTimestamp(listInfo!.createdAt)}",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.apply(fontSizeDelta: 2),
                    ),
                    if (Utils.isNotEmpty(listInfo!.description))
                      const SizedBox(height: 8),
                    if (Utils.isNotEmpty(listInfo!.description))
                      Text(
                        listInfo!.description,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 10,
                  runSpacing: 5,
                  children: [
                    ItemBuilder.buildCountItem(
                      context,
                      title: "成员",
                      value: listInfo!.memberCount.toString(),
                      onTap: () {
                        panelScreenState?.pushPage(
                          ListMembersScreen(
                            listId: widget.listId,
                            initType: ListMembersFlowType.members,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                    ItemBuilder.buildCountItem(
                      context,
                      title: "关注者",
                      value: listInfo!.subscriberCount.toString(),
                      onTap: () {
                        panelScreenState?.pushPage(
                          ListMembersScreen(
                            listId: widget.listId,
                            initType: ListMembersFlowType.subscribers,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                if (!ResponsiveUtil.isLandscape()) const SizedBox(height: 8),
                if (!ResponsiveUtil.isLandscape()) ..._buildOperationButtons(),
              ],
            ),
          ),
          if (ResponsiveUtil.isLandscape()) ..._buildOperationButtons(),
        ],
      ),
    );
  }

  _buildOperationButtons() {
    return [
      if (isMyself)
        ItemBuilder.buildRoundButton(
          context,
          text: "编辑列表",
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          onTap: () {},
        ),
      if (!isMyself)
        ItemBuilder.buildRoundButton(
          context,
          text: listInfo!.following ? "取消订阅" : "订阅",
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          background: Theme.of(context).primaryColor,
          onTap: () async {
            if (listInfo!.following) {
              DialogBuilder.showConfirmDialog(
                context,
                title: "取消订阅${listInfo!.name}",
                message: "是否取消订阅${listInfo!.name}？",
                onTapConfirm: () async {
                  var res = await ListApi.unSubscribe(listId: widget.listId);
                  if (res.success) {
                    listInfo!.following = false;
                    listInfo!.subscriberCount--;
                    if (mounted) setState(() {});
                    IToast.showTop("取消订阅成功");
                    homeScreenState?.refreshPinnedLists();
                    listScreenState?.refreshLists();
                  } else {
                    IToast.showTop("取消订阅失败：${res.message}");
                  }
                },
              );
            } else {
              var res = await ListApi.subscribe(listId: widget.listId);
              if (res.success) {
                listInfo!.following = true;
                listInfo!.subscriberCount++;
                if (mounted) setState(() {});
                IToast.showTop("订阅成功");
                homeScreenState?.refreshPinnedLists();
                listScreenState?.refreshLists();
              } else {
                IToast.showTop("订阅失败：${res.message}");
              }
            }
          },
        ),
      if (ResponsiveUtil.isLandscape()) const SizedBox(width: 8),
      if (ResponsiveUtil.isLandscape())
        ItemBuilder.buildRoundButton(
          context,
          icon: const Icon(Icons.more_horiz_rounded),
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          onTap: () {
            BottomSheetBuilder.showContextMenu(
                context, _buildMoreContextMenuButtons());
          },
        ),
    ];
  }

  Widget _buildBlurBackground({
    double blurRadius = 10,
    double? height,
  }) {
    return Blur(
      blur: blurRadius,
      blurColor: Colors.black12,
      child: Utils.isNotEmpty(bannerUrl)
          ? SizedBox(
              height: height,
              width: double.infinity,
              child: ItemBuilder.buildHeroCachedImage(
                imageUrl: bannerUrl,
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
    return Utils.isNotEmpty(bannerUrl)
        ? SizedBox(
            height: 180,
            width: double.infinity,
            child: ItemBuilder.buildHeroCachedImage(
              imageUrl: bannerUrl,
              context: context,
              fit: BoxFit.cover,
              showLoading: false,
              isOrigin: false,
              tagPrefix: "background",
            ),
          )
        : AssetUtil.load(AssetUtil.banner, fit: BoxFit.cover);
  }

  _buildMoreContextMenuButtons() {
    String id = listInfo!.idStr;
    String url = "https://twitter.com/i/lists/$id";
    return GenericContextMenu(
      buttonConfigs: [
        if (isMyself)
          ContextMenuButtonConfig(
            "编辑列表",
            icon: const Icon(Icons.edit_note_rounded),
            onPressed: () async {},
          ),
        if (isMyself) ContextMenuButtonConfig.divider(),
        ContextMenuButtonConfig(
          "分享列表",
          icon: const Icon(Icons.share_rounded),
          onPressed: () async {
            UriUtil.share(context, url);
          },
        ),
        ContextMenuButtonConfig(
          "复制列表链接",
          icon: const Icon(Icons.link_rounded),
          onPressed: () async {
            Utils.copy(context, url, toastText: "已复制列表链接");
          },
        ),
        ContextMenuButtonConfig(
          "在浏览器打开",
          icon: const Icon(Icons.open_in_browser_rounded),
          onPressed: () async {
            UriUtil.openExternal(url);
          },
        ),
      ],
    );
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
    (key.currentState as RefreshMixin).refresh();
  }

  scrollToTop() async {
    await (key.currentState as RefreshMixin).scrollToTop();
    _scrollToHideController.show();
  }
}
