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

import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Utils/utils.dart';

import '../Models/card_value.dart';
import '../Models/translation_result.dart';
import '../Models/view_config.dart';
import 'app_provider.dart';
import 'ilogger.dart';
import 'image_util.dart';

class TweetUtil {
  static String getMediaDescription(Media media) {
    switch (media.type) {
      case MediaType.photo:
        return "图片";
      case MediaType.video:
        return "视频";
      case MediaType.animatedGif:
        return "GIF";
      default:
        return "";
    }
  }

  static String getMediasDescription(List<Media> media) {
    if (media.isEmpty) return "";
    bool hasPhoto = media.any((element) => element.type == MediaType.photo);
    bool hasVideo = media.any((element) => element.type == MediaType.video);
    bool hasGif = media.any((element) => element.type == MediaType.animatedGif);
    if (hasPhoto && hasVideo && hasGif) {
      return "图片、视频和GIF";
    } else if (hasPhoto && hasVideo) {
      return "图片和视频";
    } else if (hasPhoto && hasGif) {
      return "图片和GIF";
    } else if (hasVideo && hasGif) {
      return "视频和GIF";
    } else if (hasPhoto) {
      return "图片";
    } else if (hasVideo) {
      return "视频";
    } else if (hasGif) {
      return "GIF";
    } else {
      return "";
    }
  }

  static Tweet? getTrueTweet(TimelineTweet timelineTweet) {
    Tweet? tweet = TweetUtil.getTrueTweetByResult(timelineTweet.tweetResults);
    if (tweet == null) {
      return null;
    } else {
      if (tweet.legacy!.retweetedStatusResult != null) {
        Tweet? trueTweet =
            TweetUtil.getTrueTweetByResult(tweet.legacy!.retweetedStatusResult);
        return trueTweet;
      } else {
        return tweet;
      }
    }
  }

  static User? getTrueUser(TimelineTweet timelineTweet) {
    Tweet? tweet = TweetUtil.getTrueTweetByResult(timelineTweet.tweetResults);
    if (tweet == null) {
      return null;
    } else {
      if (tweet.legacy!.retweetedStatusResult != null) {
        Tweet? trueTweet =
            TweetUtil.getTrueTweetByResult(tweet.legacy!.retweetedStatusResult);
        return trueTweet?.core!.userResults!.result as User;
      } else {
        return tweet.core!.userResults!.result as User;
      }
    }
  }

  static User? getRetweetedUser(TimelineTweet timelineTweet) {
    Tweet? tweet = TweetUtil.getTrueTweetByResult(timelineTweet.tweetResults);
    if (tweet == null) {
      return null;
    } else {
      if (tweet.legacy!.retweetedStatusResult != null) {
        return tweet.core!.userResults!.result as User;
      } else {
        return null;
      }
    }
  }

  static bool isRetweet(TimelineTweet timelineTweet) {
    return getRetweetedUser(timelineTweet) != null;
  }

  static String? getTweetScreenName(TimelineTweet timelineTweet) {
    TweetUnion? union = timelineTweet.tweetResults?.result;
    if (union == null) {
      return null;
    }
    if (isRetweet(timelineTweet)) {
      return getRetweetedUser(timelineTweet)?.legacy.screenName;
    } else {
      return getTrueUser(timelineTweet)?.legacy.screenName;
    }
  }

