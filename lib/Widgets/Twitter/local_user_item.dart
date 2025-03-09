/*
 * Copyright (c) 2025 Robert-Stackflow.
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
import 'package:twitee/Models/local_model.dart';
import 'package:twitee/Resources/theme.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/utils.dart';

import '../../Screens/Detail/user_detail_screen.dart';
import '../../Utils/asset_util.dart';
import '../../Utils/itoast.dart';
import '../../Utils/tweet_util.dart';
import '../Item/item_builder.dart';

class LocalUserItem extends StatefulWidget {
  const LocalUserItem({
    super.key,
    required this.user,
  });

  final LocalUserModel user;

  @override
  State<LocalUserItem> createState() => _LocalUserItemState();
}

class _LocalUserItemState extends State<LocalUserItem> {
  LocalUserModel get user => widget.user;

  @override
  Widget build(BuildContext context) {
    String screenName = user.screenName;
    TextStyle? titleLarge =
        Theme.of(context).textTheme.titleLarge?.apply(fontSizeDelta: -2);
    return ItemBuilder.buildClickItem(
      Material(
        color: MyTheme.itemBackground,
        borderRadius: MyTheme.responsiveBorderRadius,
        child: InkWell(
          onTap: () {
            panelScreenState
                ?.pushPage(UserDetailScreen(screenName: screenName));
          },
          borderRadius: MyTheme.responsiveBorderRadius,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: MyTheme.responsiveBorderRadius,
              border: MyTheme.responsiveBottomBorder,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemBuilder.buildAvatar(
                  context: context,
                  imageUrl: TweetUtil.getBigAvatarUrl(user.avatar) ??
                      AssetUtil.avatar,
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
                                Text(
                                  user.nickName,
                                  style: titleLarge,
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
                            text: "开启转推",
                            background: null,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            onTap: () async {
                              appProvider.removeBlockRetweetUser(screenName);
                              IToast.showTop("已开启转推（本地）");
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "关闭转推于 ${Utils.formatTimestamp(user.lastBlockRetweetTime)}",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.apply(fontSizeDelta: 2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
