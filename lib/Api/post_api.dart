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

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:twitee/Models/translation_result.dart';
import 'package:twitee/Openapi/export.dart';

import '../Models/response_result.dart';
import '../Utils/ilogger.dart';
import '../Utils/request_util.dart';

enum RankType {
  Relevance,
  Recency,
  Likes;

  String get value {
    switch (this) {
      case RankType.Relevance:
        return "Relevance";
      case RankType.Recency:
        return "Recency";
      case RankType.Likes:
        return "Likes";
    }
  }

  static RankType fromIndex(int index){
    switch (index) {
      case 0:
        return RankType.Relevance;
      case 1:
        return RankType.Recency;
      case 2:
        return RankType.Likes;
      default:
        return RankType.Relevance;
    }
  }
}

enum FeedbackType {
  DontLike,
  SeeFewer,
  NotRelevant;

  String get value {
    switch (this) {
      case FeedbackType.DontLike:
        return "DontLike";
      case FeedbackType.SeeFewer:
        return "SeeFewer";
      case FeedbackType.NotRelevant:
        return "NotRelevant";
    }
  }

  String getMessage(String screenName) {
    switch (this) {
      case FeedbackType.DontLike:
        return "谢谢。此后会使用此信息，来优化你的时间线。";
      case FeedbackType.SeeFewer:
        return "谢谢。将会减少向你显示来自 $screenName 的帖子。";
      case FeedbackType.NotRelevant:
        return "谢谢。你将看到更少类似帖子。";
    }
  }
}

class PostApi {
  static Future<ResponseResult> like({
    required String tweetId,
  }) async {
    try {
      ILogger.info("Twitee API", "Liking tweet");
      final response = await RequestUtil.post(
        "/lI07N6Otwv1PhnEgXILM7A/FavoriteTweet",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "tweet_id": tweetId,
          },
          "queryId": "lI07N6Otwv1PhnEgXILM7A"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to like tweet",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: data,
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to like tweet", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> unlike({
    required String tweetId,
  }) async {
    try {
      ILogger.info("Twitee API", "Unliking tweet");
      final response = await RequestUtil.post(
        "/ZYKSe-w7KEslx3JhSIk5LA/UnfavoriteTweet",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "tweet_id": tweetId,
          },
          "queryId": "lI07N6Otwv1PhnEgXILM7A"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to unlike tweet",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: data,
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to unlike tweet", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> createBookmark({
    required String tweetId,
  }) async {
    try {
      ILogger.info("Twitee API", "Bookmarking tweet");
      final response = await RequestUtil.post(
        "/aoDbu3RHznuiSkQ9aNM67Q/CreateBookmark",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "tweet_id": tweetId,
          },
          "queryId": "lI07N6Otwv1PhnEgXILM7A"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to bookmark tweet",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: data,
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to bookmark tweet", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> deleteBookmark({
    required String tweetId,
  }) async {
    try {
      ILogger.info("Twitee API", "Deleting bookmark");
      final response = await RequestUtil.post(
        "/Wlmlj2-xzyS1GN3a6cj-mQ/DeleteBookmark",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "tweet_id": tweetId,
          },
          "queryId": "lI07N6Otwv1PhnEgXILM7A"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to delete bookmark",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: data,
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to delete bookmark", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> retweet({
    required String tweetId,
  }) async {
    try {
      ILogger.info("Twitee API", "Retweeting tweet");
      final response = await RequestUtil.post(
        "/ojPdsZsimiJrUGLR1sjUtA/CreateRetweet",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "tweet_id": tweetId,
          },
          "queryId": "lI07N6Otwv1PhnEgXILM7A"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to retweet",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: data,
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to retweet", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> deleteRetweet({
    required String tweetId,
  }) async {
    try {
      ILogger.info("Twitee API", "Deleting retweet");
      final response = await RequestUtil.post(
        "/iQtK4dl5hBmXewYZuEOKVw/DeleteRetweet",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "source_tweet_id": tweetId,
          },
          "queryId": "lI07N6Otwv1PhnEgXILM7A"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to delete retweet",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: data,
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to delete retweet", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> feedback({
    required FeedbackType feedbackType,
    required String actionMetaData,
    bool undo = false,
  }) async {
    try {
      ILogger.info("Twitee API", "Feedback");
      final response = await RequestUtil.post(
        "/timeline/feedback.json",
        domainType: DomainType.v2,
        params: {
          "feedback_type": feedbackType.value,
          "action_metadata": actionMetaData,
        },
        data: {
          "feedback_type": feedbackType.value,
          "undo": undo,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to feedback",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: data,
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to feedback", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> translate({
    required String tweetId,
    required String destinationLanguage,
  }) async {
    try {
      ILogger.info("Twitee API", "Translating");
      final response = await RequestUtil.get(
        "/1.1/strato/column/None/tweetId=$tweetId,destinationLanguage=None,translationSource=Some(Google),feature=None,timeout=None,onlyCached=None/translation/service/translateTweet",
        domainType: DomainType.api,
        forceCsrfToken: true,
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to translate",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: TranslationResult.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      if (e is DioException && e.response?.statusCode == 404) {
        return ResponseResult.error(code: 404, message: 'Success');
      }
      ILogger.error("Twitee", "Failed to translate", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getTweetDetail({
    required String tweetId,
    RankType rankType = RankType.Relevance,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting tweet detail");
      final response = await RequestUtil.get(
        "/QuBlQ6SxNAQCt6-kBiCXCQ/TweetDetail",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "focalTweetId": tweetId,
            "referrer": "home",
            "cursor": cursorBottom,
            "controller_data":
                "DAACDAABDAABCgABAkAABEoCAAMKAAIAAAAAAAEBAAoACdWUvTi8Qt8rCAALAAAAAg8ADAMAAAALAwACSgQAQAIAAQEKAA6cMjFW+ypM9AAAAAA=",
            "with_rux_injections": false,
            "rankingMode": rankType.value,
            "includePromotedContent": false,
            "withCommunity": true,
            "withQuickPromoteEligibilityTweetFields": true,
            "withBirdwatchNotes": true,
            "withVoice": true,
          }),
          "features": jsonEncode({
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "creator_subscriptions_tweet_preview_api_enabled": true,
            "responsive_web_graphql_timeline_navigation_enabled": true,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "communities_web_enable_tweet_community_results_fetch": true,
            "c9s_tweet_anatomy_moderator_badge_enabled": true,
            "articles_preview_enabled": true,
            "responsive_web_edit_tweet_api_enabled": true,
            "graphql_is_translatable_rweb_tweet_is_translatable_enabled": true,
            "view_counts_everywhere_api_enabled": true,
            "longform_notetweets_consumption_enabled": true,
            "responsive_web_twitter_article_tweet_consumption_enabled": true,
            "tweet_awards_web_tipping_enabled": false,
            "creator_subscriptions_quote_tweet_preview_enabled": false,
            "freedom_of_speech_not_reach_fetch_enabled": true,
            "standardized_nudges_misinfo": true,
            "tweet_with_visibility_results_prefer_gql_limited_actions_policy_enabled":
                true,
            "rweb_video_timestamps_enabled": true,
            "longform_notetweets_rich_text_read_enabled": true,
            "longform_notetweets_inline_media_enabled": true,
            "responsive_web_enhance_cards_enabled": false,
          }),
          "fieldToggles": jsonEncode({
            "withArticleRichContentState": true,
            "withArticlePlainText": false,
            "withGrokAnalyze": false,
            "withDisallowedReplyControls": false,
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get tweet detail",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: TweetDetailResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get tweet detail", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }
}
