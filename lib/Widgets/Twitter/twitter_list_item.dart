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
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Openapi/models/timeline_twitter_list.dart';
import 'package:twitee/Screens/Detail/list_detail_screen.dart';
import 'package:twitee/Utils/hive_util.dart';

import '../../Api/list_api.dart';
import '../../Models/response_result.dart';
import '../../Openapi/models/user.dart';
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

  @override
  Widget build(BuildContext context) {
    return _buildListItem(widget.list);
  }

  _buildListItem(TimelineTwitterList list) {
    User user = list.list.userResults.result as User;
    var radius = ResponsiveUtil.isLandscape()
        ? BorderRadius.circular(8)
        : BorderRadius.zero;
    return ItemBuilder.buildClickItem(
      Material(
        color: Theme.of(context).canvasColor,
        borderRadius: radius,
        child: InkWell(
          onTap: () {
            panelScreenState?.pushPage(ListDetailScreen(
              listId: list.list.idStr,
              userId: user.restId ?? "",
            ));
          },
          borderRadius: radius,
          child: Container(
            decoration: BoxDecoration(borderRadius: radius),
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
                if (info?.screenName == user.legacy.screenName)
                  ItemBuilder.buildIconButton(
                    context: context,
                    icon: Icon(list.list.isPrivate
                        ? Icons.lock_rounded
                        : Icons.lock_open_rounded),
                    onTap: () async {
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
                if (info?.screenName == user.legacy.screenName)
                  ItemBuilder.buildIconButton(
                    context: context,
                    icon: Icon(
                      list.list.pinning
                          ? Icons.pin_drop_rounded
                          : Icons.pin_drop_outlined,
                      size: 22,
                    ),
                    padding: const EdgeInsets.all(9),
                    onTap: () async {
                      if (list.list.pinning) {
                        ResponseResult res =
                            await ListApi.unpinList(listId: list.list.idStr);
                        if (res.success) {
                          setState(() {
                            list.list.pinning = false;
                          });
                          homeScreenState?.refreshPinnedLists();
                        } else {
                          IToast.showTop("取消置顶失败");
                        }
                      } else {
                        ResponseResult res =
                            await ListApi.pinList(listId: list.list.idStr);
                        if (res.success) {
                          setState(() {
                            list.list.pinning = true;
                          });
                          homeScreenState?.refreshPinnedLists();
                        } else {
                          IToast.showTop("置顶失败");
                        }
                      }
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
