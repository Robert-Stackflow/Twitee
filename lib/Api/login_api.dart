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
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Utils/request_util.dart';

import '../Models/login_phase.dart';
import '../Utils/ilogger.dart';

class LoginApi {
  static Future<ResponseResult> getGuestToken() async {
    try {
      ILogger.info("Twitee API", "Getting guest token");
      final response = await RequestUtil.post("/1.1/guest/activate.json");
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to get guest token",
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data as Map;
      if (data.containsKey("guest_token")) {
        ILogger.info("Twitee API", "Got guest token : ${data["guest_token"]}");
        return ResponseResult.success(
          message: "Got guest token",
          data: data["guest_token"],
        );
      }
      return ResponseResult.error(message: "Failed to get guest token");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get guest token", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> initLogin(String guestToken) async {
    try {
      ILogger.info("Twitee API", "Initializing login");
      final response = await RequestUtil.post(
        "/1.1/onboarding/task.json",
        params: {
          "flow_name": "login",
        },
        data: {
          "input_flow_data": {
            "flow_context": {
              "debug_overrides": {},
              "start_location": {"location": "splash_screen"}
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
          message: "Failed to initialize login",
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data as Map;
      if (data.containsKey("flow_token")) {
        return ResponseResult.success(
          message: "Initialized login",
          data: data["flow_token"],
        );
      }
      return ResponseResult.error(message: "Failed to initialize login");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to get guest token", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> checkLoginType(
      String guestToken, String flowToken) async {
    try {
      ILogger.info("Twitee API", "Checking login type");
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
          message: "Failed to check login type",
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data as Map;
      if (data.containsKey("flow_token")) {
        return ResponseResult.success(
          message: "Checked login type",
          data: data["flow_token"],
        );
      }
      return ResponseResult.error(message: "Failed to check login type");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to check login type", e, t);
      return ResponseResult.error(message: e.toString());
    }
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
              "subtask_id": "LoginEnterUserIdentifierSSO",
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
        for (var subtask in data["subtasks"]) {
          if (subtask["subtask_id"] == LoginPhase.arkoseLogin.subTaskName) {
            return ResponseResult.success(
              message: "To check arkose",
              flag: LoginPhase.arkoseLogin,
              data: data["flow_token"],
              data2: subtask["web_modal"]['url'],
            );
          } else if (subtask["subtask_id"] ==
              LoginPhase.denyLoginSubtask.subTaskName) {
            return ResponseResult.success(
              message: "Deny login",
              flag: LoginPhase.denyLoginSubtask,
              data: data["flow_token"],
            );
          } else if (subtask["subtask_id"] ==
              LoginPhase.checkAlternativeUsername.subTaskName) {
            return ResponseResult.success(
              message: "To Check alternative username",
              flag: LoginPhase.checkAlternativeUsername,
              data: data["flow_token"],
            );
          } else if (subtask["subtask_id"] ==
              LoginPhase.checkPassword.subTaskName) {
            return ResponseResult.success(
              message: "To Check password",
              flag: LoginPhase.checkPassword,
              data: data["flow_token"],
            );
          }
        }
      }
      return ResponseResult.error(message: "Failed to check username");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to check username", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> checkAlternativeUsername(
      String guestToken, String flowToken, String account) async {
    try {
      ILogger.info("Twitee API", "Checking alternative username $account");
      final response = await RequestUtil.post(
        "/1.1/onboarding/task.json",
        data: {
          "flow_token": flowToken,
          "subtask_inputs": [
            {
              "subtask_id": "LoginEnterAlternateIdentifierSubtask",
              "enter_text": {"text": account, "link": "next_link"}
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
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to check alternative username",
          code: response?.data["errors"][0]["code"] ?? 500,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data as Map;
      if (data.containsKey("flow_token")) {
        return ResponseResult.success(
          message: "Checked alternative username",
          data: data["flow_token"],
        );
      }
      return ResponseResult.error(
          message: "Failed to check alternative username");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to check alternative username", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> checkPassword(
      String guestToken, String flowToken, String password) async {
    try {
      ILogger.info("Twitee API", "Checking password");
      final response = await RequestUtil.post(
        "/1.1/onboarding/task.json",
        data: {
          "flow_token": flowToken,
          "subtask_inputs": [
            {
              "subtask_id": "LoginEnterPassword",
              "enter_password": {"password": password, "link": "next_link"}
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
        return ResponseResult.error(
          message: response?.data["errors"][0]["message"] ??
              "Failed to check password",
          code: response?.data["errors"][0]["code"] ?? 500,
          statusCode: response?.statusCode ?? 500,
        );
      }
      final data = response.data as Map;
      if (data.containsKey("flow_token")) {
        for (var subtask in data["subtasks"]) {
          if (subtask["subtask_id"] == LoginPhase.check2FA.subTaskName) {
            return ResponseResult.success(
                message: "To check 2FA",
                flag: LoginPhase.check2FA,
                data: data["flow_token"],
                data2:
                    UserInfo.fromJson(subtask['enter_text']['header']['user']));
          } else if (subtask["subtask_id"] ==
              LoginPhase.loginSuccess.subTaskName) {
            return ResponseResult.success(
                message: "Login success",
                flag: LoginPhase.loginSuccess,
                data: data["flow_token"],
                data2:
                    UserInfo.fromJson(subtask['enter_text']['header']['user']));
          }
        }
      }
      return ResponseResult.error(message: "Failed to check password");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to check password", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> check2FA(
      String guestToken, String flowToken, String code) async {
    try {
      ILogger.info("Twitee API", "Checking 2FA");
      final response = await RequestUtil.post(
        "/1.1/onboarding/task.json",
        data: {
          "flow_token": flowToken,
          "subtask_inputs": [
            {
              "subtask_id": "LoginTwoFactorAuthChallenge",
              "enter_text": {"text": code, "link": "next_link"}
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
        return ResponseResult.error(
          message:
              response?.data["errors"][0]["message"] ?? "Failed to check 2FA",
          code: response?.data["errors"][0]["code"] ?? 500,
        );
      }
      final data = response.data as Map;
      if (data.containsKey("flow_token")) {
        return ResponseResult.success(
          message: "Checked 2FA",
          data: data["flow_token"],
        );
      }
      return ResponseResult.error(message: "Failed to check 2FA");
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to check 2FA", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> fetchCsrfToken(String guestToken) async {
    try {
      ILogger.info("Twitee API", "Fetching CSRF token");
      final response = await RequestUtil.post(
        "/graphql/HC-1ZetsBT1HKVUOvnLE8Q/Viewer",
        params: {
          "variables": jsonEncode({"withCommunitiesMemberships": true}),
          "features": jsonEncode({
            "rweb_tipjar_consumption_enabled": true,
            "responsive_web_graphql_exclude_directive_enabled": true,
            "verified_phone_label_enabled": false,
            "creator_subscriptions_tweet_preview_api_enabled": true,
            "responsive_web_graphql_skip_user_profile_image_extensions_enabled":
                false,
            "responsive_web_graphql_timeline_navigation_enabled": true,
          }),
          "fieldToggles": jsonEncode(
              {"isDelegate": false, "withAuxiliaryUserLabels": false}),
        },
        options: Options(
          headers: {
            "x-csrf-token": await RequestUtil.getCsrfToken(),
            "x-guest-token": guestToken,
          },
        ),
      );
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to fetch CSRF token",
          statusCode: response?.statusCode ?? 500,
        );
      }
      return ResponseResult.success(
        message: "Fetched CSRF token",
        data: response.data as Map,
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to fetch CSRF token", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }

  static Future<ResponseResult> checkLoginResult(String flowToken) async {
    try {
      ILogger.info("Twitee API", "Checking login result");
      final response =
          await RequestUtil.post("/1.1/onboarding/task.json", data: {
        "flow_token": flowToken,
        "subtask_inputs": [],
      });
      if (response == null || response.statusCode != 200) {
        return ResponseResult.error(
          message: "Failed to check login result",
          statusCode: response?.statusCode ?? 500,
        );
      }
      return ResponseResult.success(
        message: "Checked login result",
        data: response.data as Map,
      );
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to check login result", e, t);
      return ResponseResult.error(message: e.toString());
    }
  }
}
