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
import 'package:twitee/Api/user_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Hidable/scroll_to_hide.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/user_legacy.dart';
import '../../Widgets/Dialog/dialog_builder.dart';

class FriendsFlowScreen extends StatefulWidget {
  const FriendsFlowScreen({super.key, required this.userId});

  final String userId;

  static const String routeName = "/navigtion/friendsFlow";

  @override
  State<FriendsFlowScreen> createState() => _FriendsFlowScreenState();
}

class _FriendsFlowScreenState extends State<FriendsFlowScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  String? cursorTop;
  String? cursorBottom;

  List<UserLegacy> users = [];

  bool _loading = false;

  final ScrollController _scrollController = ScrollController();

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  late AnimationController _refreshRotationController;
  bool _noMore = false;

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
  }

  _scrollToTop() async {
    await _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  _onRefresh() async {
    if (_loading) return;
    _loading = true;
    cursorBottom = null;
    try {
      ResponseResult res = await UserApi.getFriendList(userId: widget.userId);
      if (res.success) {
        List<UserLegacy> newEntries = res.data;
        users = newEntries;
        setState(() {});
        if (newEntries.isEmpty) {
          _noMore = true;
          return IndicatorResult.noMore;
        } else {
          _noMore = false;
          return IndicatorResult.success;
        }
      } else {
        IToast.showTop("加载失败：${res.message}");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to get homeline", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
    }
  }

  _onLoad() async {
    if (cursorBottom == null) return;
    if (_loading) return;
    _loading = true;
    try {
      ResponseResult res = await UserApi.getFriendList(
          userId: widget.userId, cursorBottom: cursorBottom);
      if (res.success) {
        List<UserLegacy> newEntries = res.data;
        users.addAll(newEntries);
        setState(() {});
        if (newEntries.isEmpty) {
          _noMore = true;
          return IndicatorResult.noMore;
        } else {
          _noMore = false;
          return IndicatorResult.success;
        }
      } else {
        IToast.showTop("加载失败：${res.message}");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to load homeline", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      children: [
        EasyRefresh(
          onRefresh: () async {
            return await _onRefresh();
          },
          onLoad: () async {
            return await _onLoad();
          },
          refreshOnStart: true,
          triggerAxis: Axis.vertical,
          controller: _easyRefreshController,
          child: ItemBuilder.buildLoadMoreNotification(
            onLoad: _onLoad,
            noMore: _noMore,
            child: WaterfallFlow.extent(
              controller: _scrollController,
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
              maxCrossAxisExtent: 600,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              children: List.generate(
                users.length,
                (index) {
                  return _buildUserItem(users[index]);
                },
              ),
            ),
          ),
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: ScrollToHide(
            scrollController: _scrollController,
            hideDirection: Axis.vertical,
            child: _buildFloatingButtons(),
          ),
        ),
      ],
    );
  }

  _buildUserItem(UserLegacy user) {
    String screenName = user.screenName ?? user.name;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemBuilder.buildAvatar(
            context: context,
            imageUrl: user.profileImageUrlHttps ?? AssetUtil.avatar,
            size: 40,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  user.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              if (user.followedBy ?? false)
                                const SizedBox(width: 5),
                              if (user.followedBy ?? false)
                                ItemBuilder.buildRoundButton(context,
                                    text: "关注了你",
                                    radius: 4,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.apply(fontSizeDelta: -2),
                                    background: Theme.of(context).cardColor,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 2)),
                            ],
                          ),
                          Text(
                            "@$screenName",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ItemBuilder.buildRoundButton(
                      context,
                      text: user.isFriend
                          ? "互相关注"
                          : user.following ?? false
                              ? "正在关注"
                              : "关注",
                      background: user.isFriend
                          ? Colors.green
                          : user.following ?? false
                              ? null
                              : Theme.of(context).primaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 6),
                      onTap: () async {
                        if (user.following ?? false) {
                          DialogBuilder.showConfirmDialog(context,
                              title: "取消关注 @$screenName？",
                              message: "你将无法在已关注中看到 @$screenName 的帖子或通知。",
                              onTapConfirm: () async {
                            var res =
                                await UserApi.unfollow(userId: user.idStr!);
                            if (res.success) {
                              user.following = false;
                              setState(() {});
                              IToast.showTop("已取消关注@$screenName");
                            } else {
                              IToast.showTop("取消关注@$screenName失败");
                            }
                          });
                        } else {
                          var res = await UserApi.follow(userId: user.idStr!);
                          if (res.success) {
                            user.following = true;
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
                ItemBuilder.buildHtmlWidget(
                  context,
                  user.description,
                  textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
            _refreshRotationController.repeat();
            await _scrollToTop();
            _refreshRotationController.stop();
            _refreshRotationController.forward();
            _easyRefreshController.callRefresh();
            homeScreenState?.refreshPinnedLists();
          },
        ),
        const SizedBox(height: 10),
        ItemBuilder.buildShadowIconButton(
          context: context,
          icon: const Icon(Icons.arrow_upward_rounded),
          onTap: () {
            _scrollToTop();
          },
        ),
      ],
    );
  }
}
