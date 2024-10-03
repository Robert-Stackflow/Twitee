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
import 'package:twitee/Models/feedback_actions.dart';
import 'package:twitee/Utils/itoast.dart';

import '../../Api/post_api.dart';
import '../../Openapi/models/media_type.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_item.dart';
import '../../Openapi/models/timeline_tweet.dart';
import '../../Openapi/models/tweet.dart';
import '../../Openapi/models/tweet_union.dart';
import '../../Openapi/models/tweet_with_visibility_results.dart';
import '../../Openapi/models/url.dart';
import '../../Openapi/models/user.dart';
import '../../Openapi/models/user_profile_image_shape.dart';
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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildItem(widget.entry);
  }

  Tweet? getTweet(TweetUnion? union) {
    if (union == null) {
      return null;
    }
    switch (union.runtimeType) {
      case const (Tweet):
        return union as Tweet;
      case const (TweetWithVisibilityResults):
        return (union as TweetWithVisibilityResults).tweet;
      default:
        return null;
    }
  }

  _buildItem(TimelineAddEntry entry) {
    var item =
        (entry.content as TimelineTimelineItem).itemContent as TimelineTweet;
    Tweet? tweet = getTweet(item.tweetResults!.result);
    if (tweet == null) {
      return Container();
    } else {
      if (tweet.legacy!.retweetedStatusResult != null) {
        Tweet? trueTweet =
            getTweet(tweet.legacy!.retweetedStatusResult!.result);
        if (trueTweet == null) {
          return _buildNormalTweet(tweet);
        }
        return _buildNormalTweet(trueTweet,
            retweetedUser: tweet.core!.userResults!.result as User);
      } else {
        return _buildNormalTweet(tweet);
      }
    }
  }

  _buildFeedBackItem() {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "反馈",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          for (var action in widget.feedbackActions)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  action.value!.prompt ?? "",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
              ],
            ),
        ],
      ),
    );
  }

  _buildMoreContextMenuButtons(Tweet tweet, User user) {
    return GenericContextMenu(
      buttonConfigs: [
        ContextMenuButtonConfig(
          "对此帖子不感兴趣",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child:
                  const Icon(Icons.sentiment_dissatisfied_rounded, size: 20)),
          onPressed: () async {},
        ),
        ContextMenuButtonConfig.divider(),
        ContextMenuButtonConfig.warning(
          "关注 @${user.legacy.screenName ?? user.legacy.name}",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.person_add_alt_outlined, size: 20)),
          onPressed: () async {},
        ),
        ContextMenuButtonConfig.warning(
          "屏蔽 @${user.legacy.screenName ?? user.legacy.name}",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.heart_broken_outlined, size: 20)),
          onPressed: () async {},
        ),
        ContextMenuButtonConfig.warning(
          "隐藏 @${user.legacy.screenName ?? user.legacy.name}",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.visibility_off_outlined, size: 20)),
          onPressed: () async {},
        ),
        ContextMenuButtonConfig.warning(
          "从列表添加或移除 @${user.legacy.screenName ?? user.legacy.name}",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.playlist_add_rounded, size: 20)),
          onPressed: () async {},
        ),
        ContextMenuButtonConfig.divider(),
        ContextMenuButtonConfig.warning(
          "分享帖子",
          icon: Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(Icons.share_rounded, size: 18)),
          onPressed: () async {},
        ),
        ContextMenuButtonConfig.warning(
          "复制帖子链接",
          icon: Container(
              margin: const EdgeInsets.only(right: 8),
              child: const Icon(Icons.link_rounded, size: 20)),
          onPressed: () async {},
        ),
        // ContextMenuButtonConfig.divider(),
        // ContextMenuButtonConfig.warning(
        //   "查看帖子互动量",
        //   onPressed: () async {},
        // ),
      ],
    );
  }

  _buildNormalTweet(
    Tweet tweet, {
    User? retweetedUser,
    bool isQuote = false,
  }) {
    String fullText = tweet.legacy!.fullText!;
    try {
      fullText = _processTweetFullText(tweet);
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to process tweet", e, t);
    }
    var userResultUnion = tweet.core!.userResults!.result;
    User user = userResultUnion as User;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(8),
        border: isQuote
            ? Border.all(color: Theme.of(context).dividerColor, width: 1)
            : null,
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (retweetedUser != null)
            Row(
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
          if (retweetedUser != null) const SizedBox(height: 8),
          Row(
            children: [
              ItemBuilder.buildAvatar(
                context: context,
                imageUrl: user.legacy.profileImageUrlHttps ?? AssetUtil.avatar,
                size: isQuote ? 30 : 40,
                isOval: user.profileImageShape == UserProfileImageShape.circle,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            user.legacy.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.apply(
                                    fontWeightDelta: 2,
                                    fontSizeDelta: isQuote ? -2 : 0),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (user.affiliatesHighlightedLabel != null &&
                            user.affiliatesHighlightedLabel
                                .containsKey('label'))
                          const SizedBox(width: 4),
                        if (user.affiliatesHighlightedLabel != null &&
                            user.affiliatesHighlightedLabel
                                .containsKey('label'))
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
          ),
          const SizedBox(height: 8),
          ItemBuilder.buildHtmlWidget(
            context,
            fullText,
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          if (tweet.legacy!.entities.media != null)
            if (tweet.legacy!.entities.media!.length == 1 &&
                tweet.legacy!.entities.media![0]!.type == MediaType.video)
              Text(
                tweet.legacy!.entities.media![0]!.videoInfo!.variants.last.url,
              )
            else
              NineGridView(
                space: 3,
                width: 500,
                alignment: Alignment.center,
                type: NineGridType.weChat,
                itemCount: tweet.legacy!.entities.media!.length,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: ItemBuilder.buildHeroCachedImage(
                      context: context,
                      height: 50,
                      width: 50,
                      showLoading: false,
                      imageUrl:
                          tweet.legacy!.entities.media![index]!.mediaUrlHttps!,
                    ),
                  );
                },
              ),
          if (tweet.legacy!.entities.media != null &&
              tweet.quotedStatusResult != null)
            const SizedBox(height: 12),
          if (tweet.quotedStatusResult != null)
            _buildNormalTweet(tweet.quotedStatusResult!.result as Tweet,
                isQuote: true),
          if (!isQuote) const SizedBox(height: 16),
          if (!isQuote)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ItemBuilder.buildIconTextButton(
                  context,
                  icon: Icon(
                    Icons.mode_comment_outlined,
                    size: 18,
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                  color: Theme.of(context).textTheme.bodySmall?.color,
                  fontSizeDelta: -1,
                  text: tweet.legacy!.replyCount.toString(),
                ),
                ItemBuilder.buildIconTextButton(
                  context,
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
                      var res =
                          await PostApi.deleteRetweet(tweetId: tweet.restId!);
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
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    size: 18,
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                  color: Theme.of(context).textTheme.bodySmall?.color,
                  fontSizeDelta: -1,
                  text: Utils.formatCount(
                      int.tryParse(tweet.views?.count ?? "") ?? 0),
                ),
                ItemBuilder.buildIconTextButton(
                  context,
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
                      var res =
                          await PostApi.deleteBookmark(tweetId: tweet.restId!);
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
                      var res =
                          await PostApi.createBookmark(tweetId: tweet.restId!);
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
              ],
            ),
          if (!isQuote) const SizedBox(height: 4),
        ],
      ),
    );
  }

  _processTweetFullText(Tweet tweet) {
    String fullText = tweet.legacy!.fullText!;
    fullText = fullText.replaceAll("\n", "<br>");
    tweet.legacy!.entities.hashtags.sort((a, b) {
      return (b['text'] as String).length - (a['text'] as String).length;
    });
    String tmpTag = "@**@/~?><?%^@!()~==/&&/|\\";
    for (var i = 0; i < tweet.legacy!.entities.hashtags.length; i++) {
      Map hashtag = tweet.legacy!.entities.hashtags[i];
      fullText = fullText.replaceAll("#${hashtag['text']}",
          '<a href="https://x.com/hashtag/${Uri.encodeComponent(hashtag['text'])}">$tmpTag${hashtag['text']}</a>');
    }
    for (var i = 0; i < tweet.legacy!.entities.hashtags.length; i++) {
      Map hashtag = tweet.legacy!.entities.hashtags[i];
      fullText = fullText.replaceAll(
          "$tmpTag${hashtag['text']}", '#${hashtag['text']}');
    }
    if (tweet.legacy!.entities.userMentions != null) {
      for (var i = 0; i < tweet.legacy!.entities.userMentions!.length; i++) {
        Map mention = tweet.legacy!.entities.userMentions![i];
        fullText = fullText.replaceAll("@${mention['screen_name']}",
            '<a href="https://x.com/${Uri.encodeComponent(mention['screen_name'])}">$tmpTag${mention['screen_name']}</a>');
      }
      for (var i = 0; i < tweet.legacy!.entities.userMentions!.length; i++) {
        Map mention = tweet.legacy!.entities.userMentions![i];
        fullText = fullText.replaceAll(
            "$tmpTag${mention['screen_name']}", '@${mention['screen_name']}');
      }
    }

    for (var i = tweet.legacy!.entities.urls.length - 1; i >= 0; i--) {
      Url url = tweet.legacy!.entities.urls[i];
      fullText = fullText.replaceAll(url.url,
          '<a href="${Uri.encodeComponent(url.expandedUrl ?? "")}">${url.displayUrl}</a>');
    }
    if (tweet.legacy!.entities.media != null) {
      for (var media in tweet.legacy!.entities.media!) {
        fullText = fullText.replaceAll(media!.url, '');
      }
    }
    return fullText;
  }
}
