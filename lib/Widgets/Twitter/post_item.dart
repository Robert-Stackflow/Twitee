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

import 'package:context_menus/context_menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitee/Api/user_api.dart';
import 'package:twitee/Models/feedback_actions.dart';
import 'package:twitee/Resources/theme.dart';
import 'package:twitee/Screens/Detail/list_membership_manage_screen.dart';
import 'package:twitee/Screens/Detail/user_detail_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/constant.dart';
import 'package:twitee/Utils/image_util.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Utils/uri_util.dart';
import 'package:twitee/Utils/video_player_manager.dart';
import 'package:twitee/Widgets/BottomSheet/bottom_sheet_builder.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';
import 'package:twitee/Widgets/Twitter/twitter_image_grid.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_control_panel/video_player_control_panel.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../Api/post_api.dart';
import '../../Openapi/export.dart';
import '../../Screens/Detail/community_detail_screen.dart';
import '../../Screens/Detail/community_insearch_screen.dart';
import '../../Screens/Detail/tweet_detail_screen.dart';
import '../../Utils/asset_util.dart';
import '../../Utils/ilogger.dart';
import '../../Utils/route_util.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Item/item_builder.dart';
import '../Custom/hero_media_view_screen.dart';
import '../Item/custom_html_widget.dart';

class PostItem extends StatefulWidget {
  const PostItem({
    super.key,
    required this.entry,
    this.feedbackActions = const [],
    this.isDetail = false,
  });

  final List<FeedbackActions> feedbackActions;

  final TimelineAddEntry entry;

  final bool isDetail;

  @override
  PostItemState createState() => PostItemState();
}

