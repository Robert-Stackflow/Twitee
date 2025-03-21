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
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:twitee/Api/list_api.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Screens/Flow/list_flow_screen.dart';
import 'package:twitee/Screens/Flow/list_members_flow_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/enums.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/BottomSheet/bottom_sheet_builder.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

import '../../Models/response_result.dart';
import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Resources/theme.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/uri_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import 'list_members_screen.dart';

class ListDetailScreen extends StatefulWidget {
  const ListDetailScreen({
    super.key,
    required this.listId,
  });

  final String listId;

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

  String get bannerUrl =>
      listInfo!.customBannerMedia?.mediaInfo.originalImgUrl ??
      listInfo!.defaultBannerMedia.mediaInfo.originalImgUrl;

  UserLegacy? get user => listInfo!.userResults.result != null
      ? (listInfo!.userResults.result! as User).legacy
      : null;

  bool get isMyself => HiveUtil.getUserInfo()?.screenName == user?.screenName;

  fetchListInfo() async {
    _initPhase = InitPhase.connecting;
    setState(() {});
    var res = await ListApi.getListInfo(listId: widget.listId);
    if (res.success) {
      listInfo = res.data;
      _initPhase = InitPhase.successful;
    } else {
      IToast.showTop("获取列表信息失败");
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
            leading: ItemBuilder.buildIconButton(
              context: context,
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
              onTap: () {
                Navigator.of(context).pop();
              },
              padding: const EdgeInsets.all(6),
              background: Colors.black38,
            ),
            title: Text(
              listInfo != null ? listInfo!.name : "",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.apply(color: Colors.white),
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
                padding: const EdgeInsets.all(6),
                background: Colors.black38,
              ),
              const SizedBox(width: 8),
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
            userId: user!.idStr ?? "",
            scrollController: primaryController,
            nested: true,
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: ScrollToHide(
              controller: _scrollToHideController,
              scrollControllers: [primaryController ?? ScrollController()],
              hideDirection: AxisDirection.down,
              child: _buildFloatingButtons(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
          color: MyTheme.itemBackground, border: MyTheme.bottomBorder),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  listInfo!.name,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.apply(fontSizeDelta: 5),
                ),
              ),
              if (ResponsiveUtil.isLandscape()) ..._buildOperationButtons(),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              ItemBuilder.buildCountItem(
                context,
                title: "成员",
                value: listInfo!.memberCount,
                onTap: () {
                  panelScreenState?.pushPage(
                    ListMembersScreen(
                      listId: widget.listId,
                      initType: ListMembersFlowType.members,
                    ),
                  );
                },
              ),
              const SizedBox(width: 10),
              ItemBuilder.buildCountItem(
                context,
                title: "关注者",
                value: listInfo!.subscriberCount,
                onTap: () {
                  panelScreenState?.pushPage(
                    ListMembersScreen(
                      listId: widget.listId,
                      initType: ListMembersFlowType.subscribers,
                    ),
                  );
                },
              ),
              const Spacer(),
              if (!ResponsiveUtil.isLandscape()) ..._buildOperationButtons(),
            ],
          ),
          if (Utils.isNotEmpty(listInfo!.description)) ...[
            const SizedBox(height: 8),
            Text(
              listInfo!.description,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.apply(fontSizeDelta: 1),
            ),
          ],
          const SizedBox(height: 8),
          Text(
            "${user!.name}@${user!.screenName} 创建于 ${Utils.formatTimestamp(listInfo!.createdAt)}",
            style: MyTheme.bodySmall.apply(fontSizeDelta: 1),
          ),
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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          background: Theme.of(context).primaryColor,
          onTap: () {
            IToast.showTop("暂不支持编辑列表");
          },
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
                  var res = await IToast.showLoadingSnackbar(
                      "正在取消订阅",
                      () async =>
                          await ListApi.unSubscribe(listId: widget.listId));
                  if (res.success) {
                    listInfo!.following = false;
                    listInfo!.subscriberCount--;
                    if (mounted) setState(() {});
                    IToast.showTop("取消订阅成功");
                    homeScreenState?.refreshPinnedLists();
                    listScreenState?.refreshLists();
                  } else {
                    IToast.showTop("取消订阅失败");
                  }
                },
              );
            } else {
              var res = await IToast.showLoadingSnackbar("正在订阅",
                  () async => await ListApi.subscribe(listId: widget.listId));
              if (res.success) {
                listInfo!.following = true;
                listInfo!.subscriberCount++;
                if (mounted) setState(() {});
                IToast.showTop("订阅成功");
                homeScreenState?.refreshPinnedLists();
                listScreenState?.refreshLists();
              } else {
                IToast.showTop("订阅失败");
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
    return FlutterContextMenu(
      entries: [
        FlutterContextMenuItem(
          listInfo!.muting ? "在“为你推荐”中显示这些帖子" : "在“为你推荐”中隐藏这些帖子",
          iconData: listInfo!.muting
              ? Icons.check_circle_outline_rounded
              : Icons.remove_circle_outline_rounded,
          status: !listInfo!.muting
              ? MenuItemStatus.warning
              : MenuItemStatus.normal,
          onPressed: () async {
            if (listInfo!.muting) {
              ResponseResult res = await IToast.showLoadingSnackbar(
                  "正在取消隐藏", () async => await ListApi.unMuteList(listId: id));
              if (res.success) {
                listInfo!.muting = false;
                setState(() {});
                IToast.showTop("取消隐藏成功");
              } else {
                IToast.showTop("取消隐藏失败");
              }
            } else {
              DialogBuilder.showConfirmDialog(
                context,
                title: "在“为你推荐”中隐藏这些帖子",
                message: "此列表中的热门帖子会不显示在“为你推荐”时间线中。",
                onTapConfirm: () async {
                  ResponseResult res = await IToast.showLoadingSnackbar(
                      "正在隐藏", () async => await ListApi.muteList(listId: id));
                  if (res.success) {
                    listInfo!.muting = true;
                    setState(() {});
                    IToast.showTop("隐藏成功");
                  } else {
                    IToast.showTop("隐藏失败");
                  }
                },
              );
            }
          },
        ),
        if (isMyself)
          FlutterContextMenuItem(
            "删除列表",
            status: MenuItemStatus.warning,
            iconData: Icons.delete_forever_outlined,
            onPressed: () async {
              DialogBuilder.showConfirmDialog(
                context,
                title: "删除列表",
                message: "是否删除列表${listInfo!.name}？删除后将无法撤销",
                onTapConfirm: () async {
                  ResponseResult res = await IToast.showLoadingSnackbar(
                      "正在删除列表",
                      () async => await ListApi.deleteList(listId: id));
                  if (res.success) {
                    panelScreenState?.popPage();
                    IToast.showTop("删除成功");
                  } else {
                    IToast.showTop("删除失败");
                  }
                },
              );
            },
          ),
        FlutterContextMenuItem.divider(),
        FlutterContextMenuItem(
          "分享列表",
          iconData: Icons.share_rounded,
          onPressed: () async {
            UriUtil.share(context, url);
          },
        ),
        FlutterContextMenuItem(
          "复制列表链接",
          iconData: Icons.link_rounded,
          onPressed: () async {
            Utils.copy(context, url, toastText: "已复制列表链接");
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
    (key.currentState as RefreshMixin).refresh();
  }

  scrollToTop() async {
    await (key.currentState as RefreshMixin).scrollToTop();
    _scrollToHideController.show();
  }
}
