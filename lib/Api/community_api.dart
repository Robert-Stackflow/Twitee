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

import 'package:twitee/Api/post_api.dart';
import 'package:twitee/Openapi/export.dart';

import '../Models/response_result.dart';
import '../Utils/ilogger.dart';
import '../Utils/request_util.dart';

enum CommunityDisplayLocation {
  home,
  search,
  profile,
  community;

  String get value {
    switch (this) {
      case CommunityDisplayLocation.home:
        return "Home";
      case CommunityDisplayLocation.search:
        return "Search";
      case CommunityDisplayLocation.profile:
        return "Profile";
      case CommunityDisplayLocation.community:
        return "Community";
    }
  }
}

class CommunityApi {
  static Future<ResponseResult> pinCommunity({
    required String communityId,
  }) async {
    try {
      ILogger.info("Twitee API", "Pinning community");
      final response = await RequestUtil.post(
        "/cDUaI1ru7Tf9-RT8mTXT6Q/PinTimeline",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "pinnedTimelineItem": {
              "id": communityId,
              "pinned_timeline_type": "Community"
            }
          },
          "features": {
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          },
          "queryId": "cDUaI1ru7Tf9-RT8mTXT6Q"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to pin community",
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
      ILogger.error("Twitee", "Failed to pin community", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> unpinCommunity({
    required String communityId,
  }) async {
    try {
      ILogger.info("Twitee API", "Unpinning community");
      final response = await RequestUtil.post(
        "/fb1yl-F81zg78dmR1Qp8Xg/UnpinTimeline",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "pinnedTimelineItem": {
              "id": communityId,
              "pinned_timeline_type": "Community"
            }
          },
          "features": {
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          },
          "queryId": "fb1yl-F81zg78dmR1Qp8Xg"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to unpin community",
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
      ILogger.error("Twitee", "Failed to unpin community", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> joinCommunity({
    required String communityId,
  }) async {
    try {
      ILogger.info("Twitee API", "Joinning community");
      final response = await RequestUtil.post(
        "/yCqKPJ4CrQqxhdVvIZhQeQ/JoinCommunity",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "communityId": communityId,
          },
          "features": {
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          },
          "queryId": "yCqKPJ4CrQqxhdVvIZhQeQ"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to join community",
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
      ILogger.error("Twitee", "Failed to join community", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> leaveCommunity({
    required String communityId,
  }) async {
    try {
      ILogger.info("Twitee API", "Leaving community");
      final response = await RequestUtil.post(
        "/OmtSAvcJeNOYyIoh40rRdw/LeaveCommunity",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "communityId": communityId,
          },
          "features": {
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          },
          "queryId": "OmtSAvcJeNOYyIoh40rRdw"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to leave community",
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
      ILogger.error("Twitee", "Failed to leave community", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityListTimeline({
    int count = 20,
    required String communityId,
    String? cursorBottom,
    CommunityDisplayLocation location = CommunityDisplayLocation.home,
    RankType rankingMode = RankType.Relevance,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community list timeline");
      final response = await RequestUtil.get(
        "/AL1X9h1l0JwZ8FHwfSE3pg/CommunityTweetsTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "communityId": communityId,
            "count": count,
            "displayLocation": location.value,
            "cursor": cursorBottom,
            "withCommunity": true,
            "rankingMode": rankingMode.value,
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
          message: "Failed to get community list timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(data['data']['communityResults']['result']
            ['ranked_community_timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community list timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityMediaTimeline({
    int count = 20,
    required String communityId,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community media timeline");
      final response = await RequestUtil.get(
        "/EDfmv0vxBQQHN7wBq9ma7Q/CommunityMediaTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "communityId": communityId,
            "count": count,
            "cursor": cursorBottom,
            "withCommunity": true,
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
          message: "Failed to get community media timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(data['data']['communityResults']['result']
            ['community_media_timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community media timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityAboutTimeline({
    int count = 20,
    required String communityId,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community about timeline");
      final response = await RequestUtil.get(
        "/kLoQ2aIeK_n3L_ug-croEw/CommunityAboutTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "communityId": communityId,
            "count": count,
            "cursor": cursorBottom,
            "withCommunity": true,
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
          message: "Failed to get community about timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(data['data']['communityResults']['result']
            ['about_timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community about timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunitySearchTimeline({
    int count = 20,
    required String communityId,
    required String query,
    String? cursorBottom,
    RankType rankingMode = RankType.Likes,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community search timeline");
      final response = await RequestUtil.get(
        "/epONBABgOpLGT_wjyxJkxw/CommunityTweetSearchModuleQuery",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "communityId": communityId,
            "count": count,
            "cursor": cursorBottom,
            "query": query,
            "timelineRankingMode": rankingMode.value,
            "withCommunity": false,
            "includePromotedContent": false,
            "timelineId":
                "communityTweetSearch-$communityId-$query-${rankingMode.value}",
            "withBirdwatchNotes": false,
            "withDmMuting": false,
            "withClientEventToken": false,
            "withVoice": false,
            "isListMemberTargetUserId": "0",
            "withQuickPromoteEligibilityTweetFields": false,
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
          message: "Failed to get community search timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(data['data']['communityResults']['result']
            ['community_filtered_timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community search timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityMembers({
    int count = 20,
    required String communityId,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community members");
      final response = await RequestUtil.get(
        "/V7OdnMvujMPsCctT_daznQ/membersSliceTimeline_Query",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "communityId": communityId,
            "count": count,
            "cursor": cursorBottom,
          }),
          "features": jsonEncode({
            "responsive_web_graphql_timeline_navigation_enabled": true,
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get community members",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: (data['data']['communityResults']['result']['members_slice']
                ['items_results'] as List)
            .map((e) => User.fromJson(e['result']))
            .toList(),
        data2: data['data']['communityResults']['result']['members_slice']
            ['slice_info']['next_cursor'],
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community members", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityModerators({
    int count = 20,
    required String communityId,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community moderators");
      final response = await RequestUtil.get(
        "/e1aYy7TNQ5B6jfvhWRXTvw/moderatorsSliceTimeline_Query",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "communityId": communityId,
            "count": count,
            "cursor": cursorBottom,
          }),
          "features": jsonEncode({
            "responsive_web_graphql_timeline_navigation_enabled": true,
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get community moderators",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: (data['data']['communityResults']['result']['moderators_slice']
                ['items_results'] as List)
            .map((e) => User.fromJson(e['result']))
            .toList(),
        data2: data['data']['communityResults']['result']['moderators_slice']
            ['slice_info']['next_cursor'],
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community moderators", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityMemeberBySearch({
    int count = 20,
    required String communityId,
    required String query,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community members by search");
      final response = await RequestUtil.get(
        "/_h1cVpB5J1-jg2iU8uv6bw/CommunityMemberRelationshipTypeahead",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "communityId": communityId,
            "prefix": "ff",
            "count": count,
            "cursor": cursorBottom,
          }),
          "features": jsonEncode({
            "responsive_web_graphql_timeline_navigation_enabled": true,
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get community members by search",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: (data['data']['communityResults']['result']
                ['member_relationship_typeahead'] as List)
            .map((e) => User.fromJson(e['user_results']['result']))
            .toList(),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error(
          "Twitee", "Failed to get community members by search", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunititesExploreTimeline({
    int count = 20,
    String? cursorBottom,
    String? topicId,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community explore timeline");
      final response = await RequestUtil.get(
        "/ELAwqrrcZNRuzGCEtMMojQ/CommunitiesExploreTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "count": count,
            "cursor": cursorBottom,
            "withCommunity": true,
            "topicId": topicId,
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
          message: "Failed to get community explore timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(
            data['data']['viewer']['explore_communities_timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community explore timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunititesRankedTimeline({
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community ranked timeline");
      final response = await RequestUtil.get(
        "/NVJIUjvGDC3o814fGgkU3g/CommunitiesRankedTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "count": count,
            "cursor": cursorBottom,
            "withCommunity": true,
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
          message: "Failed to get community ranked timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(
            data['data']['viewer']['ranked_communities_timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community ranked timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityDiscoveryTimeline() async {
    try {
      ILogger.info("Twitee API", "Getting community discovery timeline");
      final response = await RequestUtil.get(
        "/QEqglWqo-BwU8nP5nvv02Q/CommunityDiscoveryTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "withCommunity": true,
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
          message: "Failed to get community discovery timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(
            data['data']['viewer']['community_discovery_timeline']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error(
          "Twitee", "Failed to get community discovery timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getTopicTimeline({
    required String topicId,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting topic timeline");
      final response = await RequestUtil.get(
        "/JJ3lqlR83aU1c9ti1teXaA/TopicTimelineQuery",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "topicId": int.tryParse(topicId) ?? 0,
            "cursor": cursorBottom,
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get topic timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data:
            (data['data']['fetch_popular_communities']['items_results'] as List)
                .map((e) => Community.fromJson(e))
                .toList(),
        data2: data['data']['fetch_popular_communities']['slice_info']
            ['next_cursor'],
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get topic timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunitiesSearch({
    required String query,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting communities search");
      final response = await RequestUtil.get(
        "/daVUkhfHn7-Z8llpYVKJSw/CommunitiesSearchQuery",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "query": query,
            "cursor": cursorBottom,
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get communities search",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data:
            (data['data']['communities_search_slice']['items_results'] as List)
                .map((e) => Community.fromJson(e))
                .toList(),
        data2: data['data']['communities_search_slice']['slice_info']
            ['next_cursor'],
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get communities search", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getGlobalCommunitiesPostSearchTimeline({
    required String query,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting global communities timeline");
      final response = await RequestUtil.get(
        "/CK1l2roINrMofbB8pcALbw/GlobalCommunitiesPostSearchTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "rawQuery": query,
            "count": 20,
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
          message: "Failed to get global communities timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(data['data']['search_by_raw_query']
            ['communities_posts_search_page']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error(
          "Twitee", "Failed to get global communities timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getGlobalCommunitiesLatestPostSearchTimeline({
    required String query,
    int count = 20,
    String? cursorBottom,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting global communities latest timeline");
      final response = await RequestUtil.get(
        "/IX-ELlAKl5DCJJ8HZTS0dw/GlobalCommunitiesLatestPostSearchTimeline",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "rawQuery": query,
            "count": 20,
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
          message: "Failed to get global communities latest timeline",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Timeline.fromJson(data['data']['search_by_raw_query']
            ['communities_latest_posts_search_page']['timeline']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error(
          "Twitee", "Failed to get global communities latest timeline", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityInfo({
    required String communityId,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community info");
      final response = await RequestUtil.get(
        "/YDYGxdoPEu0zNC2eWP_0MQ/CommunityQuery",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "communityId": communityId,
          }),
          "features": jsonEncode({
            "c9s_list_members_action_api_enabled": false,
            "c9s_superc9s_indication_enabled": false,
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get community info",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Community.fromJson(data['data']['communityResults']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community info", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityInfoByOneQuery({
    required String communityId,
  }) async {
    try {
      ILogger.info("Twitee API", "Getting community info");
      final response = await RequestUtil.get(
        "/0MgW19yWULVKjawrWUHivg/CommunitiesFetchOneQuery",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({
            "communityId": communityId,
            "withDmMuting": false,
          }),
          "features": jsonEncode({
            "responsive_web_graphql_exclude_directive_enabled": true,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true,
            "rweb_tipjar_consumption_enabled": true,
            "verified_phone_label_enabled": false
          }),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get community info",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data: Community.fromJson(data['data']['communityResults']),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community info", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> getCommunityTopics() async {
    try {
      ILogger.info("Twitee API", "Getting community topics");
      final response = await RequestUtil.get(
        "/byVjaS0CUtBqAao_lhZFgA/TopicCarouselQuery",
        domainType: DomainType.graphql,
        params: {
          "variables": jsonEncode({}),
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get community topics",
          data: response?.data,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data;
      return ResponseResult.success(
        data:
            (data['data']['communityTopicResults']['community_topics'] as List)
                .map((e) => CommunityTopic.fromJson(e))
                .toList(),
        message: 'Success',
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get community topics", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }
}