  static Tweet? getTrueTweetByResult(ItemResult? result) {
    TweetUnion? union = result?.result;
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

  static TweetInterstitial? getTweetInterstitialByResult(ItemResult? result) {
    TweetUnion? union = result?.result;
    if (union == null) {
      return null;
    }
    switch (union.runtimeType) {
      case const (Tweet):
        return null;
      case const (TweetWithVisibilityResults):
        return (union as TweetWithVisibilityResults).tweetInterstitial;
      default:
        return null;
    }
  }

  static String? getBigAvatarUrl(String? url) {
    url = url
        ?.replaceAll("_normal.png", "_bigger.png")
        .replaceAll("_normal.jpg", "_bigger.jpg");
    url = url
        ?.replaceAll("_bigger.png", ".png")
        .replaceAll("_bigger.jpg", ".jpg");
    return url;
  }

  static bool hasMediaByTimelineTweet(TimelineTweet tweet) {
    Tweet? t = TweetUtil.getTrueTweetByResult(tweet.tweetResults);
    return t != null &&
        t.legacy!.entities.media != null &&
        t.legacy!.entities.media!.isNotEmpty;
  }

  static int getMediaCount(TimelineTweet tweet) {
    if (!hasMediaByTimelineTweet(tweet)) return 0;
    Tweet t = TweetUtil.getTrueTweetByResult(tweet.tweetResults)!;
    List<Media?> media = t.legacy!.entities.media!;
    media = media.where((e) => e != null).map((e) => e!).toList();
    return media.length;
  }

  static String getGifVideoUrl(Media media) {
    if (media.type == MediaType.animatedGif) {
      return media.videoInfo?.variants.first.url ?? media.mediaUrlHttps!;
    }
    return media.mediaUrlHttps!;
  }

  static String getMediaImageUrl(Media media) {
    switch (media.type) {
      case MediaType.photo:
        return media.mediaUrlHttps!;
      case MediaType.video:
        return media.mediaUrlHttps!;
      case MediaType.animatedGif:
        return media.mediaUrlHttps!;
      default:
        return media.mediaUrlHttps ?? "";
    }
  }

  static String processWithEntities(
    String fullText,
    Entities entities, {
    bool replaceNewline = true,
    bool renderLink = true,
    bool renderAt = false,
  }) {
    fullText = fullText.replaceAll("\n", replaceNewline ? "<br>" : "");
    entities.hashtags.sort((a, b) {
      return (b['text'] as String).length - (a['text'] as String).length;
    });
    if (renderLink) {
      String tmpTag = "~**`/~?><?%^|!()~==/&&/|\\";
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
        if (renderAt) {
          RegExp regex = RegExp(r'@\w+');
          List<String> matchedUsers = regex
              .allMatches(fullText)
              .map((match) => match.group(0)!.substring(1))
              .toList();
          fullText = fullText.replaceAllMapped(
            regex,
            (match) {
              String username = match.group(0)!.substring(1);
              return '<a href="https://x.com/$username">$tmpTag$username</a>';
            },
          );
          for (var i = 0; i < matchedUsers.length; i++) {
            fullText = fullText.replaceAll(
                "$tmpTag${matchedUsers[i]}", '@${matchedUsers[i]}');
          }
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
    }
    if (entities.media != null) {
      for (var media in entities.media!) {
        fullText = fullText.replaceAll(media!.url, '');
      }
    }
    return fullText;
  }

  static String processWithBirdwatchEntities(
    String fullText,
    List<BirdwatchEntity> entities, {
    bool replaceNewline = true,
  }) {
    fullText = fullText.replaceAll("\n", replaceNewline ? "<br>" : "");
    return fullText;
  }

  static bool hasVideo(Tweet tweet) {
    return hasMedia(tweet) &&
        tweet.legacy!.entities.media!.length == 1 &&
        tweet.legacy!.entities.media![0]!.type == MediaType.video;
  }

  static bool hasMedia(Tweet tweet) {
    return tweet.legacy!.entities.media != null;
  }

  static bool hasQuote(Tweet tweet) {
    return tweet.quotedStatusResult != null;
  }

  static bool hasCard(Tweet tweet) {
    if (tweet.card == null) return false;
    if (tweet.card!.legacy == null) return false;
    TweetCardLegacy legacy = tweet.card!.legacy!;
    CardBindings valueList = CardBindings.fromList(legacy.bindingValues);
    return valueList.hasCardType(CardBindingKeyEnum.title) ||
        valueList.hasCardType(CardBindingKeyEnum.vanityUrl) ||
        valueList.hasCardType(CardBindingKeyEnum.description);
  }

  static bool hasVote(Tweet tweet) {
    if (tweet.card == null) return false;
    if (tweet.card!.legacy == null) return false;
    return !hasCard(tweet);
  }

  static bool filterContent(String content) {
    if (!appProvider.enableFilterContent) return true;
    if (Utils.isEmpty(appProvider.filterContentRegExp)) return true;
    return !RegExp(appProvider.filterContentRegExp).hasMatch(content);
  }

  static bool filterUser(String user) {
    if (!appProvider.enableFilterUser) return true;
    if (Utils.isEmpty(appProvider.filterUserRegExp)) return true;
    return !RegExp(appProvider.filterUserRegExp).hasMatch(user);
  }

  static bool filterEntry(TimelineAddEntry entry, ViewConfig? viewConfig) {
    try {
      var containRetweets = viewConfig?.containRetweets ?? true;
      var containReplies = viewConfig?.containReplies ?? true;
      var onlyShowMedia = viewConfig?.onlyShowMedia ?? false;
      bool res = true;
      if (entry.content is TimelineTimelineItem) {
        var item = entry.content as TimelineTimelineItem;
        if (item.itemContent is TimelineTweet) {
          var timlineTweet = item.itemContent as TimelineTweet;
          if (TweetUtil.isRetweet(timlineTweet)) {
            res &= (containRetweets &&
                !appProvider.isBlockRetweetUser(
                  TweetUtil.getTweetScreenName(timlineTweet),
                ));
          }
          Tweet? tweet = TweetUtil.getTrueTweet(timlineTweet);
          if (tweet != null && onlyShowMedia) {
            res &= TweetUtil.hasMedia(tweet);
          }
          if (tweet != null) {
            String fullText = TweetUtil.getFullText(tweet);
            User? user = TweetUtil.getTrueUser(timlineTweet);
            res &= filterContent(fullText);
            res &= filterUser(
                "${user!.legacy.screenName ?? ""} ${user.legacy.name}");
          }
        }
      } else if (entry.content is TimelineTimelineModule) {
        var module = entry.content as TimelineTimelineModule;
        if (module.displayType == DisplayType.verticalConversation) {
          TimelineTimelineModule module =
              (entry.content as TimelineTimelineModule);
          res &= containReplies;
          List<ModuleItem> items = module.items!
              .where((e) => e != null)
              .map((e) => e as ModuleItem)
              .toList();
          List<TimelineTweet> tweets = items
              .where((e) => e.item.itemContent is TimelineTweet)
              .map((e) => e.item.itemContent as TimelineTweet)
              .toList();
          for (TimelineTweet timlineTweet in tweets) {
            String fullText =
                TweetUtil.getFullText(TweetUtil.getTrueTweet(timlineTweet)!);
            User? user = TweetUtil.getTrueUser(timlineTweet);
            res &= filterContent(fullText);
            res &= filterUser(
                "${user!.legacy.screenName ?? ""} ${user.legacy.name}");
          }
        }
      }
      return res;
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to filter entry ${entry.toJson()}", e, t);
      return true;
    }
  }

  static bool hasTranslation(Tweet tweet) {
    String translation = getTranslation(tweet);
    return Utils.isNotEmpty(translation);
  }

  static bool hasRichContent(Tweet tweet) {
    return hasMedia(tweet) || hasQuote(tweet) || hasTranslation(tweet);
  }

  static List<Media> getMedia(Tweet tweet) {
    if (!hasMedia(tweet)) return [];
    return tweet.legacy!.entities.media!
        .where((element) => element != null)
        .map((e) => e as Media)
        .toList();
  }

  static List<Media> getVideoMedia(Tweet tweet) {
    List<Media> media = getMedia(tweet);
    return media.where((element) => element.type == MediaType.video).toList();
  }

  static List<Media> getGiftMedia(Tweet tweet) {
    List<Media> media = getMedia(tweet);
    return media
        .where((element) => element.type == MediaType.animatedGif)
        .toList();
  }

  static String getMp4Url(Media media) {
    List<MediaVideoInfoVariant> videoList = media.videoInfo!.variants
        .where((element) => element.contentType == "video/mp4")
        .toList();
    videoList.sort((a, b) => b.bitrate!.compareTo(a.bitrate!));
    return videoList[0].url;
  }

  static String getPlayUrlByMedia(Media media) {
    switch (media.type) {
      case MediaType.photo:
        return ImageUtil.getOriginalUrl(TweetUtil.getMediaImageUrl(media));
      case MediaType.video:
        return TweetUtil.getMp4Url(media);
      case MediaType.animatedGif:
        return TweetUtil.getGifVideoUrl(media);
      default:
        return "";
    }
  }

  static getFullText(
    Tweet tweet, [
    bool isExpanded = false,
  ]) {
    String fullText = tweet.legacy!.fullText!;
    List<int> range = [0, fullText.length];
    if (tweet.legacy!.displayTextRange != null) {
      range = tweet.legacy!.displayTextRange!.map((e) => e!).toList();
    }
    range[1] = min(fullText.length, range[1] + 1);
    try {
      if (isExpandable(tweet) && isExpanded) {
        fullText = _processTweetFullText(
            tweet, getNoteTweetResult(tweet)!.result.text);
      } else {
        fullText = _processTweetFullText(
            tweet, fullText.substring(range[0], range[1]));
      }
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to process tweet", e, t);
    }
    return fullText;
  }

  static bool isExpandable(Tweet tweet) {
    return tweet.noteTweet != null && tweet.noteTweet!.isExpandable == true;
  }

  static NoteTweetResult? getNoteTweetResult(Tweet tweet) {
    return tweet.noteTweet?.noteTweetResults;
  }

  static getTranslation(Tweet tweet) {
    String translation = tweet.translation?.translation ?? "";
    try {
      translation = processTweetTranslation(tweet.translation);
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to process tweet", e, t);
    }
    return translation;
  }

  static String processTweetTranslation(TranslationResult? result) {
    if (result == null) return "";
    String fullText = result.translation;
    Entities entities = result.entities;
    return TweetUtil.processWithEntities(fullText, entities);
  }

  static String _processTweetFullText(Tweet tweet, [String? fullText]) {
    String text = fullText ?? tweet.legacy!.fullText!;
    Entities entities = tweet.legacy!.entities;
    return TweetUtil.processWithEntities(text, entities);
  }
}
