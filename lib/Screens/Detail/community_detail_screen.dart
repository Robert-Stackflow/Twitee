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
import 'package:twitee/Api/community_api.dart';
import 'package:twitee/Api/post_api.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Screens/Detail/community_insearch_screen.dart';
import 'package:twitee/Screens/Flow/community_list_flow_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/enums.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/BottomSheet/bottom_sheet_builder.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';

import '../../Models/tab_item_data.dart';
import '../../Resources/theme.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/route_util.dart';
import '../../Utils/uri_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Custom/sliver_appbar_delegate.dart';
import '../../Widgets/Hidable/scroll_to_hide.dart';
import '../Flow/community_media_flow_screen.dart';
import '../Flow/community_members_flow_screen.dart';
import 'community_members_screen.dart';

class CommunityDetailScreen extends StatefulWidget {
  const CommunityDetailScreen({
    super.key,
    required this.communityId,
  });

  final String communityId;

  static const String routeName = "/communityDetail";

  @override
  State<CommunityDetailScreen> createState() => CommunityDetailScreenState();
}

class CommunityDetailScreenState extends State<CommunityDetailScreen>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  InitPhase _initPhase = InitPhase.haveNotConnected;

  late AnimationController _refreshRotationController;
  final ScrollToHideController _scrollToHideController =
      ScrollToHideController();

  ScrollController? primaryController;

  GlobalKey key = GlobalKey();

  CommunityData? communityData;

  String get bannerUrl =>
      communityData!.customBannerMedia?.mediaInfo?.originalImgUrl ??
      communityData!.defaultBannerMedia?.mediaInfo?.originalImgUrl ??
      "";

  late TabController _tabController;
  TabItemDataList tabDataList = TabItemDataList([]);

  int get currentIndex => _tabController.index;

  initTab() {
    primaryController = PrimaryScrollController.of(context);
    tabDataList.addAll([
      TabItemData.build(
        context,
        "热门",
        (key2, scrollController2) => CommunityListFlowScreen(
          key: key2,
          type: CommunityListFlowType.SpecificCommunity,
          rankType: RankType.Relevance,
          communityId: widget.communityId,
          nested: true,
          scrollController: primaryController,
        ),
      ),
      TabItemData.build(
        context,
        "最新",
        (key2, scrollController2) => CommunityListFlowScreen(
          key: key2,
          type: CommunityListFlowType.SpecificCommunity,
          rankType: RankType.Recency,
          communityId: widget.communityId,
          nested: true,
          scrollController: primaryController,
        ),
      ),
      TabItemData.build(
        context,
        "媒体",
        (key2, scrollController2) => CommunityMediaFlowScreen(
          key: key2,
          communityId: widget.communityId,
          nested: true,
          scrollController: primaryController,
        ),
      ),
    ]);
    _tabController = TabController(length: tabDataList.length, vsync: this);
  }

  fetchListInfo() async {
    _initPhase = InitPhase.connecting;
    setState(() {});
    var res = await CommunityApi.getCommunityInfoByOneQuery(
        communityId: widget.communityId);
    if (res.success) {
      communityData = (res.data as Community).result;
      if (communityData != null &&
          communityData!.role == CommunityDataRole.member) {
        communityData!.isMember = true;
      }
      _initPhase = InitPhase.successful;
    } else {
      IToast.showTop("获取社群信息失败");
      _initPhase = InitPhase.failed;
    }
    if (communityData == null) _initPhase = InitPhase.failed;
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
      fetchListInfo();
      initTab();
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
              title:
                  "社群详情${communityData != null ? " - ${communityData!.name}" : ""}",
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
              communityData != null ? communityData!.name : "",
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
                icon: const Icon(Icons.search_rounded, color: Colors.white),
                onTap: () {
                  panelScreenState?.pushPage(CommunityInsearchScreen(
                    searchKey: '',
                    communityId: widget.communityId,
                    communityName: communityData!.name,
                  ));
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
                      context,
                      buildCommunityContextMenu(
                        context,
                        communityData!,
                        onUpdate: (bool isPinned) {
                          communityData!.isPinned = isPinned;
                          if (mounted) setState(() {});
                        },
                      ));
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
              scrollControllers: [primaryController ?? ScrollController()],
              hideDirection: AxisDirection.down,
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

  Widget _buildListInfo() {
    UserLegacy? creator =
        (communityData!.creatorResults?.result as User?)?.legacy;
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      communityData!.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.apply(fontSizeDelta: 5),
                    ),
                    // if (communityData!.primaryCommunityTopic != null) ...[
                    //   const SizedBox(height: 8),
                    //   ItemBuilder.buildRoundButton(
                    //     context,
                    //     text: communityData!.primaryCommunityTopic!.topicName,
                    //     padding: const EdgeInsets.symmetric(
                    //         horizontal: 6, vertical: 2),
                    //     showBorder: true,
                    //     background: Colors.transparent,
                    //     borderColor: Theme.of(context).primaryColor,
                    //     textStyle: Theme.of(context)
                    //         .textTheme
                    //         .labelSmall
                    //         ?.apply(color: Theme.of(context).primaryColor),
                    //     onTap: () {},
                    //   ),
                    // ],
                  ],
                ),
              ),
              if (ResponsiveUtil.isLandscape()) ..._buildOperationButtons(),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ItemBuilder.buildCountItem(
                context,
                title: "成员",
                value: communityData!.memberCount,
                onTap: () {
                  panelScreenState?.pushPage(
                    CommunityMembersScreen(
                      communityId: widget.communityId,
                      initType: CommunityMembersFlowType.members,
                    ),
                  );
                },
              ),
              const SizedBox(width: 10),
              ItemBuilder.buildCountItem(
                context,
                title: "版主",
                value: communityData!.moderatorCount ?? 0,
                onTap: () {
                  panelScreenState?.pushPage(
                    CommunityMembersScreen(
                      communityId: widget.communityId,
                      initType: CommunityMembersFlowType.moderators,
                    ),
                  );
                },
              ),
              const Spacer(),
              if (!ResponsiveUtil.isLandscape()) ..._buildOperationButtons(),
            ],
          ),
          if (Utils.isNotEmpty(communityData!.description)) ...[
            const SizedBox(height: 8),
            Text(
              communityData!.description,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.apply(fontSizeDelta: 1),
              textAlign: TextAlign.start,
            ),
          ],
          if (ResponsiveUtil.isLandscape() && creator != null) ...[
            const SizedBox(height: 8),
            Text(
              "${creator.name}@${creator.screenName ?? ""} 创建于 ${Utils.formatTimestamp(communityData!.createdAt ?? 0)}",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.apply(fontSizeDelta: 1),
              textAlign: TextAlign.start,
            ),
          ],
        ],
      ),
    );
  }

  _buildOperationButtons() {
    return [
      ItemBuilder.buildRoundButton(
        context,
        text: communityData!.isMember ? "已加入" : "加入",
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        background: Theme.of(context).primaryColor,
        onTap: () async {
          if (communityData!.isMember) {
            DialogBuilder.showConfirmDialog(
              context,
              title: "退出${communityData!.name}",
              message:
                  "是否退出${communityData!.name}？你将无法访问社群，也无法再参与，但你之前的帖子仍然会显示。",
              onTapConfirm: () async {
                var res = await IToast.showLoadingSnackbar(
                  "退出社群中",
                  () async => CommunityApi.leaveCommunity(
                      communityId: widget.communityId),
                );
                if (res.success) {
                  communityData!.isMember = false;
                  communityData!.memberCount--;
                  if (mounted) setState(() {});
                  IToast.showTop("退出社群成功");
                } else {
                  IToast.showTop("退出社群失败");
                }
              },
            );
          } else {
            DialogBuilder.showConfirmDialog(
              context,
              title: "查看并同意${communityData!.name}的规则",
              confirmButtonText: "同意并加入",
              messageChild: buildRuleWidget(context, communityData!),
              onTapConfirm: () async {
                var res = await IToast.showLoadingSnackbar(
                  "加入社群中",
                  () async => CommunityApi.joinCommunity(
                      communityId: widget.communityId),
                );
                if (res.success) {
                  communityData!.isMember = true;
                  communityData!.memberCount++;
                  if (mounted) setState(() {});
                  IToast.showTop("加入社群成功");
                } else {
                  IToast.showTop("加入社群失败");
                }
              },
            );
          }
        },
      ),
      if (ResponsiveUtil.isLandscape()) ...[
        const SizedBox(width: 8),
        ItemBuilder.buildRoundButton(
          context,
          icon: const Icon(Icons.search_rounded, size: 20),
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          onTap: () {
            panelScreenState?.pushPage(CommunityInsearchScreen(
              searchKey: '',
              communityId: widget.communityId,
              communityName: communityData!.name,
            ));
          },
        ),
        const SizedBox(width: 10),
        ItemBuilder.buildRoundButton(
          context,
          icon: const Icon(Icons.more_horiz_rounded),
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          onTap: () {
            BottomSheetBuilder.showContextMenu(
                context,
                buildCommunityContextMenu(
                  context,
                  communityData!,
                  onUpdate: (bool isPinned) {
                    communityData!.isPinned = isPinned;
                    if (mounted) setState(() {});
                  },
                ));
          },
        ),
      ],
    ];
  }

  static Widget buildRuleWidget(
      BuildContext context, CommunityData communityData) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 300),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          ...communityData.rules.map(
            (e) => Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      (communityData.rules.indexOf(e) + 1).toString(),
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.apply(fontWeightDelta: 2),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          e.name,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 3),
                        if (Utils.isNotEmpty(e.description))
                          Text(
                            e.description!,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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

  static buildCommunityContextMenu(
    BuildContext context,
    CommunityData communityData, {
    Function(bool)? onUpdate,
    bool showUrlButtons = true,
  }) {
    String id = communityData.restId ?? communityData.idStr ?? "";
    String url = "https://x.com/i/communities/$id";
    return GenericContextMenu(
      buttonConfigs: [
        if (!showUrlButtons)
          ContextMenuButtonConfig(
            "查看社群",
            iconData: Icons.people_outlined,
            onPressed: () async {
              RouteUtil.pushPanelCupertinoRoute(
                  context, CommunityDetailScreen(communityId: id));
            },
          ),
        ContextMenuButtonConfig(
          communityData.isPinned ? "取消置顶社群" : "置顶社群",
          isWarning: communityData.isPinned,
          iconData: (communityData.isPinned
              ? Icons.push_pin_outlined
              : Icons.push_pin_rounded),
          onPressed: () async {
            if (communityData.isPinned) {
              DialogBuilder.showConfirmDialog(context,
                  title: "取消置顶${communityData.name}",
                  message: "是否取消置顶${communityData.name}？",
                  onTapConfirm: () async {
                var res = await IToast.showLoadingSnackbar(
                    "取消置顶社群中",
                    () async =>
                        await CommunityApi.unpinCommunity(communityId: id));
                if (res.success) {
                  communityData.isPinned = false;
                  onUpdate?.call(false);
                  homeScreenState?.refreshPinnedLists();
                  IToast.showTop("取消置顶社群成功");
                } else {
                  IToast.showTop("取消置顶社群失败");
                }
              });
            } else {
              var res = await IToast.showLoadingSnackbar("置顶社群中",
                  () async => await CommunityApi.pinCommunity(communityId: id));
              if (res.success) {
                communityData.isPinned = true;
                onUpdate?.call(true);
                homeScreenState?.refreshPinnedLists();
                IToast.showTop("置顶社群成功");
              } else {
                IToast.showTop("置顶社群失败");
              }
            }
          },
        ),
        if (showUrlButtons)
          ContextMenuButtonConfig(
            "查看规则",
            iconData: Icons.rule_rounded,
            onPressed: () async {
              DialogBuilder.showInfoDialog(
                context,
                title: "${communityData.name}的规则",
                messageChild: buildRuleWidget(context, communityData),
              );
            },
          ),
        if (showUrlButtons) ContextMenuButtonConfig.divider(),
        if (showUrlButtons)
          ContextMenuButtonConfig(
            "分享社群",
            iconData: Icons.share_rounded,
            onPressed: () async {
              UriUtil.share(context, url);
            },
          ),
        if (showUrlButtons)
          ContextMenuButtonConfig(
            "复制社群链接",
            iconData: Icons.link_rounded,
            onPressed: () async {
              Utils.copy(context, url, toastText: "已复制社群链接");
            },
          ),
        if (showUrlButtons)
          ContextMenuButtonConfig(
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
    tabDataList.getRefreshMixin(_tabController.index)?.refresh();
  }

  scrollToTop() async {
    tabDataList.getRefreshMixin(_tabController.index)?.scrollToTop();
    _scrollToHideController.show();
  }
}
