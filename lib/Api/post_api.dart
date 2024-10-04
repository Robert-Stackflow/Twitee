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

import 'package:dio/dio.dart';

import '../Models/response_result.dart';
import '../Utils/ilogger.dart';
import '../Utils/request_util.dart';

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
}
