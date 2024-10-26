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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Openapi/models/timeline_twitter_list.dart';
import 'package:twitee/Screens/Detail/list_detail_screen.dart';
import 'package:twitee/Utils/hive_util.dart';

import '../../Api/list_api.dart';
import '../../Models/response_result.dart';
import '../../Openapi/models/user.dart';
import '../../Openapi/models/user_legacy.dart';
import '../../Resources/theme.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/itoast.dart';
import '../../Utils/responsive_util.dart';
import '../Dialog/dialog_builder.dart';
import '../Item/item_builder.dart';

class TwitterListItem extends StatefulWidget {
  const TwitterListItem({super.key, required this.list});

  final TimelineTwitterList list;

  @override
  TwitterListItemState createState() => TwitterListItemState();
}

class TwitterListItemState extends State<TwitterListItem> {
  UserInfo? info = HiveUtil.getUserInfo();

  TimelineTwitterListInfo get listInfo => widget.list.list;

  UserLegacy? get user => listInfo.userResults.result != null
      ? (listInfo.userResults.result! as User).legacy
      : null;

  bool get isMyself => info?.screenName == user?.screenName;

  @override
  Widget build(BuildContext context) {
    return _buildListItem(widget.list);
  }

  _buildListItem(TimelineTwitterList list) {
    User user = list.list.userResults.result as User;
    return ItemBuilder.buildClickItem(
      Material(
        color: MyTheme.itemBackground,
        borderRadius: MyTheme.responsiveBorderRadius,
        child: InkWell(
          onTap: () {
            panelScreenState
                ?.pushPage(ListDetailScreen(listId: list.list.idStr));
          },
          borderRadius: MyTheme.responsiveBorderRadius,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: MyTheme.responsiveBorderRadius,
                border: MyTheme.responsiveBottomBorder),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ItemBuilder.buildCachedImage(
                    imageUrl:
                        list.list.defaultBannerMedia.mediaInfo.originalImgUrl,
                    context: context,
                    width: 64,
                    height: 64,
                    showLoading: false,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        list.list.name,
                        style: Theme.of(context).textTheme.titleLarge,
                        maxLines: 1,
                      ),
                      Text(
                        user.legacy.name,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "@${user.legacy.screenName}",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "${list.list.memberCount} 位成员",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                if (isMyself)
                  ItemBuilder.buildIconButton(
                    context: context,
                    icon: Icon(list.list.isPrivate
                        ? Icons.lock_rounded
                        : Icons.lock_open_rounded),
                    onTap: () async {
                      HapticFeedback.mediumImpact();
                      if (list.list.isPrivate) {
                        DialogBuilder.showConfirmDialog(
                          context,
                          title: "设为公开",
                          message: "确定要将列表${list.list.name}设为公开吗？",
                          onTapConfirm: () async {
                            ResponseResult res = await ListApi.updateList(
                              listId: list.list.idStr,
                              isPrivate: false,
                              description: list.list.description,
                              name: list.list.name,
                            );
                            if (res.success) {
                              setState(() {
                                list.list.mode = "Public";
                              });
                              IToast.showTop("设置成功");
                            } else {
                              IToast.showTop("设置失败");
                            }
                          },
                        );
                      } else {
                        ResponseResult res = await ListApi.updateList(
                          listId: list.list.idStr,
                          isPrivate: true,
                          description: list.list.description,
                          name: list.list.name,
                        );
                        if (res.success) {
                          setState(() {
                            list.list.mode = "Private";
                          });
                          IToast.showTop("设置成功");
                        } else {
                          IToast.showTop("设置失败");
                        }
                      }
                    },
                  ),
                ItemBuilder.buildIconButton(
                  context: context,
                  icon: Icon(
                    (isMyself ? list.list.pinning : list.list.following)
                        ? Icons.push_pin_rounded
                        : Icons.push_pin_outlined,
                    size: 22,
                  ),
                  padding: const EdgeInsets.all(9),
                  onTap: () async {
                    HapticFeedback.mediumImpact();
                    processPinOrUnpin(
                      context,
                      list.list,
                      onUpdate: (bool pin, [int? count]) {
                        setState(() {
                          if (isMyself) {
                            list.list.pinning = pin;
                          } else {
                            list.list.following = pin;
                            if (count != null) {
                              list.list.subscriberCount = count;
                            }
                          }
                          setState(() {});
                        });
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static processPinOrUnpin(
    BuildContext context,
    TimelineTwitterListInfo list, {
    Function(bool, [int?])? onUpdate,
  }) async {
    UserInfo? info = HiveUtil.getUserInfo();
    UserLegacy? user = list.userResults.result != null
        ? (list.userResults.result! as User?)?.legacy
        : null;
    bool isMyself = (info?.screenName == user?.screenName);
    if (isMyself) {
      if (list.pinning) {
        DialogBuilder.showConfirmDialog(
          context,
          title: "取消置顶${list.name}",
          message: "是否取消置顶${list.name}？",
          onTapConfirm: () async {
            ResponseResult res = await IToast.showLoadingSnackbar("取消置顶中",
                () async => await ListApi.unpinList(listId: list.idStr));
            if (res.success) {
              onUpdate?.call(false);
              homeScreenState?.refreshPinnedLists();
              IToast.showTop("取消置顶成功");
            } else {
              IToast.showTop("取消置顶失败");
            }
          },
        );
      } else {
        ResponseResult res = await IToast.showLoadingSnackbar(
            "置顶中", () async => await ListApi.pinList(listId: list.idStr));
        if (res.success) {
          onUpdate?.call(true);
          homeScreenState?.refreshPinnedLists();
        } else {
          IToast.showTop("置顶失败");
        }
      }
    } else {
      var listInfo = list;
      if (listInfo.following) {
        DialogBuilder.showConfirmDialog(
          context,
          title: "取消订阅${listInfo.name}",
          message: "是否取消订阅${listInfo.name}？",
          onTapConfirm: () async {
            var res = await IToast.showLoadingSnackbar("取消订阅中",
                () async => await ListApi.unSubscribe(listId: list.idStr));
            if (res.success) {
              onUpdate?.call(false, listInfo.subscriberCount--);
              homeScreenState?.refreshPinnedLists();
              listScreenState?.refreshLists();
              IToast.showTop("取消订阅成功");
            } else {
              IToast.showTop("取消订阅失败");
            }
          },
        );
      } else {
        var res = await IToast.showLoadingSnackbar(
            "订阅中", () async => await ListApi.subscribe(listId: list.idStr));
        if (res.success) {
          onUpdate?.call(true, listInfo.subscriberCount++);
          homeScreenState?.refreshPinnedLists();
          listScreenState?.refreshLists();
          IToast.showTop("订阅成功");
        } else {
          IToast.showTop("订阅失败");
        }
      }
    }
  }
}
