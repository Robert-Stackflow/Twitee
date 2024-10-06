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

import 'package:context_menus/context_menus.dart';
import 'package:flutter/material.dart';
import 'package:nine_grid_view/nine_grid_view.dart';
import 'package:twitee/Api/user_api.dart';
import 'package:twitee/Models/feedback_actions.dart';
import 'package:twitee/Utils/constant.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Utils/uri_util.dart';
import 'package:twitee/Utils/video_player_manager.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_control_panel/video_player_control_panel.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../Api/post_api.dart';
import '../../Models/translation_result.dart';
import '../../Openapi/export.dart';
import '../../Utils/asset_util.dart';
import '../../Utils/ilogger.dart';
import '../../Utils/utils.dart';
import '../../Widgets/Item/item_builder.dart';

class PostItem extends StatefulWidget {
  const PostItem({
    super.key,
    required this.entry,
    this.feedbackActions = const [],
  });

  final List<FeedbackActions> feedbackActions;

  final TimelineAddEntry entry;

  @override
  PostItemState createState() => PostItemState();
}

class PostItemState extends State<PostItem> {
  FeedbackType? _currentFeedbackType;
  final Map<String, VideoPlayerController> _videoControllers = {};
  final Map<String, bool> _isVisibleMap = {};
  final Map<String, bool> _hasPlayedOnceMap = {};
  final VideoPlaybackManager _playbackManager = VideoPlaybackManager();

  bool get _isConversation =>
      widget.entry.content is TimelineTimelineModule &&
      (widget.entry.content as TimelineTimelineModule).displayType ==
          DisplayType.verticalConversation;

  @override
  void initState() {
    super.initState();
    initVideo(widget.entry);
  }

  bool hasVideo(Tweet tweet) {
    return hasMedia(tweet) &&
        tweet.legacy!.entities.media!.length == 1 &&
        tweet.legacy!.entities.media![0]!.type == MediaType.video;
  }

  bool hasMedia(Tweet tweet) {
    return tweet.legacy!.entities.media != null;
  }

  List<Media> getMedia(Tweet tweet) {
    if (!hasMedia(tweet)) return [];
    return tweet.legacy!.entities.media!
        .where((element) => element != null)
        .map((e) => e as Media)
        .toList();
  }

  List<Media> getVideoMedia(Tweet tweet) {
    List<Media> media = getMedia(tweet);
    return media.where((element) => element.type == MediaType.video).toList();
  }

  List<Media> getGiftMedia(Tweet tweet) {
    List<Media> media = getMedia(tweet);
    return media
        .where((element) => element.type == MediaType.animatedGif)
        .toList();
  }

  String getMp4Url(Media media) {
    return media.videoInfo!.variants
        .where((element) => element.contentType == "video/mp4")
        .first
        .url;
  }

  initVideo(TimelineAddEntry entry) {
    if (_isConversation) {
    } else {
      var timelineTweet =
          (entry.content as TimelineTimelineItem).itemContent as TimelineTweet;
      Tweet? tweet = TweetUtil.getTrueTweet(timelineTweet);
      if (tweet != null && hasVideo(tweet)) {
        for (Media media in getVideoMedia(tweet)) {
          _createController(getMp4Url(media));
        }
      }
    }
  }