class PostItemState extends State<PostItem> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  FeedbackType? _currentFeedbackType;
  final Map<String, VideoPlayerController> _videoControllers = {};
  final Map<String, bool> _isVisibleMap = {};
  final Map<String, bool> _hasPlayedOnceMap = {};
  final VideoPlaybackManager _playbackManager = VideoPlaybackManager();

  bool _isConversation(TimelineAddEntry entry) =>
      _isModule(entry) &&
      (entry.content as TimelineTimelineModule).displayType ==
          DisplayType.verticalConversation;

  bool _isModule(TimelineAddEntry entry) =>
      entry.content is TimelineTimelineModule;

  @override
  void initState() {
    super.initState();
    initVideo(widget.entry);
  }

  initVideo(TimelineAddEntry entry) {
    if (_isConversation(entry)) {
    } else if (!_isModule(entry)) {
      var timelineTweet =
          (entry.content as TimelineTimelineItem).itemContent as TimelineTweet;
      Tweet? tweet = TweetUtil.getTrueTweet(timelineTweet);
      if (tweet != null && TweetUtil.hasVideo(tweet)) {
        for (Media media in TweetUtil.getVideoMedia(tweet)) {
          _createController(TweetUtil.getMp4Url(media));
        }
      }
    }
  }

  _createController(
    String videoUrl, {
    bool isGif = false,
  }) {
    _videoControllers[videoUrl] = VideoPlayerController.networkUrl(
      Uri.parse(videoUrl),
      videoPlayerOptions: VideoPlayerOptions(),
    );
    VideoPlayerController controller = _videoControllers[videoUrl]!;
    controller.initialize().then((value) {
      if (controller.value.isInitialized) {
        if (isGif) {
          controller.setLooping(true);
          controller.play();
        } else {
          if (_isVisibleMap[videoUrl] ?? false) {
            _playbackManager.play(controller);
          }
        }
      }
    }).catchError((e, t) {
      ILogger.error("VideoController", "controller.initialize() error.", e, t);
    });
  }

  @override
  void dispose() {
    super.dispose();
    for (VideoPlayerController controller in _videoControllers.values) {
      controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _currentFeedbackType != null
        ? _buildFeedBackList(getTrueUser(widget.entry)!)
        : _buildItem(widget.entry);
  }

  User? getTrueUser(TimelineAddEntry entry) {
    var timelineTweet =
        (entry.content as TimelineTimelineItem).itemContent as TimelineTweet;
    return TweetUtil.getTrueUser(timelineTweet);
  }

  _buildItem(TimelineAddEntry entry) {
    if (_isConversation(entry)) {
      TimelineTimelineModule module = (entry.content as TimelineTimelineModule);
      List<ModuleItem> items = module.items!
          .where((e) => e != null)
          .map((e) => e as ModuleItem)
          .toList();
      items = items.where((e) => e.item.itemContent is TimelineTweet).toList();
      List<TimelineTweet> tweets =
          items.map((e) => e.item.itemContent as TimelineTweet).toList();
      return _buildConversation(tweets);
    } else if (!_isModule(entry)) {
      var timelineTweet =
          (entry.content as TimelineTimelineItem).itemContent as TimelineTweet;
      User? retweetedUser = TweetUtil.getRetweetedUser(timelineTweet);
      Tweet? tweet = TweetUtil.getTrueTweet(timelineTweet);
      if (tweet == null) {
        return Container();
      } else {
        if (retweetedUser != null) {
          return _buildNormalTweet(
            tweet,
            retweetedUser: retweetedUser,
            socialContext: timelineTweet.socialContext,
          );
        } else {
          return _buildNormalTweet(
            tweet,
            socialContext: timelineTweet.socialContext,
          );
        }
      }
    }
  }

  _processFeedback({
    required FeedbackType feedbackType,
    bool undo = false,
    required FeedbackType? destFeedbackType,
  }) async {
    String? actionMetaData = _getActionMeta(feedbackType);
    var res = await PostApi.feedback(
      feedbackType: feedbackType,
      actionMetaData: actionMetaData!,
      undo: undo,
    );
    if (res.success) {
      _currentFeedbackType = destFeedbackType;
      setState(() {});
      if (undo && destFeedbackType == null) IToast.showTop("已撤销反馈");
    } else {
      IToast.showTop(undo ? "撤销反馈失败" : "反馈失败");
    }
  }

  _buildFeedBackList(User user) {
    String screenName = user.legacy.screenName ?? user.legacy.name;
    return Material(
      borderRadius: MyTheme.responsiveBorderRadius,
      color: MyTheme.itemBackground,
      child: InkWell(
        onTap: () {},
        borderRadius: MyTheme.responsiveBorderRadius,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: MyTheme.responsiveBorderRadius,
            border: MyTheme.responsiveBottomBorder,
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFeedbackItem(
                text: _currentFeedbackType!.getMessage(screenName),
                onRevoke: () async {
                  HapticFeedback.mediumImpact();
                  await IToast.showLoadingSnackbar(
                    "正在撤销反馈",
                    () async => await _processFeedback(
                      feedbackType: _currentFeedbackType!,
                      undo: true,
                      destFeedbackType:
                          _currentFeedbackType == FeedbackType.DontLike
                              ? null
                              : FeedbackType.DontLike,
                    ),
                  );
                },
              ),
              if (_currentFeedbackType == FeedbackType.DontLike)
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMoreFeedbackItem(
                        text: "显示更少来自 $screenName 的帖子",
                        onTap: () async {
                          HapticFeedback.mediumImpact();
                          await IToast.showLoadingSnackbar(
                              "正在反馈",
                              () async => await _processFeedback(
                                    feedbackType: FeedbackType.SeeFewer,
                                    undo: false,
                                    destFeedbackType: FeedbackType.SeeFewer,
                                  ));
                        },
                      ),
                      const SizedBox(height: 8),
                      _buildMoreFeedbackItem(
                        text: "这个帖子没有相关性",
                        onTap: () async {
                          HapticFeedback.mediumImpact();
                          await IToast.showLoadingSnackbar(
                              "正在反馈",
                              () async => await _processFeedback(
                                    feedbackType: FeedbackType.NotRelevant,
                                    undo: false,
                                    destFeedbackType: FeedbackType.NotRelevant,
                                  ));
                        },
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  _buildMoreFeedbackItem({
    required String text,
    required Function() onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: MyTheme.border,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Material(
        color: MyTheme.background,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: onTap,
          enableFeedback: true,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(text),
          ),
        ),
      ),
    );
  }

  _buildFeedbackItem({
    required String text,
    required Function() onRevoke,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: MyTheme.background,
        border: MyTheme.border,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
            ),
          ),
          const SizedBox(width: 8),
          ItemBuilder.buildRoundButton(
            context,
            text: "撤销",
            onTap: onRevoke,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
        ],
      ),
    );
  }

  FeedbackActions? _getFeedbackAction(FeedbackType feedbackType) {
    try {
      return widget.feedbackActions
          .where((element) => element.value!.feedbackType == feedbackType.value)
          .first;
    } catch (e) {
      return null;
    }
  }

  String? _getActionMeta(FeedbackType feedbackType) {
    String? actionMetaData =
        _getFeedbackAction(FeedbackType.DontLike)?.value?.actionMetaData;
    return actionMetaData;
  }

  _buildMoreContextMenuButtons(Tweet tweet, User user) {
    String screenName = user.legacy.screenName ?? user.legacy.name;
    String url =
        "https://x.com/${user.legacy.screenName}/status/${tweet.restId}";
    String? actionMetaData = _getActionMeta(FeedbackType.DontLike);
    bool showFeedback =
        widget.feedbackActions.isNotEmpty && actionMetaData != null;
    bool showCommunity = tweet.communityResults != null;
    return GenericContextMenu(
      buttonConfigs: [
        if (showFeedback)
          ContextMenuButtonConfig(
            "对此帖子不感兴趣",
            iconData: Icons.sentiment_dissatisfied_rounded,
            onPressed: () async {
              HapticFeedback.mediumImpact();
              await IToast.showLoadingSnackbar(
                "正在反馈",
                () async => await _processFeedback(
                  feedbackType: FeedbackType.DontLike,
                  undo: false,
                  destFeedbackType: FeedbackType.DontLike,
                ),
              );
            },
          ),
        if (showFeedback) ContextMenuButtonConfig.divider(),
        if (showCommunity)
          ContextMenuButtonConfig(
            "搜索@$screenName在此社群中的帖子",
            iconData: Icons.person_search_outlined,
            onPressed: () {
              String query = "(from:$screenName)";
              RouteUtil.pushPanelCupertinoRoute(
                context,
                CommunityInsearchScreen(
                  searchKey: query,
                  communityId: tweet.communityResults!.result.restId ??
                      tweet.communityResults!.result.idStr ??
                      "",
                  communityName: tweet.communityResults!.result.name,
                ),
              );
            },
          ),
        ContextMenuButtonConfig(
          "${user.legacy.following ?? false ? "取消关注" : "关注"} @$screenName",
          iconData: user.legacy.following ?? false
              ? Icons.person_remove_outlined
              : Icons.person_add_outlined,
          onPressed: () async {
            if (user.legacy.following ?? false) {
              DialogBuilder.showConfirmDialog(context,
                  title: "取消关注 @$screenName？",
                  message: "你将无法在已关注中看到 @$screenName 的帖子或通知。",
                  onTapConfirm: () async {
                var res = await IToast.showLoadingSnackbar("正在取消关注@$screenName",
                    () async => await UserApi.unfollow(userId: user.restId!));
                if (res.success) {
                  user.legacy.following = false;
                  setState(() {});
                  IToast.showTop("已取消关注@$screenName");
                } else {
                  IToast.showTop("取消关注@$screenName失败");
                }
              });
            } else {
              var res = await IToast.showLoadingSnackbar("正在关注@$screenName",
                  () async => await UserApi.follow(userId: user.restId!));
              if (res.success) {
                user.legacy.following = true;
                setState(() {});
                IToast.showTop("已关注@$screenName");
              } else {
                IToast.showTop("关注@$screenName失败");
              }
            }
          },
        ),
        ContextMenuButtonConfig(
          "${user.legacy.blocking ?? false ? "取消屏蔽" : "屏蔽"} @$screenName",
          iconData: user.legacy.blocking ?? false
              ? Icons.favorite_border_rounded
              : Icons.heart_broken_outlined,
          onPressed: () async {
            if (user.legacy.blocking ?? false) {
              var res = await IToast.showLoadingSnackbar("正在取消屏蔽@$screenName",
                  () async => await UserApi.unblock(userId: user.restId!));
              if (res.success) {
                user.legacy.blocking = false;
                setState(() {});
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
                  var res = await IToast.showLoadingSnackbar("正在屏蔽@$screenName",
                      () async => await UserApi.block(userId: user.restId!));
                  if (res.success) {
                    user.legacy.blocking = true;
                    setState(() {});
                    IToast.showTop("已屏蔽@$screenName");
                  } else {
                    IToast.showTop("屏蔽@$screenName失败");
                  }
                },
              );
            }
          },
        ),
        ContextMenuButtonConfig(
          "${user.legacy.muting ?? false ? "取消隐藏" : "隐藏"} @$screenName",
          iconData: user.legacy.muting ?? false
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          onPressed: () async {
            if (user.legacy.muting ?? false) {
              var res = await IToast.showLoadingSnackbar("正在取消隐藏@$screenName",
                  () async => await UserApi.unmute(userId: user.restId!));
              if (res.success) {
                user.legacy.muting = false;
                setState(() {});
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
                  var res = await IToast.showLoadingSnackbar("正在隐藏@$screenName",
                      () async => await UserApi.mute(userId: user.restId!));
                  if (res.success) {
                    user.legacy.muting = true;
                    setState(() {});
                    IToast.showTop("已隐藏@$screenName");
                  } else {
                    IToast.showTop("隐藏@$screenName失败");
                  }
                },
              );
            }
          },
        ),
        ContextMenuButtonConfig(
          "从列表添加或移除 @$screenName",
          iconData: Icons.playlist_add_rounded,
          onPressed: () async {
            if (ResponsiveUtil.isLandscape()) {
              RouteUtil.pushDialogRoute(
                context,
                ListMembershipManageScreen(targetUserId: user.restId!),
              );
            } else {
              BottomSheetBuilder.showBottomSheet(
                context,
                (context) =>
                    ListMembershipManageScreen(targetUserId: user.restId!),
              );
            }
          },
        ),
        ContextMenuButtonConfig.divider(),
        ContextMenuButtonConfig(
          "分享帖子",
          iconData: Icons.share_rounded,
          onPressed: () async {
            UriUtil.share(context, url);
          },
        ),
        ContextMenuButtonConfig(
          "复制帖子链接",
          iconData: Icons.link_rounded,
          onPressed: () async {
            Utils.copy(context, url, toastText: "已复制帖子链接");
          },
        ),
        if (ResponsiveUtil.isMobile())
          ContextMenuButtonConfig(
            "访问原帖子",
            iconData: Icons.view_carousel_rounded,
            onPressed: () async {
              UriUtil.openInternal(context, url);
            },
          ),
        ContextMenuButtonConfig(
          "在浏览器打开",
          iconData: Icons.open_in_browser_rounded,
          onPressed: () async {
            UriUtil.openExternal(url);
          },
        ),
        // ContextMenuButtonConfig.divider(),
        // ContextMenuButtonConfig(
        //   "查看帖子互动量",
        //   onPressed: () async {},
        // ),
      ],
    );
  }

  _buildConversation(List<TimelineTweet> tweets) {
    return Container(
      decoration: BoxDecoration(border: MyTheme.responsiveBottomBorder),
      child: Column(
        children: List.generate(
          tweets.length,
          (index) {
            var tweet = TweetUtil.getTrueTweet(tweets[index]);
            return tweet != null
                ? _buildConversationItem(
                    tweet,
                    isFirst: index == 0,
                    isLast: index == tweets.length - 1,
                    socialContext: tweets[index].socialContext,
                  )
                : emptyWidget;
          },
        ),
      ),
    );
  }

  _buildConversationItem(
    Tweet tweet, {
    bool isFirst = false,
    bool isLast = false,
    SocialContextUnion? socialContext,
  }) {
    var userResultUnion = tweet.core!.userResults!.result;
    User user = userResultUnion as User;
    double avatarSize = 40;
    BorderRadius borderRadius = BorderRadius.zero;
    if (ResponsiveUtil.isLandscape()) {
      if (isFirst) {
        borderRadius = borderRadius
            .add(const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ))
            .resolve(null);
      }
      if (isLast) {
        borderRadius = borderRadius
            .add(const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ))
            .resolve(null);
      }
    }
    var body = Container(
      padding: const EdgeInsets.symmetric(horizontal: 8).add(
        EdgeInsets.only(
          top: 8,
          bottom: isLast ? 8 : 0,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemBuilder.buildAvatar(
                context: context,
                imageUrl: TweetUtil.getBigAvatarUrl(
                        user.legacy.profileImageUrlHttps) ??
                    AssetUtil.avatar,
                size: avatarSize,
                isOval: user.profileImageShape == UserProfileImageShape.circle,
                onTap: () {
                  panelScreenState?.pushPage(UserDetailScreen(
                      screenName: user.legacy.screenName ?? ""));
                },
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 4, right: 4, bottom: 10),
                  child: _buildTweetContent(
                    tweet,
                    bottom: isLast ? 0 : 8,
                  ),
                ),
              ),
            ],
          ),
          if (widget.isDetail) _buildOperations(tweet),
          if (!isLast)
            Positioned(
              left: avatarSize / 2,
              top: avatarSize + 2,
              bottom: isLast ? avatarSize : 0,
              child: Container(
                width: 2,
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          if (!isFirst)
            Positioned(
              left: avatarSize / 2,
              top: -12,
              child: Container(
                width: 2,
                height: 10,
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
        ],
      ),
    );
    var extendedBody = Material(
      color: MyTheme.itemBackground,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: () => panelScreenState
            ?.pushPage(TweetDetailScreen(tweetId: tweet.restId!)),
        child: body,
      ),
    );
    return widget.isDetail ? body : extendedBody;
  }

  _buildNormalTweet(
    Tweet tweet, {
    User? retweetedUser,
    SocialContextUnion? socialContext,
  }) {
    var userResultUnion = tweet.core!.userResults!.result;
    User user = userResultUnion as User;
    bool showCommunity =
        socialContext != null && socialContext is TimelineGeneralContext;
    var body = Container(
      decoration: BoxDecoration(
          borderRadius: MyTheme.responsiveBorderRadius,
          border: MyTheme.responsiveBottomBorder),
      padding: widget.isDetail
          ? const EdgeInsets.symmetric(vertical: 12, horizontal: 10)
          : const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showCommunity)
            _buildCommunityRow(socialContext, tweet.communityResults),
          if (showCommunity) const SizedBox(height: 8),
          if (retweetedUser != null) _buildRetweetRow(retweetedUser),
          if (retweetedUser != null) const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!widget.isDetail)
                ItemBuilder.buildAvatar(
                  context: context,
                  imageUrl: TweetUtil.getBigAvatarUrl(
                          user.legacy.profileImageUrlHttps) ??
                      AssetUtil.avatar,
                  size: 40,
                  isOval:
                      user.profileImageShape == UserProfileImageShape.circle,
                  onTap: () {
                    panelScreenState?.pushPage(UserDetailScreen(
                        screenName: user.legacy.screenName ?? ""));
                  },
                ),
              const SizedBox(width: 8),
              Expanded(child: _buildTweetContent(tweet)),
            ],
          ),
          if (widget.isDetail) _buildOperations(tweet),
        ],
      ),
    );
    return widget.isDetail
        ? Container(color: MyTheme.itemBackground, child: body)
        : Material(
            color: MyTheme.itemBackground,
            borderRadius: MyTheme.responsiveBorderRadius,
            child: InkWell(
              borderRadius: MyTheme.responsiveBorderRadius,
              onTap: () => panelScreenState
                  ?.pushPage(TweetDetailScreen(tweetId: tweet.restId!)),
              child: body,
            ),
          );
  }

  _buildTweetContent(
    Tweet tweet, {
    double bottom = 8,
  }) {
    String fullText = TweetUtil.getFullText(tweet);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildUserRow(tweet, isQuote: false, showAvatar: widget.isDetail),
        Container(
          padding: const EdgeInsets.only(right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              if (Utils.isNotEmpty(fullText))
                CustomHtmlWidget(
                  content: fullText,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              if (Utils.isNotEmpty(fullText)) const SizedBox(height: 8),
              ..._buildTranslation(tweet),
              if (TweetUtil.hasTranslation(tweet) &&
                  (TweetUtil.hasMedia(tweet) || TweetUtil.hasQuote(tweet)))
                const SizedBox(height: 8),
              if (TweetUtil.hasMedia(tweet)) _buildMedia(tweet),
              if (TweetUtil.hasMedia(tweet) && TweetUtil.hasQuote(tweet))
                const SizedBox(height: 8),
              if (TweetUtil.hasQuote(tweet))
                _buildQuoteTweet(
                    TweetUtil.getTrueTweetByResult(tweet.quotedStatusResult)),
              SizedBox(height: TweetUtil.hasRichContent(tweet) ? 12 : 4),
              if (!widget.isDetail) _buildOperations(tweet),
              if (!widget.isDetail) SizedBox(height: bottom),
            ],
          ),
        ),
      ],
    );
  }

  _buildQuoteTweet(
    Tweet? tweet, {
    User? retweetedUser,
  }) {
    Widget body;
    if (tweet == null) {
      body = Container(
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).dividerColor, width: 0.5),
        ),
        padding: const EdgeInsets.all(12),
        child: Text("这个引用的帖子不可用",
            style:
                Theme.of(context).textTheme.bodySmall?.apply(fontSizeDelta: 3)),
      );
    } else {
      String fullText = tweet.legacy!.fullText!;
      fullText = TweetUtil.processWithEntities(
        fullText,
        tweet.legacy!.entities,
        renderLink: false,
        replaceNewline: false,
      );
      // String birdwatchText =
      //     (tweet.hasBirdwatchNotes ?? false) && tweet.birdwatchPivot != null
      //         ? TweetUtil.processWithBirdwatchEntities(
      //             tweet.birdwatchPivot!.subtitle.text,
      //             tweet.birdwatchPivot!.subtitle.entities)
      //         : "";
      bool showQuoteMdia = !widget.isDetail && TweetUtil.hasMedia(tweet);
      bool hasText = Utils.isNotEmpty(fullText);
      body = Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), border: MyTheme.border),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 12, left: 12, right: 12, bottom: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (retweetedUser != null) _buildRetweetRow(retweetedUser),
                  if (retweetedUser != null) const SizedBox(height: 8),
                  _buildUserRow(tweet, isQuote: true),
                  if (showQuoteMdia || hasText) const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (showQuoteMdia) ...[
                        _buildQuoteMedia(tweet),
                        const SizedBox(width: 10),
                      ],
                      if (hasText)
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Text(
                                    fullText,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            if (widget.isDetail)
              _buildMedia(tweet, blockTopRadius: true, slice: 2),
          ],
        ),
      );
    }
    return Material(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: tweet != null
            ? () => panelScreenState
                ?.pushPage(TweetDetailScreen(tweetId: tweet.restId!))
            : null,
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxMediaOrQuoteWidth),
          child: body,
        ),
      ),
    );
  }

  _buildTranslation(Tweet tweet) {
    String translation = TweetUtil.getTranslation(tweet);
    if (Utils.isNotEmpty(translation)) {
      return [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHtmlWidget(
                content: translation,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ];
    } else {
      return [];
    }
  }

  _buildRetweetRow(User retweetedUser) {
    return ItemBuilder.buildClickItem(
      GestureDetector(
        onTap: () {
          panelScreenState?.pushPage(
              UserDetailScreen(screenName: retweetedUser.legacy.screenName!));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 4),
            Icon(
              Icons.repeat_rounded,
              size: 16,
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                "${retweetedUser.legacy.name} 已转推",
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildCommunityRow(
      TimelineGeneralContext socialContext, Community? communityResult) {
    return ItemBuilder.buildClickItem(
      GestureDetector(
        onTap: () {
          if (communityResult != null) {
            RouteUtil.pushPanelCupertinoRoute(
              context,
              CommunityDetailScreen(
                communityId: communityResult.result.restId ??
                    communityResult.result.idStr ??
                    "",
              ),
            );
          } else if (socialContext.landingUrl != null &&
              Utils.isNotEmpty(socialContext.landingUrl!.url)) {
            UriUtil.processUrl(context, socialContext.landingUrl!.url!);
          }
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 4),
            Icon(
              Icons.people_rounded,
              size: 16,
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                "${socialContext.text}",
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildUserRow(
    Tweet tweet, {
    bool isQuote = false,
    bool showAvatar = true,
  }) {
    var userResultUnion = tweet.core!.userResults!.result;
    User user = userResultUnion as User;
    return Row(
      children: [
        if (showAvatar)
          ItemBuilder.buildAvatar(
            context: context,
            imageUrl:
                TweetUtil.getBigAvatarUrl(user.legacy.profileImageUrlHttps) ??
                    AssetUtil.avatar,
            size: isQuote ? 30 : 40,
            isOval: user.profileImageShape == UserProfileImageShape.circle,
            onTap: () => panelScreenState?.pushPage(
                UserDetailScreen(screenName: user.legacy.screenName ?? "")),
          ),
        if (showAvatar) const SizedBox(width: 8),
        Expanded(
          child: ItemBuilder.buildClickItem(
            GestureDetector(
              onTap: () => panelScreenState?.pushPage(
                  UserDetailScreen(screenName: user.legacy.screenName ?? "")),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          user.legacy.name,
                          style: Theme.of(context).textTheme.titleMedium?.apply(
                              fontWeightDelta: 2,
                              fontSizeDelta: isQuote ? -2 : 0),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (user.affiliatesHighlightedLabel != null &&
                          user.affiliatesHighlightedLabel.containsKey('label'))
                        const SizedBox(width: 4),
                      if (user.affiliatesHighlightedLabel != null &&
                          user.affiliatesHighlightedLabel.containsKey('label'))
                        ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: ItemBuilder.buildCachedImage(
                            imageUrl: user.affiliatesHighlightedLabel['label']
                                ['badge']['url'],
                            context: context,
                            showLoading: false,
                            width: 16,
                            height: 16,
                          ),
                        ),
                    ],
                  ),
                  if (Utils.isNotEmpty(user.legacy.screenName))
                    Text(
                      "@${user.legacy.screenName!} · ${Utils.formatDateString(tweet.legacy!.createdAt!)}",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                ],
              ),
            ),
          ),
        ),
        if (!isQuote)
          ItemBuilder.buildIconButton(
            context: context,
            icon: Icon(
              ResponsiveUtil.isLandscape()
                  ? Icons.more_horiz_rounded
                  : Icons.more_vert_rounded,
              size: 20,
              color: Theme.of(context).textTheme.labelSmall?.color,
            ),
            onTap: () {
              BottomSheetBuilder.showContextMenu(
                  context, _buildMoreContextMenuButtons(tweet, user));
            },
          ),
      ],
    );
  }

  _buildImageMediaContextMenuButtons(Media media, List<Media> medias) {
    return GenericContextMenu(
      buttonConfigs: [
        ContextMenuButtonConfig(
          "查看${TweetUtil.getMediaDescription(media)}",
          iconData: Icons.view_carousel_rounded,
          onPressed: () {
            RouteUtil.pushDialogRoute(
              context,
              showClose: false,
              fullScreen: true,
              useMaterial: true,
              HeroMediaViewScreen(
                medias: medias,
                useMainColor: true,
                initIndex: medias.indexOf(media),
              ),
            );
          },
        ),
        ContextMenuButtonConfig(
          "保存${TweetUtil.getMediaDescription(media)}",
          iconData: Icons.save_alt_rounded,
          onPressed: () {
            ImageUtil.saveMedia(context, media);
          },
        ),
        if (medias.length > 1)
          ContextMenuButtonConfig(
            "保存所有${TweetUtil.getMediasDescription(medias)}",
            iconData: Icons.save_alt_rounded,
            onPressed: () {
              ImageUtil.saveMedias(context, medias);
            },
          ),
      ],
    );
  }

  _buildImageMedia(
    Media media,
    int index,
    List<Media> medias, {
    bool isQuote = false,
    bool isSingle = false,
    double? size,
    required BorderRadius radius,
  }) {
    String tag = Utils.generateUid();
    double ratio = isQuote ? 1 : media.sizes.large.w / media.sizes.large.h;
    ratio = ratio.clamp(0.8, 1.6);
    var image = ItemBuilder.buildMediaHeroCachedImage(
      context: context,
      width: size ?? MediaQuery.sizeOf(context).width,
      height: size ?? MediaQuery.sizeOf(context).height,
      fit: BoxFit.cover,
      showLoading: false,
      medias: medias,
      index: index,
      simpleError: isQuote,
      tagPrefix: tag,
    );
    var stack = Stack(
      children: [
        Container(
          decoration:
              BoxDecoration(borderRadius: radius, border: MyTheme.border),
          child: ClipRRect(
            borderRadius: radius,
            child: isSingle && !isQuote
                ? Container(
                    constraints:
                        const BoxConstraints(maxWidth: maxMediaOrQuoteWidth),
                    child: AspectRatio(aspectRatio: ratio, child: image),
                  )
                : image,
          ),
        ),
        if (media.type == MediaType.animatedGif)
          Positioned(
            left: 5,
            bottom: 5,
            child: ItemBuilder.buildTransparentTag(
              context,
              text: "GIF",
              radius: 4,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            ),
          ),
        if (media.type == MediaType.video)
          Positioned(
            left: 5,
            bottom: 5,
            child: ItemBuilder.buildTransparentTag(
              context,
              text: "视频",
              radius: 4,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            ),
          ),
        if (!isQuote && Utils.isNotEmpty(media.extAltText))
          Positioned(
            left: 10,
            bottom: 10,
            child: ItemBuilder.buildTransparentTag(
              context,
              text: "ALT",
              radius: 4,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              onTap: () {
                DialogBuilder.showInfoDialog(context,
                    title: "ALT", message: media.extAltText!);
              },
            ),
          ),
      ],
    );
    showContextMenu() => BottomSheetBuilder.showContextMenu(
        context, _buildImageMediaContextMenuButtons(media, medias));
    return Material(
      borderRadius: radius,
      child: InkWell(
        borderRadius: radius,
        onLongPress: ResponsiveUtil.isDesktop() ? null : showContextMenu,
        onSecondaryTap: ResponsiveUtil.isDesktop() ? showContextMenu : null,
        child: stack,
      ),
    );
  }

  _buildVideoMedia(
    Media media,
    int index,
    List<Media> medias, {
    bool showDetailPanel = false,
    bool isQuote = false,
    bool isSingle = false,
    required BorderRadius radius,
    double? size,
  }) {
    if (isQuote && !widget.isDetail) {
      return _buildImageMedia(media, index, medias,
          radius: radius, isQuote: true, size: size);
    } else {
      double ratio = media.sizes.large.w / media.sizes.large.h;
      ratio = ratio.clamp(0, 2);
      bool isGif = (media.type == MediaType.animatedGif);
      String videoUrl =
          isGif ? TweetUtil.getGifVideoUrl(media) : TweetUtil.getMp4Url(media);
      VideoPlayerController? controller = _videoControllers[videoUrl];
      if (controller == null) {
        _createController(videoUrl, isGif: isGif);
      }
      controller = _videoControllers[videoUrl];
      if (controller == null) return emptyWidget;
      var panel = VideoControlPanel(
        controller,
        showClosedCaptionButton: false,
        showFullscreenButton: true,
        showDetailPanel: showDetailPanel && !isGif,
        showPlayPauseButton: true,
        showSeekBar: true,
        isGif: isGif,
        showDurationAndPositionText: true,
        onAltClicked: () {
          DialogBuilder.showInfoDialog(context,
              title: "ALT", message: media.extAltText!);
        },
        showAltButton: !isQuote && Utils.isNotEmpty(media.extAltText),
        onPlayEnded: () {
          _hasPlayedOnceMap[videoUrl] = true;
        },
        onPlayClicked: () {
          if (!isGif) {
            if (controller!.value.isPlaying) {
              _playbackManager.play(controller);
            } else {
              _playbackManager.pause(controller);
            }
          }
        },
        onFullscreenClicked: () {
          RouteUtil.pushDialogRoute(
            context,
            showClose: false,
            fullScreen: true,
            useMaterial: true,
            HeroMediaViewScreen(
              medias: medias,
              useMainColor: true,
              initIndex: index,
            ),
          );
        },
        placeholder: ItemBuilder.buildMediaHeroCachedImage(
          context: context,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          fit: BoxFit.cover,
          showLoading: false,
          medias: medias,
          index: index,
          simpleError: isQuote,
        ),
      );
      Widget container = Container(
        decoration: BoxDecoration(color: Colors.black, borderRadius: radius),
        constraints: BoxConstraints(
          minHeight: isGif ? 0 : 300,
          maxWidth: MediaQuery.sizeOf(context).width,
          minWidth: min(320, MediaQuery.sizeOf(context).width),
        ),
        child: isSingle ? AspectRatio(aspectRatio: ratio, child: panel) : panel,
      );
      if (!ResponsiveUtil.isLandscape()) {
        container = GestureDetector(
          onTap: () {
            RouteUtil.pushDialogRoute(
              context,
              showClose: false,
              fullScreen: true,
              useMaterial: true,
              HeroMediaViewScreen(
                medias: medias,
                useMainColor: true,
                initIndex: index,
              ),
            );
          },
          child: container,
        );
      }
      var detector = VisibilityDetector(
        key: Key(videoUrl),
        onVisibilityChanged: (info) {
          if (!isGif) {
            VideoPlayerController? videoController =
                _videoControllers[videoUrl];
            if (videoController == null) return;
            bool isVisible = _isVisibleMap[videoUrl] ?? false;
            bool hasPlayedOnce = _hasPlayedOnceMap[videoUrl] ?? false;
            if (!isVisible && info.visibleFraction > 0.5) {
              if (!hasPlayedOnce && !videoController.value.isPlaying) {
                _playbackManager.play(videoController);
              }
              isVisible = true;
              _isVisibleMap[videoUrl] = true;
              if (mounted) setState(() {});
            } else if (isVisible && info.visibleFraction < 0.5) {
              if (videoController.value.isPlaying) {
                _playbackManager.pause(videoController);
              }
              isVisible = false;
              _isVisibleMap[videoUrl] = false;
              if (mounted) setState(() {});
            }
          }
        },
        child: ClipRRect(borderRadius: radius, child: container),
      );
      showContextMenu() => BottomSheetBuilder.showContextMenu(
          context, _buildImageMediaContextMenuButtons(media, medias));
      return Material(
        borderRadius: radius,
        child: InkWell(
          borderRadius: radius,
          onLongPress: ResponsiveUtil.isDesktop() ? null : showContextMenu,
          onSecondaryTap: ResponsiveUtil.isDesktop() ? showContextMenu : null,
          onTap: isGif
              ? () {
                  RouteUtil.pushDialogRoute(
                    context,
                    showClose: false,
                    fullScreen: true,
                    useMaterial: true,
                    HeroMediaViewScreen(
                      medias: medias,
                      useMainColor: true,
                      initIndex: index,
                    ),
                  );
                }
              : null,
          child: detector,
        ),
      );
    }
  }

  _buildGifMedia(
    Media media,
    int index,
    List<Media> medias, {
    bool isQuote = false,
    required BorderRadius radius,
    bool isSingle = false,
    double? size,
  }) {
    if (isQuote) {
      return _buildImageMedia(
        media,
        index,
        medias,
        radius: radius,
        isQuote: true,
        size: size,
      );
    } else {
      return _buildVideoMedia(
        media,
        index,
        medias,
        radius: radius,
        isSingle: isSingle,
        size: size,
      );
    }
  }

  _buildMedia(
    Tweet tweet, {
    bool blockTopRadius = false,
    int? slice,
  }) {
    if (!TweetUtil.hasMedia(tweet)) return emptyWidget;
    List<Media> medias = TweetUtil.getMedia(tweet);
    if (slice != null) {
      slice = slice.clamp(1, medias.length);
      medias = medias.sublist(0, slice);
    }
    List<MediaSize> sizes = medias.map((e) => e.sizes.large).toList();
    bool isSingle = medias.length == 1;
    return TwitterImageGrid(
      sizes: sizes,
      itemCount: medias.length,
      itemBuilder: (BuildContext context, int index, BorderRadius radius) {
        radius = radius.copyWith(
          topLeft: blockTopRadius ? Radius.zero : radius.topLeft,
          topRight: blockTopRadius ? Radius.zero : radius.topRight,
        );
        switch (medias[index].type) {
          case MediaType.photo:
            return _buildImageMedia(
              medias[index],
              index,
              medias,
              radius: radius,
              isSingle: isSingle,
              isQuote: blockTopRadius,
            );
          case MediaType.video:
            return _buildVideoMedia(
              medias[index],
              index,
              medias,
              radius: radius,
              showDetailPanel: isSingle,
              isSingle: isSingle,
              isQuote: blockTopRadius,
            );
          case MediaType.animatedGif:
            return _buildGifMedia(
              medias[index],
              index,
              medias,
              isQuote: false,
              radius: radius,
              isSingle: isSingle,
            );
          default:
            return emptyWidget;
        }
      },
    );
  }

  _buildQuoteMedia(Tweet tweet) {
    if (!TweetUtil.hasMedia(tweet)) return emptyWidget;
    List<Media> media = TweetUtil.getMedia(tweet);
    switch (media[0].type) {
      case MediaType.photo:
        return _buildImageMedia(
          media[0],
          0,
          media,
          isQuote: true,
          isSingle: true,
          size: 80,
          radius: BorderRadius.circular(8),
        );
      case MediaType.video:
        return _buildVideoMedia(
          media[0],
          0,
          media,
          isQuote: true,
          isSingle: true,
          size: 80,
          radius: BorderRadius.circular(8),
        );
      case MediaType.animatedGif:
        return _buildGifMedia(
          media[0],
          0,
          media,
          isQuote: true,
          size: 80,
          radius: BorderRadius.circular(8),
        );
      default:
        return emptyWidget;
    }
  }

  _buildOperations(Tweet tweet) {
    Color? labelColor = Theme.of(context).textTheme.bodySmall?.color;
    return Container(
      margin: EdgeInsets.only(left: widget.isDetail ? 8 : 0, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ItemBuilder.buildIconTextButton(
            context,
            tooltip:
                "${Utils.formatCountWithDot(tweet.legacy!.replyCount ?? 0)} 回复",
            icon:
                Icon(Icons.mode_comment_outlined, size: 18, color: labelColor),
            color: labelColor,
            fontSizeDelta: -1,
            text: (tweet.legacy!.replyCount ?? 0).toString(),
          ),
          ItemBuilder.buildIconTextButton(
            context,
            tooltip:
                "${Utils.formatCountWithDot(tweet.legacy!.retweetCount ?? 0)} 转推",
            icon: Icon(
              tweet.legacy!.retweeted
                  ? Icons.repeat_rounded
                  : Icons.repeat_outlined,
              size: 18,
              color: tweet.legacy!.retweeted ? Colors.green : labelColor,
            ),
            color: tweet.legacy!.retweeted ? Colors.green : labelColor,
            fontSizeDelta: -1,
            text: Utils.formatCountWithText(tweet.legacy!.retweetCount ?? 0),
            onTap: () async {
              HapticFeedback.mediumImpact();
              if (tweet.legacy!.retweeted) {
                var res = await IToast.showLoadingSnackbar(
                    "正在取消转推",
                    () async =>
                        await PostApi.deleteRetweet(tweetId: tweet.restId!));
                if (res.success) {
                  tweet.legacy!.retweeted = false;
                  tweet.legacy!.retweetCount =
                      (tweet.legacy!.retweetCount ?? 0) - 1;
                  setState(() {});
                  IToast.showTop("已取消转推");
                } else {
                  IToast.showTop("取消转推失败");
                }
              } else {
                var res = await IToast.showLoadingSnackbar("正在转推",
                    () async => await PostApi.retweet(tweetId: tweet.restId!));
                if (res.success) {
                  tweet.legacy!.retweeted = true;
                  tweet.legacy!.retweetCount =
                      (tweet.legacy!.retweetCount ?? 0) + 1;
                  setState(() {});
                  IToast.showTop("已转推");
                } else {
                  IToast.showTop("转推失败");
                }
              }
            },
          ),
          ItemBuilder.buildIconTextButton(
            context,
            tooltip:
                "${Utils.formatCountWithDot(tweet.legacy!.favoriteCount ?? 0)} 喜欢",
            icon: Icon(
              tweet.legacy!.favorited
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
              size: 18,
              color: tweet.legacy!.favorited ? Colors.redAccent : labelColor,
            ),
            color: tweet.legacy!.favorited ? Colors.redAccent : labelColor,
            fontSizeDelta: -1,
            text: Utils.formatCountWithText(tweet.legacy!.favoriteCount ?? 0),
            onTap: () async {
              HapticFeedback.mediumImpact();
              if (tweet.legacy!.favorited) {
                var res = await IToast.showLoadingSnackbar("正在取消喜欢",
                    () async => await PostApi.unlike(tweetId: tweet.restId!));
                if (res.success) {
                  tweet.legacy!.favorited = false;
                  tweet.legacy!.favoriteCount =
                      (tweet.legacy!.favoriteCount ?? 0) - 1;
                  setState(() {});
                  IToast.showTop("已取消喜欢");
                } else {
                  IToast.showTop("取消喜欢失败");
                }
              } else {
                var res = await IToast.showLoadingSnackbar("正在喜欢",
                    () async => await PostApi.like(tweetId: tweet.restId!));
                if (res.success) {
                  tweet.legacy!.favorited = true;
                  tweet.legacy!.favoriteCount =
                      (tweet.legacy!.favoriteCount ?? 0) + 1;
                  setState(() {});
                  IToast.showTop("已喜欢");
                } else {
                  IToast.showTop("喜欢失败");
                }
              }
            },
          ),
          // ItemBuilder.buildIconTextButton(
          //   context,
          //   tooltip:
          //       "${Utils.formatCountWithDot(int.tryParse(tweet.views?.count ?? "") ?? 0)} 查看",
          //   icon: Icon(
          //     Icons.remove_red_eye_outlined,
          //     size: 18,
          //     color: labelColor,
          //   ),
          //   color: labelColor,
          //   fontSizeDelta: -1,
          //   text:
          //       Utils.formatCount(int.tryParse(tweet.views?.count ?? "") ?? 0),
          // ),
          ItemBuilder.buildIconTextButton(
            context,
            tooltip:
                "${Utils.formatCountWithDot(tweet.legacy!.bookmarkCount ?? 0)} 已添加书签",
            icon: Icon(
              tweet.legacy!.bookmarked
                  ? Icons.bookmark_rounded
                  : Icons.bookmark_border_rounded,
              size: 18,
              color: tweet.legacy!.bookmarked ? Colors.blueAccent : labelColor,
            ),
            color: tweet.legacy!.bookmarked ? Colors.blueAccent : labelColor,
            fontSizeDelta: -1,
            text: Utils.formatCountWithText(tweet.legacy!.bookmarkCount ?? 0),
            onTap: () async {
              HapticFeedback.mediumImpact();
              if (tweet.legacy!.bookmarked) {
                var res = await IToast.showLoadingSnackbar(
                    "正在移除书签",
                    () async =>
                        await PostApi.deleteBookmark(tweetId: tweet.restId!));
                if (res.success) {
                  tweet.legacy!.bookmarked = false;
                  tweet.legacy!.bookmarkCount =
                      (tweet.legacy!.bookmarkCount ?? 0) - 1;
                  setState(() {});
                  IToast.showTop("已移除书签");
                } else {
                  IToast.showTop("移除书签失败");
                }
              } else {
                var res = await IToast.showLoadingSnackbar(
                    "正在添加书签",
                    () async =>
                        await PostApi.createBookmark(tweetId: tweet.restId!));
                if (res.success) {
                  tweet.legacy!.bookmarked = true;
                  tweet.legacy!.bookmarkCount =
                      (tweet.legacy!.bookmarkCount ?? 0) + 1;
                  setState(() {});
                  IToast.showTop("已添加书签");
                } else {
                  IToast.showTop("添加书签失败");
                }
              }
            },
          ),
          ItemBuilder.buildIconTextButton(
            context,
            icon: tweet.isTranslating
                ? SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(labelColor),
                      strokeWidth: 2,
                      strokeCap: StrokeCap.round,
                    ),
                  )
                : Icon(Icons.translate_rounded, size: 16, color: labelColor),
            color: Theme.of(context).textTheme.bodySmall?.color,
            fontSizeDelta: -1,
            onTap: () async {
              if (tweet.isTranslating) return;
              HapticFeedback.mediumImpact();
              Locale locale = Localizations.localeOf(context);
              tweet.isTranslating = true;
              setState(() {});
              var res = await PostApi.translate(
                tweetId: tweet.restId!,
                destinationLanguage: locale.toString(),
              );
              tweet.isTranslating = false;
              setState(() {});
              if (res.success) {
                tweet.translation = res.data;
                if (Utils.isEmpty(tweet.translation?.translation)) {
                  IToast.showTop("翻译结果为空");
                }
                setState(() {});
              } else {
                IToast.showTop("翻译失败");
              }
            },
          ),
        ],
      ),
    );
  }
}
