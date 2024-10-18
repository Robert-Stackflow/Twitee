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

import 'package:twitee/Utils/user_util.dart';

import '../Models/response_result.dart';
import '../Openapi/models/timeline_twitter_list.dart';
import '../Utils/ilogger.dart';
import '../Utils/request_util.dart';

class ListApi {
  static Future<ResponseResult> updateList({
    required String listId,
    required bool isPrivate,
    required String description,
    required String name,
  }) async {
    try {
      ILogger.info("Twitee API", "Updating list");
      final response = await RequestUtil.post(
        "/i4KUhJqGld7MPDDx00OItA/UpdateList",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "listId": listId,
            "isPrivate": isPrivate,
            "description": description,
            "name": name,
          },
          "features": {
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
            false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          },
          "queryId": "i4KUhJqGld7MPDDx00OItA"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to update list",
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
      ILogger.error("Twitee", "Failed to update list", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> pinList({
    required String listId,
  }) async {
    try {
      ILogger.info("Twitee API", "Pinning list");
      final response = await RequestUtil.post(
        "/tMTbT1xOGFmDFNYzHCZO9w/PinTimeline",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "pinnedTimelineItem": {"id": listId, "pinned_timeline_type": "List"}
          },
          "features": {
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
            false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          },
          "queryId": "tMTbT1xOGFmDFNYzHCZO9w"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to pin list",
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
      ILogger.error("Twitee", "Failed to pin list", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> unpinList({
    required String listId,
  }) async {
    try {
      ILogger.info("Twitee API", "Unpinning list");
      final response = await RequestUtil.post(
        "/GwcMzNnF34gAqifbtguFgg/UnpinTimeline",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "pinnedTimelineItem": {"id": listId, "pinned_timeline_type": "List"}
          },
          "features": {
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
            false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          },
          "queryId": "GwcMzNnF34gAqifbtguFgg"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to unpin list",
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
      ILogger.error("Twitee", "Failed to unpin list", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getListInfo({
    required String listId,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting list info");
      final response = await RequestUtil.get(
        "/w46tjJuWO_Egbz_JZoiajw/ListByRestId",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode(
              {"listId": listId}
          ),
          "features": jsonEncode({
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled": false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get list info",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: TimelineTwitterListInfo.fromJson(data['data']['list']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get list info", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getMembers({
    required String listId,
    required String cursor,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting list members");
      final response = await RequestUtil.get(
        "/lHN_2Dq2a2iFrQHsXJiBnw/ListMembers",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "listId": listId,
            "count": 20,
            "withSafetyModeUserFields": true,
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
          )
        },
      );
      if (response == null || response.statusCode != 200) {
        if (response?.statusCode == 401) {
          UserUtil.showReloginDialog();
        }
        return ResponseResult.error(
          message: "Failed to get list members",
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
      ILogger.error("Twitee", "Failed to get list members", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getPinnedLists() async {
    try {
      ILogger.info("Twitee API", "Getting pinned lists");
      final response = await RequestUtil.get(
        "/xUjP0kS7EE05CLp3KUD-Eg/PinnedTimelines",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({}),
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
          )
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get pinned lists",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: (data['data']['pinned_timelines']['pinned_timelines'] as List)
            .map((e) => TimelineTwitterListInfo.fromJson(e['list']))
            .toList(),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get pinned lists", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }
}
