import 'package:flutter/material.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/color_util.dart';

import '../../Api/user_api.dart';
import '../../Openapi/models/community_data_role.dart';
import '../../Openapi/models/user_legacy.dart';
import '../../Screens/Detail/user_detail_screen.dart';
import '../../Utils/asset_util.dart';
import '../../Utils/itoast.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/tweet_util.dart';
import '../Dialog/dialog_builder.dart';
import '../Item/custom_html_widget.dart';
import '../Item/item_builder.dart';

class UserItem extends StatefulWidget {
  const UserItem({
    super.key,
    required this.userLegacy,
    required this.userId,
    this.communityRole,
  });

  final UserLegacy userLegacy;

  final String userId;

  final CommunityDataRole? communityRole;

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
    Color primaryColor = Theme.of(context).primaryColor;
    Color cardColor = Theme.of(context).cardColor;
    Color primaryComplementaryColor =
        ColorUtil.getComplementaryColor(primaryColor);
    TextStyle? bodyMedium = Theme.of(context).textTheme.bodyMedium;
    TextStyle? titleLarge =
        Theme.of(context).textTheme.titleLarge?.apply(fontSizeDelta: -2);
    EdgeInsets tagPadding =
        const EdgeInsets.symmetric(horizontal: 4, vertical: 2);
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
                  imageUrl:
                      TweetUtil.getBigAvatarUrl(user.profileImageUrlHttps) ??
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
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: user.name,
                                        style: titleLarge,
                                      ),
                                      if (widget.communityRole != null &&
                                          widget.communityRole!
                                              .isAdminOrModerator)
                                        WidgetSpan(
                                          alignment:
                                              PlaceholderAlignment.middle,
                                          child: Container(
                                            margin: const EdgeInsets.all(5),
                                            child: ItemBuilder.buildRoundButton(
                                              context,
                                              text: widget.communityRole ==
                                                      CommunityDataRole.admin
                                                  ? "管理员"
                                                  : "版主",
                                              radius: 4,
                                              textStyle: bodyMedium?.apply(
                                                  fontSizeDelta: -2,
                                                  color:
                                                      primaryComplementaryColor),
                                              background: primaryColor,
                                              padding: tagPadding,
                                            ),
                                          ),
                                        ),
                                      if (user.followedBy ?? false)
                                        WidgetSpan(
                                          alignment:
                                              PlaceholderAlignment.middle,
                                          child: Container(
                                            margin: const EdgeInsets.all(5),
                                            child: ItemBuilder.buildRoundButton(
                                              context,
                                              text: "关注了你",
                                              radius: 4,
                                              textStyle: bodyMedium?.apply(
                                                  fontSizeDelta: -2),
                                              background: cardColor,
                                              padding: tagPadding,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
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
                                  var res = await IToast.showLoadingSnackbar(
                                      "正在取消关注@$screenName",
                                      () async => await UserApi.unfollow(
                                          userId: widget.userId));
                                  if (res.success) {
                                    user.following = false;
                                    setState(() {});
                                    IToast.showTop("已取消关注@$screenName");
                                  } else {
                                    IToast.showTop("取消关注@$screenName失败");
                                  }
                                });
                              } else {
                                var res = await IToast.showLoadingSnackbar(
                                    "正在关注@$screenName",
                                    () async => await UserApi.follow(
                                        userId: widget.userId));
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
                      const SizedBox(height: 5),
                      CustomHtmlWidget(
                        content: user.description,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.apply(fontSizeDelta: 2),
                        heightDelta: 0,
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
