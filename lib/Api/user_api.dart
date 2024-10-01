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

import 'package:twitee/Models/response_result.dart';

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
        domainType: DomainType.www,
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to get user info",
          code: response?.data["errors"][0]["code"] ?? 500,
        );
      }
      return ResponseResult.success(message: "Success", data: response.data);
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get user info", e, t);
    }
    return ResponseResult.error(message: "Failed to get user info");
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
        domainType: DomainType.www,
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
    }
    return ResponseResult.error(message: "Failed to get user profile");
  }
}
