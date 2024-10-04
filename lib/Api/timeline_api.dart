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

class TimelineApi {
  static Future<ResponseResult> getHomeTimeline({
    int count = 20,
    String? cursorBottom,
    List<String> seenTweetIds = const [],
    bool isLatest = true,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting home timeline");
      final response = await RequestUtil.post(
        isLatest
            ? "/DiTkXJgLqBBxCs7zaYsbtA/HomeLatestTimeline"
            : "/HJFjzBgCs16TqxewQOeLNg/HomeTimeline",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "count": count,
            "includePromotedContent": false,
            "latestControlAvailable": true,
            "requestContext": cursorBottom != null ? "ptr" : "launch",
            "withCommunity": true,
            "seenTweetIds": seenTweetIds,
            "cursor": cursorBottom,
          },
          "features": {
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
          },
          "queryId":
              isLatest ? "DiTkXJgLqBBxCs7zaYsbtA" : "HJFjzBgCs16TqxewQOeLNg"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get home timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: TimelineResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get home timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getListTimeline({
    int count = 20,
    required String listId,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting list timeline");
      final response = await RequestUtil.get(
        "/Pa45JvqZuKcW1plybfgBlQ/ListLatestTweetsTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "listId": listId,
            "count": count,
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
          message: "Failed to get list timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: ListLatestTweetsTimelineResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get list timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }
}
