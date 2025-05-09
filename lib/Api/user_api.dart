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
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Openapi/export.dart';

import '../Models/translation_result.dart';
import '../Utils/ilogger.dart';
import '../Utils/request_util.dart';

class UserApi {
  static Future<ResponseResult> getUserInfo(String username) async {
    try {
      ILogger.info("Twitee API", "Getting user info");
      final response = await RequestUtil.get(
        "/Yka-W8dz7RaEuQNkroPkYw/UserByScreenName",
        params: {
          "variables": jsonEncode(
              {"screen_name": username, "withSafetyModeUserFields": true}),
          "features": jsonEncode({
            "hidden_profile_subscriptions_enabled": true,
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "subscriptions_verification_info_is_identity_verified_enabled":
                true,
            "subscriptions_verification_info_verified_since_enabled": true,
            "highlights_tweets_tab_ui_enabled": true,
            "responsive_web_twitter_article_notes_tab_enabled": true,
            "subscriptions_feature_can_gift_premium": true,
            "creator_subscriptions_tweet_preview_api_enabled": true,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          }),
          "fieldToggles": jsonEncode({"withAuxiliaryUserLabels": false}),
        },
        domainType: DomainType.graphql,
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to get user info",
          code: response?.data["errors"][0]["code"] ?? 500,
        );
      }
      return ResponseResult.success(
          message: "Success", data: UserResponse.fromJson(response.data));
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get user info", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getUserInfoById(String userId) async {
    try {
      ILogger.info("Twitee API", "Getting user info");
      final response = await RequestUtil.get(
        "/GYBpHkmyXjeuX9IeNJmweA/UserByRestId",
        params: {
          "variables": jsonEncode({
            "userIds": [userId],
          }),
          "features": jsonEncode({
            "hidden_profile_subscriptions_enabled": true,
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "subscriptions_verification_info_is_identity_verified_enabled":
                true,
            "subscriptions_verification_info_verified_since_enabled": true,
            "highlights_tweets_tab_ui_enabled": true,
            "responsive_web_twitter_article_notes_tab_enabled": true,
            "subscriptions_feature_can_gift_premium": true,
            "creator_subscriptions_tweet_preview_api_enabled": true,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          }),
          "fieldToggles": jsonEncode({"withAuxiliaryUserLabels": false}),
        },
        domainType: DomainType.graphql,
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to get user info",
          code: response?.data["errors"][0]["code"] ?? 500,
        );
      }
      return ResponseResult.success(
          message: "Success", data: UserResponse.fromJson(response.data));
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get user info", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getUserProfile(String username) async {
    try {
      ILogger.info("Twitee API", "Getting user profile");
      final response = await RequestUtil.get(
        "/Z2BA99jFw6TxaJM5v7Irmg/useFetchProfileBlocks_profileExistsQuery",
        params: {
          "variables": jsonEncode({
            "screen_name": username,
          }),
        },
        domainType: DomainType.graphql,
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to get user profile",
          code: response?.data["errors"][0]["code"] ?? 500,
        );
      }
      return ResponseResult.success(message: "Success", data: response.data);
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get user profile", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> follow({
    required String userId,
  }) async {
    try {
      ILogger.info("Twitee API", "Following user");
      final response = await RequestUtil.post(
        "/friendships/create.json",
        domainType: DomainType.v1,
        data: {
          "user_id": userId,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to follow user",
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
      ILogger.error("Twitee", "Failed to follow user", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> unfollow({
    required String userId,
  }) async {
    try {
      ILogger.info("Twitee API", "Unfollowing user");
      final response = await RequestUtil.post(
        "/friendships/destroy.json",
        domainType: DomainType.v1,
        data: {
          "user_id": userId,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to unfollow user",
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
      ILogger.error("Twitee", "Failed to unfollow user", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> mute({
    required String userId,
  }) async {
    try {
      ILogger.info("Twitee API", "Muting user");
      final response = await RequestUtil.post(
        "/mutes/users/create.json",
        domainType: DomainType.v1,
        data: {
          "user_id": userId,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to mute user",
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
      ILogger.error("Twitee", "Failed to mute user", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> unmute({
    required String userId,
  }) async {
    try {
      ILogger.info("Twitee API", "Unmuting user");
      final response = await RequestUtil.post(
        "/mutes/users/destroy.json",
        domainType: DomainType.v1,
        data: {
          "user_id": userId,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to unmute user",
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
      ILogger.error("Twitee", "Failed to unmute user", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> muteRetweet({
    required String userId,
  }) async {
    try {
      ILogger.info("Twitee API", "Muting user retweet");
      final response = await RequestUtil.post(
        "/friendships/update.json",
        domainType: DomainType.v1,
        data: {
          "include_profile_interstitial_type": 1,
          "include_blocking": 1,
          "include_blocked_by": 1,
          "include_followed_by": 1,
          "include_want_retweets": 1,
          "include_mute_edge": 1,
          "include_can_dm": 1,
          "include_can_media_tag": 1,
          "include_ext_is_blue_verified": 1,
          "include_ext_verified_type": 1,
          'include_ext_profile_image_shape': 1,
          "skip_status": 1,
          "cursor": -1,
          "id": userId,
          "retweets": false,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to mute user retweet",
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
      ILogger.error("Twitee", "Failed to mute user retweet", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> unmuteRetweet({
    required String userId,
  }) async {
    try {
      ILogger.info("Twitee API", "Unmuting user retweet");
      final response = await RequestUtil.post(
        "/friendships/update.json",
        domainType: DomainType.v1,
        data: {
          "include_profile_interstitial_type": 1,
          "include_blocking": 1,
          "include_blocked_by": 1,
          "include_followed_by": 1,
          "include_want_retweets": 1,
          "include_mute_edge": 1,
          "include_can_dm": 1,
          "include_can_media_tag": 1,
          "include_ext_is_blue_verified": 1,
          "include_ext_verified_type": 1,
          'include_ext_profile_image_shape': 1,
          "skip_status": 1,
          "cursor": -1,
          "id": userId,
          "retweets": true,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to unmute user retweet",
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
      ILogger.error("Twitee", "Failed to unmute user retweet", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> block({
    required String userId,
  }) async {
    try {
      ILogger.info("Twitee API", "Blocking user");
      final response = await RequestUtil.post(
        "/blocks/create.json",
        domainType: DomainType.v1,
        data: {
          "user_id": userId,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to block user",
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
      ILogger.error("Twitee", "Failed to block user", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> unblock({
    required String userId,
  }) async {
    try {
      ILogger.info("Twitee API", "Unblocking user");
      final response = await RequestUtil.post(
        "/blocks/destroy.json",
        domainType: DomainType.v1,
        data: {
          "user_id": userId,
        },
        options: Options(
          headers: {
            "Content-Type": Headers.formUrlEncodedContentType,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to unblock user",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: FollowResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to unblock user", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getFollowingList({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting following list");
      final response = await RequestUtil.get(
        "/7oQrdmth4zE3EtD42ZxgOA/Following",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": 20,
            "cursor": cursorBottom,
            "includePromotedContent": false,
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
          })
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get following list",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: FollowResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get following list", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getFollowerList({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting follower list");
      final response = await RequestUtil.get(
        "/OSXFkKmGvfw_6pGgGtkWFg/Followers",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": 20,
            "cursor": cursorBottom,
            "includePromotedContent": false,
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
          })
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get follower list",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: FollowResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get follower list", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getSubscriptions({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting subscriptions");
      final response = await RequestUtil.get(
        "/LE6RjmjkSMWorQcJu55wFg/UserCreatorSubscriptions",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": 20,
            "cursor": cursorBottom,
            "includePromotedContent": false,
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
          })
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get subscriptions",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: FollowResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get subscriptions", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getBlueVerifiedFollowerList({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting blue verified follower list");
      final response = await RequestUtil.get(
        "/cpPRJUmSz2Fiu1PpIYmEsw/BlueVerifiedFollowers",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": 20,
            "cursor": cursorBottom,
            "includePromotedContent": false,
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
          })
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get blue verified follower list",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: FollowResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error(
          "Twitee", "Failed to get blue verified follower list", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getFollowerYouKnowList({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting follower you know list");
      final response = await RequestUtil.get(
        "/JDcfgeQj5nyNGGRk46JM5w/FollowersYouKnow",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": 20,
            "cursor": cursorBottom,
            "includePromotedContent": false,
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
          })
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get follower you know list",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: FollowResponse.fromJson(data),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get follower you know list", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getFriendList({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting friend list");
      final response = await RequestUtil.get(
        "/friends/following/list.json",
        domainType: DomainType.v1,
        params: {
          "user_id": userId,
          "count": count,
          "cursor": cursorBottom,
          "include_profile_interstitial_type": 1,
          "include_blocking": 1,
          "include_blocked_by": 1,
          "include_followed_by": 1,
          "include_want_retweets": 1,
          "include_mute_edge": 1,
          "include_can_dm": 1,
          "include_can_media_tag": 1,
          "include_ext_is_blue_verified": 1,
          "include_ext_verified_type": 1,
          "include_ext_profile_image_shape": 1,
          "skip_status": 1,
          "with_total_count": true,
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get friend list",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data:
            (data['users'] as List).map((e) => UserLegacy.fromJson(e)).toList(),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get friend list", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getUserTweets({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting user tweets");
      final response = await RequestUtil.get(
        "/E3opETHurmVJflFsUBVuUQ/UserTweets",
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": count,
            "cursor": cursorBottom,
            "includePromotedContent": false,
            "withQuickPromoteEligibilityTweetFields": true,
            "withVoice": true,
            "withV2Timeline": true,
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
          "fieldToggles": jsonEncode({"withArticlePlainText": false}),
        },
        domainType: DomainType.graphql,
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to get user tweets",
          code: response?.data["errors"][0]["code"] ?? 500,
        );
      }
      return ResponseResult.success(
          message: "Success", data: UserTweetsResponse.fromJson(response.data));
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get user tweets", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getUserTweetsAndReplies({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting user tweets and replies");
      final response = await RequestUtil.get(
        "/bt4TKuFz4T7Ckk-VvQVSow/UserTweetsAndReplies",
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": count,
            "cursor": cursorBottom,
            "includePromotedContent": false,
            "withCommunity": true,
            "withVoice": true,
            "withV2Timeline": true,
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
          "fieldToggles": jsonEncode({"withArticlePlainText": false}),
        },
        domainType: DomainType.graphql,
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to get user tweets and replies",
          code: response?.data["errors"][0]["code"] ?? 500,
        );
      }
      return ResponseResult.success(
          message: "Success", data: UserTweetsResponse.fromJson(response.data));
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get user tweets and replies", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getUserHighlights({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting user highlights");
      final response = await RequestUtil.get(
        "/Ei7DpEm7kboTr2zY_9kiqQ/UserHighlightsTweets",
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": count,
            "cursor": cursorBottom,
            "includePromotedContent": false,
            "withCommunity": true,
            "withVoice": true,
            "withV2Timeline": true,
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
          "fieldToggles": jsonEncode({"withArticlePlainText": false}),
        },
        domainType: DomainType.graphql,
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to get user tweets and replies",
          code: response?.data["errors"][0]["code"] ?? 500,
        );
      }
      return ResponseResult.success(
          message: "Success", data: UserTweetsResponse.fromJson(response.data));
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get user tweets and replies", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getUserMedia({
    required String userId,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting user media");
      final response = await RequestUtil.get(
        "/dexO_2tohK86JDudXXG3Yw/UserMedia",
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": count,
            "cursor": cursorBottom,
            "includePromotedContent": false,
            "withClientEventToken": false,
            "withBirdwatchNotes": false,
            "withVoice": true,
            "withV2Timeline": true,
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
          "fieldToggles": jsonEncode({"withArticlePlainText": false}),
        },
        domainType: DomainType.graphql,
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to get user media",
          code: response?.data["errors"][0]["code"] ?? 500,
        );
      }
      return ResponseResult.success(
          message: "Success", data: UserTweetsResponse.fromJson(response.data));
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get user media", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getLists({
    required String userId,
    String? cursor,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting lists");
      final response = await RequestUtil.get(
        "/TEdpD2Z_8iqgDcvSOYveew/CombinedLists",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": 100,
            "cursor": cursor,
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
        return ResponseResult.error(
          message: "Failed to get lists",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(
            data['data']['user']['result']['timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get lists", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getInnerLists({
    required String userId,
    String? cursor,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting in lists");
      final response = await RequestUtil.get(
        "/LrcrWDL5xwdaU4GDqK9i_g/ListMemberships",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": 100,
            "cursor": cursor,
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
        return ResponseResult.error(
          message: "Failed to get in lists",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(
            data['data']['user']['result']['timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get in lists", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getTopics({
    required String userId,
    String? cursor,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting topics");
      final response = await RequestUtil.get(
        "/sGzdMcOv6TVGgc0DkSpSBw/ViewingOtherUsersTopicsPage",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "userId": userId,
            "count": 100,
            "cursor": cursor,
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
        return ResponseResult.error(
          message: "Failed to get topics",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(data['data']['user']['result']
            ['viewing_other_users_topics_page']['body']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get topics", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> translateProfile({
    required String userId,
    required String destinationLanguage,
  }) async {
    try {
      ILogger.info("Twitee API", "Translating");
      final response = await RequestUtil.get(
        "/strato/column/None/profileUserId=$userId,destinationLanguage=None,translationSource=Some(Google)/translation/service/translateProfile",
        domainType: DomainType.v1,
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
        data: TranslationResult.fromJson(data['profileTranslation']),
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
}
