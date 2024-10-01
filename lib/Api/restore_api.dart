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
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Utils/request_util.dart';

import '../Utils/ilogger.dart';

class RestoreApi {
  static Future<ResponseResult> initResetPassword(String guestToken) async {
    try {
      ILogger.info("Twitee API", "Initializing reset password");
      final response = await RequestUtil.post(
        "/1.1/onboarding/task.json",
        params: {
          "flow_name": "password_reset",
        },
        data: {
          "input_flow_data": {
            "requested_variant": "eyJwbGF0Zm9ybSI6IlJ3ZWIifQ==",
            "flow_context": {
              "debug_overrides": {},
              "start_location": {"location": "manual_link"}
            }
          },
          "subtask_versions": {
            "action_list": 2,
            "alert_dialog": 1,
            "app_download_cta": 1,
            "check_logged_in_account": 1,
            "choice_selection": 3,
            "contacts_live_sync_permission_prompt": 0,
            "cta": 7,
            "email_verification": 2,
            "end_flow": 1,
            "enter_date": 1,
            "enter_email": 2,
            "enter_password": 5,
            "enter_phone": 2,
            "enter_recaptcha": 1,
            "enter_text": 5,
            "enter_username": 2,
            "generic_urt": 3,
            "in_app_notification": 1,
            "interest_picker": 3,
            "js_instrumentation": 1,
            "menu_dialog": 1,
            "notifications_permission_prompt": 2,
            "open_account": 2,
            "open_home_timeline": 1,
            "open_link": 1,
            "phone_verification": 4,
            "privacy_options": 1,
            "security_key": 3,
            "select_avatar": 4,
            "select_banner": 2,
            "settings_list": 7,
            "show_code": 1,
            "sign_up": 2,
            "sign_up_review": 4,
            "tweet_selection_urt": 1,
            "update_users": 1,
            "upload_media": 1,
            "user_recommendations_list": 4,
            "user_recommendations_urt": 1,
            "wait_spinner": 3,
            "web_modal": 1
          }
        },
        options: Options(
          headers: {
            "x-guest-token": guestToken,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to initialize reset password",
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data as Map;
      if (data.containsKey("flow_token")) {
        return ResponseResult.success(
          message: "Initialized reset password",
          data: data["flow_token"],
        );
      }
      return ResponseResult.error(
          message: "Failed to initialize reset password");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get guest token", e, t);
    }
    return ResponseResult.error(message: "Failed to initialize reset password");
  }

  static Future<ResponseResult> startResetPhase(
      String guestToken, String flowToken) async {
    try {
      ILogger.info("Twitee API", "Starting reset phase");
      final response = await RequestUtil.post(
        "/1.1/onboarding/task.json",
        data: {"flow_token": flowToken, "subtask_inputs": []},
        options: Options(
          headers: {
            "x-guest-token": guestToken,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to start reset phase",
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data as Map;
      if (data.containsKey("flow_token")) {
        return ResponseResult.success(
          message: "Started reset phase",
          data: data["flow_token"],
        );
      }
      return ResponseResult.error(message: "Failed to start reset phase");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to start reset phase", e, t);
    }
    return ResponseResult.error(message: "Failed to start reset phase");
  }

  static Future<ResponseResult> checkUsername(
      String guestToken, String flowToken, String username) async {
    try {
      ILogger.info("Twitee API", "Checking username $username");
      final response = await RequestUtil.post(
        "/1.1/onboarding/task.json",
        data: {
          "flow_token": flowToken,
          "subtask_inputs": [
            {
              "subtask_id": "PasswordResetBegin",
              "settings_list": {
                "setting_responses": [
                  {
                    "key": "user_identifier",
                    "response_data": {
                      "text_data": {
                        "result": username,
                      }
                    }
                  }
                ],
                "link": "next_link"
              }
            }
          ]
        },
        options: Options(
          headers: {
            "x-guest-token": guestToken,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        ILogger.error("Twitee API",
            "Failed to check username: ${response?.statusCode} ${response?.data}");
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to check username",
          code: response?.data["errors"][0]["code"] ?? 500,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data as Map;
      if (data.containsKey("flow_token")) {
        return ResponseResult.success(
          message: "Checked username",
          data: data["flow_token"],
        );
      }
      return ResponseResult.error(message: "Failed to check username");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to check username", e, t);
    }
    return ResponseResult.error(message: "Failed to check username");
  }
}
