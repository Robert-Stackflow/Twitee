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

import '../Models/response_result.dart';
import '../Utils/ilogger.dart';
import '../Utils/request_util.dart';

class TopicApi {
  static Future<ResponseResult> followTopic({
    required String topicId,
  }) async {
    try {
      ILogger.info("Twitee API", "Followiing topic");
      final response = await RequestUtil.post(
        "/ElqSLWFmsPL4NlZI5e1Grg/TopicFollow",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "topicId": topicId,
          },
          "features": {
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          },
          "queryId": "ElqSLWFmsPL4NlZI5e1Grg"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to follow topic",
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
      ILogger.error("Twitee", "Failed to follow topic", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  //unFollow
  static Future<ResponseResult> unFollowTopic({
    required String topicId,
  }) async {
    try {
      ILogger.info("Twitee API", "Unfollowing topic");
      final response = await RequestUtil.post(
        "/srwjU6JM_ZKTj_QMfUGNcw/TopicUnfollow",
        domainType: DomainType.graphql,
        data: {
          "variables": {
            "topicId": topicId,
          },
          "features": {
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true
          },
          "queryId": "srwjU6JM_ZKTj_QMfUGNcw"
        },
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to unfollow topic",
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
      ILogger.error("Twitee", "Failed to unfollow topic", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }
}
