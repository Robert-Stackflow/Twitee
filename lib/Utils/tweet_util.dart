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

import 'package:twitee/Openapi/export.dart';

class TweetUtil {
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

 static String getGifVideoUrl(Media media) {
    if (media.type == MediaType.animatedGif) {
      return media.videoInfo?.variants.first.url ?? media.mediaUrlHttps!;
    }
    return media.mediaUrlHttps!;
  }
}
