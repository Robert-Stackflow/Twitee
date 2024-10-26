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

import 'package:twitee/Screens/Login/login_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/request_util.dart';
import 'package:twitee/Utils/route_util.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';

class UserUtil {
  static bool showingLoginDialog = false;

  static isLogin() async {
    var userInfo = HiveUtil.getUserInfo();
    return userInfo != null;
  }

  static logout() async {
    await RequestUtil.clearCookie();
    await HiveUtil.delete(HiveUtil.userInfoKey);
    mainScreenState?.logout();
  }

  static showReloginDialog() async {
    await logout();
    if (showingLoginDialog) return;
    showingLoginDialog = true;
    DialogBuilder.showConfirmDialog(
      rootContext,
      title: '登录状态过期',
      message: '你的登录状态已过期，请重新登录',
      confirmButtonText: '前往登录',
      cancelButtonText: '暂不登录',
      onTapConfirm: () {
        showingLoginDialog = false;
        RouteUtil.pushDialogRoute(rootContext, const LoginByPasswordScreen());
      },
      onTapCancel: () {
        showingLoginDialog = false;
      },
    );
  }
}
