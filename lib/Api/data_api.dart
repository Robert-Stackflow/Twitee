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

import 'package:twitee/Openapi/export.dart';

import '../Models/response_result.dart';
import '../Utils/ilogger.dart';
import '../Utils/request_util.dart';

class DataApi {
  static Future<ResponseResult> getBookmarks({
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting bookmarks");
      final response = await RequestUtil.get(
        "/QUjXply7fA7fk05FRyajEg/Bookmarks",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "count": count,
            "includePromotedContent": false,
            "cursor": cursorBottom,
          }),
          "features": jsonEncode({
            "graphql_timeline_v2_bookmark_timeline": true,
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
            "responsive_web_enhance_cards_enabled": false
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get bookmarks",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: BookmarksResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get bookmarks", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> searchBookmarks({
    int count = 20,
    required String query,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Searching bookmarks");
      final response = await RequestUtil.get(
        "/PEXgOsZsh5uw5Kp4eHBW2A/BookmarkSearchTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "count": count,
            "rawQuery": query,
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
            "responsive_web_enhance_cards_enabled": false
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to search bookmarks",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: SearchTimelineResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to search bookmarks", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getLikes({
    int count = 20,
    required String userId,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting likes");
      final response = await RequestUtil.get(
        "/aeJWz--kknVBOl7wQ7gh7Q/Likes",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": count,
            "cursor": cursorBottom,
            "includePromotedContent": false,
            "withClientEventToken": false,
            "withBirdwatchNotes": false,
            "withVoice": true,
            "withV2Timeline": true
          }),
          "features": jsonEncode(
            {
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
              "graphql_is_translatable_rweb_tweet_is_translatable_enabled":
                  true,
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
              "responsive_web_enhance_cards_enabled": false
            },
          ),
          "fieldToggles": jsonEncode({
            "withArticlePlainText": false,
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get likes",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: UserTweetsResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get likes", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getLists({
    int count = 20,
    required String userId,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting lists");
      final response = await RequestUtil.get(
        "/r2E4a5ClopLHXgVK3Ifs5w/ListsManagementPageTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "count": 100,
            "cursor": cursorBottom,
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
            "responsive_web_enhance_cards_enabled": false
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get lists",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(
            data['data']['viewer']['list_management_timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get lists", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }
}