  _createController(
    String videoUrl, {
    bool isGif = false,
  }) {
    _videoControllers[videoUrl] =
        VideoPlayerController.networkUrl(Uri.parse(videoUrl));
    _videoControllers[videoUrl]!.initialize().then((value) {
      if (_videoControllers[videoUrl]!.value.isInitialized) {
        if (!isGif) {
          if (_isVisibleMap[videoUrl] ?? false) {
            _playbackManager.play(_videoControllers[videoUrl]!);
          }
        } else {
          _videoControllers[videoUrl]!.setLooping(true);
          _videoControllers[videoUrl]!.play();
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
    if (_isConversation) {
      TimelineTimelineModule module = (entry.content as TimelineTimelineModule);
      List<ModuleItem> items = module.items!
          .where((e) => e != null)
          .map((e) => e as ModuleItem)
          .toList();
      items = items.where((e) => e.item.itemContent is TimelineTweet).toList();
      List<TimelineTweet> tweets =
          items.map((e) => e.item.itemContent as TimelineTweet).toList();
      return _buildConversation(tweets);
    } else {
      var timelineTweet =
          (entry.content as TimelineTimelineItem).itemContent as TimelineTweet;
      User? retweetedUser = TweetUtil.getRetweetedUser(timelineTweet);
      Tweet? tweet = TweetUtil.getTrueTweet(timelineTweet);
      if (tweet == null) {
        return Container();
      } else {
        if (retweetedUser != null) {
          return _buildNormalTweet(tweet, retweetedUser: retweetedUser);
        } else {
          return _buildNormalTweet(tweet);
        }
      }
    }
  }

  _buildConversation(List<TimelineTweet> tweets) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: List.generate(
          tweets.length,
          (index) {
            return _buildConversationItem(
              TweetUtil.getTrueTweet(tweets[index])!,
              isLast: index == tweets.length - 1,
            );
          },
        ),
      ),
    );
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
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFeedbackItem(
            text: _currentFeedbackType!.getMessage(screenName),
            onRevoke: () async {
              await _processFeedback(
                feedbackType: _currentFeedbackType!,
                undo: true,
                destFeedbackType: _currentFeedbackType == FeedbackType.DontLike
                    ? null
                    : FeedbackType.DontLike,
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
                      await _processFeedback(
                        feedbackType: FeedbackType.SeeFewer,
                        undo: false,
                        destFeedbackType: FeedbackType.SeeFewer,
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  _buildMoreFeedbackItem(
                    text: "这个帖子没有相关性",
                    onTap: () async {
                      await _processFeedback(
                        feedbackType: FeedbackType.NotRelevant,
                        undo: false,
                        destFeedbackType: FeedbackType.NotRelevant,
                      );
                    },
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }

  _buildMoreFeedbackItem({
    required String text,
    required Function() onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).dividerColor, width: 1),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
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
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(color: Theme.of(context).dividerColor, width: 0.5),
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
    return GenericContextMenu(
      buttonConfigs: [
        if (showFeedback)
          ContextMenuButtonConfig(
            "对此帖子不感兴趣",
            icon: Container(
                margin: const EdgeInsets.only(right: 8),
                child:
                    const Icon(Icons.sentiment_dissatisfied_rounded, size: 20)),
            onPressed: () async {
              await _processFeedback(
                feedbackType: FeedbackType.DontLike,
                undo: false,
                destFeedbackType: FeedbackType.DontLike,
              );
            },
          ),
        if (showFeedback) ContextMenuButtonConfig.divider(),
        ContextMenuButtonConfig(
          "${user.legacy.following ?? false ? "取消关注" : "关注"} @$screenName",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: Icon(
                  user.legacy.following ?? false
                      ? Icons.person_remove_outlined
                      : Icons.person_add_outlined,
                  size: 20)),
          onPressed: () async {
            if (user.legacy.following ?? false) {
              DialogBuilder.showConfirmDialog(context,
                  title: "取消关注 @$screenName？",
                  message: "你将无法在已关注中看到 @$screenName 的帖子或通知。",
                  onTapConfirm: () async {
                var res = await UserApi.unfollow(userId: user.restId!);
                if (res.success) {
                  user.legacy.following = false;
                  setState(() {});
                  IToast.showTop("已取消关注@$screenName");
                } else {
                  IToast.showTop("取消关注@$screenName失败");
                }
              });
            } else {
              var res = await UserApi.follow(userId: user.restId!);
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
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: Icon(
                  user.legacy.blocking ?? false
                      ? Icons.favorite_border_rounded
                      : Icons.heart_broken_outlined,
                  size: 20)),
          onPressed: () async {
            if (user.legacy.blocking ?? false) {
              var res = await UserApi.unblock(userId: user.restId!);
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
                  var res = await UserApi.block(userId: user.restId!);
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
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: Icon(
                  user.legacy.muting ?? false
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 20)),
          onPressed: () async {
            if (user.legacy.muting ?? false) {
              var res = await UserApi.unmute(userId: user.restId!);
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
                  var res = await UserApi.mute(userId: user.restId!);
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
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.playlist_add_rounded, size: 20)),
          onPressed: () async {},
        ),
        ContextMenuButtonConfig.divider(),
        ContextMenuButtonConfig(
          "分享帖子",
          icon: Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(Icons.share_rounded, size: 18)),
          onPressed: () async {
            UriUtil.share(context, url);
          },
        ),
        ContextMenuButtonConfig(
          "复制帖子链接",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.link_rounded, size: 20)),
          onPressed: () async {
            Utils.copy(context, url, toastText: "已复制帖子链接");
          },
        ),
        ContextMenuButtonConfig(
          "在浏览器打开",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.open_in_browser_rounded, size: 20)),
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

  _buildConversationItem(
    Tweet tweet, {
    bool isLast = false,
  }) {
    String fullText = _getFullText(tweet);
    var userResultUnion = tweet.core!.userResults!.result;
    User user = userResultUnion as User;
    double avatarSize = 40;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemBuilder.buildAvatar(
              context: context,
              imageUrl: user.legacy.profileImageUrlHttps ?? AssetUtil.avatar,
              size: avatarSize,
              isOval: user.profileImageShape == UserProfileImageShape.circle,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 4, right: 4, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildUserRow(tweet, isQuote: false, showAvatar: false),
                    const SizedBox(height: 8),
                    ItemBuilder.buildHtmlWidget(
                      context,
                      fullText,
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    ),
                    ..._buildTranslation(tweet),
                    if (hasMedia(tweet)) _buildMedia(tweet),
                    if (hasMedia(tweet) && tweet.quotedStatusResult != null)
                      const SizedBox(height: 12),
                    if (tweet.quotedStatusResult != null)
                      _buildQuoteTweet(TweetUtil.getTrueTweetByResult(
                          tweet.quotedStatusResult)!),
                    const SizedBox(height: 16),
                    _buildOperations(tweet),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
        if (!isLast)
          Positioned(
            left: avatarSize / 2,
            top: avatarSize,
            bottom: isLast ? avatarSize : 0,
            child: Container(
              width: 1,
              color: Theme.of(context).dividerColor,
            ),
          ),
      ],
    );
  }

  _buildNormalTweet(
    Tweet tweet, {
    User? retweetedUser,
  }) {
    String fullText = _getFullText(tweet);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (retweetedUser != null) _buildRetweetRow(retweetedUser),
          if (retweetedUser != null) const SizedBox(height: 8),
          _buildUserRow(tweet, isQuote: false),
          const SizedBox(height: 8),
          ItemBuilder.buildHtmlWidget(
            context,
            fullText,
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          ..._buildTranslation(tweet),
          if (hasMedia(tweet)) _buildMedia(tweet),
          if (hasMedia(tweet) && tweet.quotedStatusResult != null)
            const SizedBox(height: 12),
          if (tweet.quotedStatusResult != null)
            _buildQuoteTweet(
                TweetUtil.getTrueTweetByResult(tweet.quotedStatusResult)!),
          const SizedBox(height: 16),
          _buildOperations(tweet),
          const SizedBox(height: 4),
        ],
      ),
    );
  }

  _buildQuoteTweet(
    Tweet tweet, {
    User? retweetedUser,
  }) {
    // String fullText = _getFullText(tweet);
    String fullText = tweet.legacy!.fullText!;
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).dividerColor, width: 1)),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (retweetedUser != null) _buildRetweetRow(retweetedUser),
          if (retweetedUser != null) const SizedBox(height: 8),
          _buildUserRow(tweet, isQuote: true),
          const SizedBox(height: 8),
          Row(
            children: [
              if (tweet.legacy!.entities.media != null) _buildQuetoMedia(tweet),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  fullText,
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildTranslation(Tweet tweet) {
    String translation = _getTranslation(tweet);
    if (Utils.isNotEmpty(translation)) {
      return [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: ItemBuilder.buildHtmlWidget(
            context,
            translation,
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 8),
      ];
    } else {
      return [];
    }
  }

  _buildRetweetRow(User retweetedUser) {
    return Row(
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
            imageUrl: user.legacy.profileImageUrlHttps ?? AssetUtil.avatar,
            size: isQuote ? 30 : 40,
            isOval: user.profileImageShape == UserProfileImageShape.circle,
          ),
        if (showAvatar) const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(
                      user.legacy.name,
                      style: Theme.of(context).textTheme.titleMedium?.apply(
                          fontWeightDelta: 2, fontSizeDelta: isQuote ? -2 : 0),
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
        if (!isQuote)
          ItemBuilder.buildIconButton(
            context: context,
            icon: Icon(
              Icons.more_horiz_rounded,
              size: 22,
              color: Theme.of(context).iconTheme.color,
            ),
            onTap: () {
              context.contextMenuOverlay
                  .show(_buildMoreContextMenuButtons(tweet, user));
            },
          ),
      ],
    );
  }

  _buildImageMedia(
    Media media, {
    double size = 80,
  }) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Theme.of(context).dividerColor,
              width: 0.5,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ItemBuilder.buildHeroCachedImage(
              context: context,
              height: size,
              width: size,
              showLoading: false,
              imageUrl: media.mediaUrlHttps!,
            ),
          ),
        ),
        if (media.type == MediaType.animatedGif)
          Positioned(
            left: 5,
            bottom: 5,
            child: ItemBuilder.buildTransparentTag(
              context,
              text: "GIF",
              borderRadius: 4,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            ),
          ),
      ],
    );
  }

  _buildVideoMedia(
    Media media, {
    bool showPanel = false,
  }) {
    bool isGif = media.type == MediaType.animatedGif;
    String videoUrl = isGif ? media.url : getMp4Url(media);
    VideoPlayerController? controller = _videoControllers[videoUrl];
    if (controller == null) {
      _createController(videoUrl, isGif: true);
    }
    controller = _videoControllers[videoUrl];
    if (controller == null) return emptyWidget;
    return VisibilityDetector(
      key: Key(videoUrl),
      onVisibilityChanged: (info) {
        if (!isGif) {
          VideoPlayerController? videoController = _videoControllers[videoUrl];
          if (videoController == null) return;
          bool isVisible = _isVisibleMap[videoUrl] ?? false;
          bool hasPlayedOnce = _hasPlayedOnceMap[videoUrl] ?? false;
          if (!isVisible && info.visibleFraction > 0.5) {
            if (!hasPlayedOnce && !videoController.value.isPlaying) {
              _playbackManager.play(videoController);
            }
            setState(() {
              isVisible = true;
              _isVisibleMap[videoUrl] = true;
            });
          } else if (isVisible && info.visibleFraction < 0.5) {
            if (videoController.value.isPlaying) {
              _playbackManager.pause(videoController);
            }
            setState(() {
              isVisible = false;
              _isVisibleMap[videoUrl] = false;
            });
          }
        }
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              constraints: const BoxConstraints(maxHeight: 450),
              child: VideoControlPanel(
                controller,
                showClosedCaptionButton: false,
                showFullscreenButton: false,
                showPanel: showPanel,
                showPlayPauseButton: true,
                showSeekBar: true,
                showDurationAndPositionText: true,
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
              ),
            ),
          ),
          if (media.type == MediaType.animatedGif)
            Positioned(
              left: 5,
              bottom: 5,
              child: ItemBuilder.buildTransparentTag(
                context,
                text: "GIF",
                borderRadius: 4,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              ),
            ),
        ],
      ),
    );
  }

  _buildGifMedia(
    Media media, {
    bool isQueto = false,
  }) {
    if (isQueto) {
      return _buildImageMedia(media);
    } else {
      String videoUrl = TweetUtil.getGifVideoUrl(media);
      Media tmp = Media.clone(media);
      tmp.url = videoUrl;
      return _buildVideoMedia(tmp);
    }
  }

  _buildMedia(Tweet tweet) {
    if (!hasMedia(tweet)) return emptyWidget;
    List<Media> media = getMedia(tweet);
    if (media.length == 1 && media[0].type == MediaType.video) {
      return _buildVideoMedia(media[0], showPanel: true);
    } else {
      return NineGridView(
        space: 3,
        width: 500,
        alignment: Alignment.center,
        type: NineGridType.weChat,
        itemCount: media.length,
        itemBuilder: (BuildContext context, int index) {
          switch (media[index].type) {
            case MediaType.photo:
              return _buildImageMedia(media[index], size: 500);
            case MediaType.video:
              return _buildVideoMedia(media[index]);
            default:
              return _buildGifMedia(media[0], isQueto: false);
          }
        },
      );
    }
  }

  _buildQuetoMedia(Tweet tweet) {
    if (!hasMedia(tweet)) return emptyWidget;
    List<Media> media = getMedia(tweet);
    switch (media[0].type) {
      case MediaType.photo:
        return _buildImageMedia(media[0]);
      case MediaType.video:
        return _buildVideoMedia(media[0]);
      default:
        return _buildGifMedia(media[0], isQueto: true);
    }
  }

  _buildOperations(Tweet tweet) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ItemBuilder.buildIconTextButton(
          context,
          tooltip:
              "${Utils.formatCountWithDot(tweet.legacy!.replyCount ?? 0)} 回复",
          icon: Icon(
            Icons.mode_comment_outlined,
            size: 18,
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
          color: Theme.of(context).textTheme.bodySmall?.color,
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
            color: tweet.legacy!.retweeted
                ? Colors.green
                : Theme.of(context).textTheme.bodySmall?.color,
          ),
          color: tweet.legacy!.retweeted
              ? Colors.green
              : Theme.of(context).textTheme.bodySmall?.color,
          fontSizeDelta: -1,
          text: Utils.formatCount(tweet.legacy!.retweetCount ?? 0),
          onTap: () async {
            if (tweet.legacy!.retweeted) {
              var res = await PostApi.deleteRetweet(tweetId: tweet.restId!);
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
              var res = await PostApi.retweet(tweetId: tweet.restId!);
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
            color: tweet.legacy!.favorited
                ? Colors.redAccent
                : Theme.of(context).textTheme.bodySmall?.color,
          ),
          color: tweet.legacy!.favorited
              ? Colors.redAccent
              : Theme.of(context).textTheme.bodySmall?.color,
          fontSizeDelta: -1,
          text: Utils.formatCount(tweet.legacy!.favoriteCount ?? 0),
          onTap: () async {
            if (tweet.legacy!.favorited) {
              var res = await PostApi.unlike(tweetId: tweet.restId!);
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
              var res = await PostApi.like(tweetId: tweet.restId!);
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
        ItemBuilder.buildIconTextButton(
          context,
          tooltip:
              "${Utils.formatCountWithDot(int.tryParse(tweet.views?.count ?? "") ?? 0)} 查看",
          icon: Icon(
            Icons.remove_red_eye_outlined,
            size: 18,
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
          color: Theme.of(context).textTheme.bodySmall?.color,
          fontSizeDelta: -1,
          text: Utils.formatCount(int.tryParse(tweet.views?.count ?? "") ?? 0),
        ),
        ItemBuilder.buildIconTextButton(
          context,
          tooltip:
              "${Utils.formatCountWithDot(tweet.legacy!.bookmarkCount ?? 0)} 已添加书签",
          icon: Icon(
            tweet.legacy!.bookmarked
                ? Icons.bookmark_rounded
                : Icons.bookmark_border_rounded,
            size: 18,
            color: tweet.legacy!.bookmarked
                ? Colors.blueAccent
                : Theme.of(context).textTheme.bodySmall?.color,
          ),
          color: tweet.legacy!.bookmarked
              ? Colors.blueAccent
              : Theme.of(context).textTheme.bodySmall?.color,
          fontSizeDelta: -1,
          text: Utils.formatCount(tweet.legacy!.bookmarkCount ?? 0),
          onTap: () async {
            if (tweet.legacy!.bookmarked) {
              var res = await PostApi.deleteBookmark(tweetId: tweet.restId!);
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
              var res = await PostApi.createBookmark(tweetId: tweet.restId!);
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
        if (tweet.isTranslatable ?? true)
          ItemBuilder.buildIconTextButton(
            context,
            icon: tweet.isTranslating
                ? SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                          Theme.of(context).textTheme.bodySmall?.color),
                      strokeWidth: 2,
                      value: null,
                    ),
                  )
                : Icon(
                    Icons.translate_rounded,
                    size: 16,
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
            color: Theme.of(context).textTheme.bodySmall?.color,
            fontSizeDelta: -1,
            onTap: () async {
              if (tweet.isTranslating) return;
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
                setState(() {});
              } else {
                IToast.showTop("翻译失败：${res.message}");
              }
            },
          ),
      ],
    );
  }

  _getFullText(Tweet tweet) {
    String fullText = tweet.legacy!.fullText!;
    try {
      fullText = _processTweetFullText(tweet);
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to process tweet", e, t);
    }
    return fullText;
  }

  _getTranslation(Tweet tweet) {
    String translation = tweet.translation?.translation ?? "";
    try {
      translation = _processTweetTranslation(tweet.translation);
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to process tweet", e, t);
    }
    return translation;
  }

  String _processTweetTranslation(TranslationResult? result) {
    if (result == null) return "";
    String fullText = result.translation;
    Entities entities = result.entities;
    return _processWithEntities(fullText, entities);
  }

  String _processTweetFullText(Tweet tweet) {
    String fullText = tweet.legacy!.fullText!;
    Entities entities = tweet.legacy!.entities;
    return _processWithEntities(fullText, entities);
  }

  String _processWithEntities(String fullText, Entities entities) {
    fullText = fullText.replaceAll("\n", "<br>");
    entities.hashtags.sort((a, b) {
      return (b['text'] as String).length - (a['text'] as String).length;
    });
    String tmpTag = "@**@/~?><?%^@!()~==/&&/|\\";
    for (var i = 0; i < entities.hashtags.length; i++) {
      Map hashtag = entities.hashtags[i];
      fullText = fullText.replaceAll("#${hashtag['text']}",
          '<a href="https://x.com/hashtag/${Uri.encodeComponent(hashtag['text'])}">$tmpTag${hashtag['text']}</a>');
    }
    for (var i = 0; i < entities.hashtags.length; i++) {
      Map hashtag = entities.hashtags[i];
      fullText = fullText.replaceAll(
          "$tmpTag${hashtag['text']}", '#${hashtag['text']}');
    }
    if (entities.userMentions != null) {
      for (var i = 0; i < entities.userMentions!.length; i++) {
        Map mention = entities.userMentions![i];
        fullText = fullText.replaceAll("@${mention['screen_name']}",
            '<a href="https://x.com/${Uri.encodeComponent(mention['screen_name'])}">$tmpTag${mention['screen_name']}</a>');
      }
      for (var i = 0; i < entities.userMentions!.length; i++) {
        Map mention = entities.userMentions![i];
        fullText = fullText.replaceAll(
            "$tmpTag${mention['screen_name']}", '@${mention['screen_name']}');
      }
    }

    for (var i = entities.urls.length - 1; i >= 0; i--) {
      Url url = entities.urls[i];
      fullText = fullText.replaceAll(url.url,
          '<a href="${Uri.encodeComponent(url.expandedUrl ?? "")}">${url.displayUrl}</a>');
    }
    if (entities.media != null) {
      for (var media in entities.media!) {
        fullText = fullText.replaceAll(media!.url, '');
      }
    }
    return fullText;
  }
}
