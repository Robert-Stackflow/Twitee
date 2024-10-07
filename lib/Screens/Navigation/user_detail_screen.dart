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

import 'package:flutter/material.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Utils/asset_util.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';

import '../../Api/user_api.dart';

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key, required this.screenName});

  final String screenName;

  static const String routeName = "/userDetail";

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  UserResponse? response;

  User? get user => response!.data.user.result as User;
  bool _inited = false;

  fetchUserInfo() async {
    var res = await UserApi.getUserInfo(widget.screenName);
    if (res.success) {
      response = res.data;
    } else {
      IToast.showTop("获取用户信息失败：${res.message}");
    }
    _inited = true;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: ItemBuilder.buildDesktopAppBar(
          context: context, title: "个人主页", showBack: true),
      body: _inited
          ? _buildBody()
          : ItemBuilder.buildLoadingDialog(context,
              text: "加载中...", background: Colors.transparent),
    );
  }

  _buildBody() {
    return response == null || user == null ? _buildError() : _buildMainBody();
  }

  _buildMainBody() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              ItemBuilder.buildAvatar(
                context: context,
                imageUrl: user!.legacy.profileImageUrlHttps ?? AssetUtil.avatar,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user!.legacy.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "@${user!.legacy.screenName}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                "关注：${user!.legacy.friendsCount}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(width: 20),
              Text(
                "粉丝：${user!.legacy.followersCount}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            user!.legacy.description,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  _buildError() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "加载失败",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          ItemBuilder.buildRoundButton(context, text: "重试", onTap: () {
            fetchUserInfo();
          }),
        ],
      ),
    );
  }
}
