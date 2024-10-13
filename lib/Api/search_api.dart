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
import 'package:twitee/Models/search_timeline_tab_item.dart';
import 'package:twitee/Openapi/export.dart';

import '../Models/response_result.dart';
import '../Models/search_suggestion.dart';
import '../Utils/ilogger.dart';
import '../Utils/request_util.dart';

enum SearchTimelineType {
  Top("Top"),
  Latest("Latest"),
  People("People"),
  Media("Media"),
  Lists("Lists");

  final String key;

  const SearchTimelineType(this.key);

  bool get useTimelineTimelineItem =>
      this == SearchTimelineType.Top ||
      this == SearchTimelineType.Latest ||
      this == SearchTimelineType.People;

  bool get useTimelineTimelineModule =>
      this == SearchTimelineType.Media || this == SearchTimelineType.Lists;

  static fromIndex(int index) {
    switch (index) {
      case 0:
        return SearchTimelineType.Top;
      case 1:
        return SearchTimelineType.Latest;
      case 2:
        return SearchTimelineType.People;
      case 3:
        return SearchTimelineType.Media;
      case 4:
        return SearchTimelineType.Lists;
      default:
        return SearchTimelineType.Top;
    }
  }
}

class SearchApi {
  static Future<ResponseResult> getExplorePageTimelines({
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting explore page timelines");
      final response = await RequestUtil.get(
        "/IK_dxB178qS4T8cvA2G_UA/ExplorePage",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "cursor": cursorBottom,
          }),
          "features": jsonEncode({
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_timeline_navigation_enabled": true,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "creator_subscriptions_tweet_preview_api_enabled": true,
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
          })
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get explore page timelines",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: (data['data']['explore_page']['body']['timelines'] as List)
            .map((e) => SearchTimelineTabItem.fromMap(e))
            .toList(),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get explore page timelines", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getGenericTimelineById({
    required String timelineId,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting generic timeline by id");
      final response = await RequestUtil.get(
        "/vCtY9zrenXNJcbNl1rqNjw/GenericTimelineById",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "timelineId": timelineId,
            "cursor": cursorBottom,
            "count": 20,
            "withQuickPromoteEligibilityTweetFields": true,
          }),
          "features": jsonEncode({
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_timeline_navigation_enabled": true,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "creator_subscriptions_tweet_preview_api_enabled": true,
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
          })
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get generic timeline by id",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(data['data']['timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get generic timeline by id", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getSuggestion({
    required String query,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting sugguestion");
      final response = await RequestUtil.get(
        "/search/typeahead.json",
        domainType: DomainType.v1,
        params: {
          "include_ext_is_blue_verified": 1,
          "include_ext_verified_type": 1,
          "include_ext_profile_image_shape": 1,
          "q": query,
          "src": "search_box",
          "result_type": "events,users,topics,lists",
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get suggestion",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: SearchSuggestionResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get suggestion", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> saveSearchKey({
    required String query,
  }) async {
    try {
      ILogger.info("Twitee API", "Saving search key");
      final response = await RequestUtil.post(
        "/saved_searches/create.json",
        domainType: DomainType.v1,
        data: {
          "query": query,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to save search key",
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
      ILogger.error("Twitee", "Failed to save search key", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getSearchTimeline({
    required String query,
    int count = 20,
    String? cursorBottom,
    required SearchTimelineType type,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting search timeline");
      final response = await RequestUtil.get(
        "/UN1i3zUiCWa-6r-Uaho4fw/SearchTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "rawQuery": query,
            "count": count,
            "querySource": "recent_search_click",
            "product": type.key,
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
          })
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get search timeline",
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
      ILogger.error("Twitee", "Failed to get search timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }
}
