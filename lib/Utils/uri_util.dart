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

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:twitee/Screens/Detail/search_result_screen.dart';
import 'package:twitee/Screens/Detail/user_detail_screen.dart';
import 'package:twitee/Screens/webview_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Utils/route_util.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widgets/Dialog/custom_dialog.dart';
import '../generated/l10n.dart';
import './ilogger.dart';

class UriUtil {
  static String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  static Future<bool> launchEmailUri(BuildContext context, String email,
      {String subject = "", String body = ""}) async {
    try {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: email,
        query: encodeQueryParameters(<String, String>{
          'subject': subject,
          'body': body,
        }),
      );
      if (!await launchUrl(
        emailLaunchUri,
        mode: LaunchMode.externalApplication,
      )) {
        if (ResponsiveUtil.isIOS()) {
          IToast.showTop(S.current.noEmailClient);
        }
        Clipboard.setData(ClipboardData(text: email));
      }
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to launch email app", e, t);
      IToast.showTop(S.current.noEmailClient);
    }
    return true;
  }

  static share(BuildContext context, String str) {
    Share.share(str).then((shareResult) {
      if (shareResult.status == ShareResultStatus.success) {
        IToast.showTop(S.current.shareSuccess);
      } else if (shareResult.status == ShareResultStatus.dismissed) {
        IToast.showTop(S.current.cancelShare);
      } else {
        IToast.showTop(S.current.shareFailed);
      }
    });
  }

  static void launchUrlUri(BuildContext context, String url) async {
    if (HiveUtil.getBool(HiveUtil.inappWebviewKey)) {
      openInternal(context, url);
    } else {
      openExternal(url);
    }
  }

  static Future<bool> canLaunchUri(Uri uri) async {
    return await canLaunchUrl(uri);
  }

  static void launchUri(Uri uri) async {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  static bool isUserUrl(String url) {
    const pattern = r'^https?:\/\/x\.com\/[a-zA-Z0-9_-]+\/?$';
    final regExp = RegExp(pattern);
    return regExp.hasMatch(url);
  }

  static String extractUserScreenName(String url) {
    const pattern = r'^https?:\/\/x\.com\/([a-zA-Z0-9_-]+)\/?$';
    final regExp = RegExp(pattern);
    return regExp.firstMatch(url)!.group(1)!;
  }

  static bool isHashTagUrl(String url) {
    const pattern = r'^https?:\/\/x\.com\/hashtag\/([^\s\/]+)\/?$';
    final regExp = RegExp(pattern);
    return regExp.hasMatch(url);
  }

  static String extractHashTag(String url) {
    const pattern = r'^https?:\/\/x\.com\/hashtag\/([^\s\/]+)\/?$';
    final regExp = RegExp(pattern);
    return "#${regExp.firstMatch(url)!.group(1)!}";
  }

  static Future<bool> processUrl(
    BuildContext context,
    String url, {
    bool pass = true,
    bool quiet = false,
  }) async {
    try {
      if (!quiet) CustomLoadingDialog.showLoading(title: S.current.loading);
      url = Uri.decodeComponent(url);
      if (isUserUrl(url)) {
        if (!quiet) await CustomLoadingDialog.dismissLoading();
        panelScreenState?.pushPage(
            UserDetailScreen(screenName: extractUserScreenName(url)));
      } else if (isHashTagUrl(url)) {
        if (!quiet) await CustomLoadingDialog.dismissLoading();
        panelScreenState
            ?.pushPage(SearchResultScreen(searchKey: extractHashTag(url)));
      } else {
        if (!quiet) await CustomLoadingDialog.dismissLoading();
        if (!quiet) {
          if (pass) {
            if (HiveUtil.getBool(HiveUtil.inappWebviewKey,
                defaultValue: true)) {
              UriUtil.openInternal(context, url);
            } else {
              UriUtil.openExternal(url);
            }
          } else {
            IToast.showTop(S.current.notSupportedUri(url));
          }
        }
      }
      return false;
    } catch (e, t) {
      ILogger.error("Twitee", "Failed to process url", e, t);
      if (!quiet) await CustomLoadingDialog.dismissLoading();
      if (!quiet) Share.share(url);
      return false;
    }
  }

  static void openInternal(
    BuildContext context,
    String url, {
    bool processUri = true,
  }) {
    if (ResponsiveUtil.isMobile()) {
      RouteUtil.pushCupertinoRoute(
          context, WebviewScreen(url: url, processUri: processUri));
    } else {
      openExternal(url);
    }
  }

  static Future<void> openExternal(String url) async {
    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
  }

  static Future<void> openExternalUri(Uri uri) async {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }
}
