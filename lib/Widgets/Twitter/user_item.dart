import 'package:flutter/material.dart';
import 'package:twitee/Utils/app_provider.dart';

import '../../Api/user_api.dart';
import '../../Openapi/models/user_legacy.dart';
import '../../Screens/Detail/user_detail_screen.dart';
import '../../Utils/asset_util.dart';
import '../../Utils/itoast.dart';
import '../../Utils/responsive_util.dart';
import '../Dialog/dialog_builder.dart';
import '../Item/item_builder.dart';

class UserItem extends StatefulWidget {
  const UserItem({super.key, required this.userLegacy});

  final UserLegacy userLegacy;

  @override
  State<UserItem> createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  UserLegacy get user => widget.userLegacy;

  @override
  Widget build(BuildContext context) {
    String screenName = user.screenName ?? user.name;
    var radius = ResponsiveUtil.isLandscape()
        ? BorderRadius.circular(8)
        : BorderRadius.zero;
    return ItemBuilder.buildClickItem(
      Material(
        color: Theme.of(context).canvasColor,
        borderRadius: radius,
        child: InkWell(
          onTap: () {
            panelScreenState
                ?.pushPage(UserDetailScreen(screenName: screenName));
          },
          borderRadius: radius,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: radius,
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
                                          background:
                                              Theme.of(context).cardColor,
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
                                horizontal: 16, vertical: 8),
                            onTap: () async {
                              if (user.following ?? false) {
                                DialogBuilder.showConfirmDialog(context,
                                    title: "取消关注 @$screenName？",
                                    message: "你将无法在已关注中看到 @$screenName 的帖子或通知。",
                                    onTapConfirm: () async {
                                  var res = await UserApi.unfollow(
                                      userId: screenName);
                                  if (res.success) {
                                    user.following = false;
                                    setState(() {});
                                    IToast.showTop("已取消关注@$screenName");
                                  } else {
                                    IToast.showTop("取消关注@$screenName失败");
                                  }
                                });
                              } else {
                                var res =
                                    await UserApi.follow(userId: screenName);
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
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
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
