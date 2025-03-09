/*
 * Copyright (c) 2025 Robert-Stackflow.
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

class LocalUserModel {
  final String screenName;
  final String nickName;
  final String userId;
  final String avatar;
  int viewCount;
  int lastViewTime;
  int lastBlockRetweetTime;

  LocalUserModel({
    required this.screenName,
    required this.nickName,
    required this.userId,
    required this.avatar,
    required this.viewCount,
    required this.lastViewTime,
    required this.lastBlockRetweetTime,
  });

  LocalUserModel.init({
    required this.screenName,
    required this.nickName,
    required this.userId,
    required this.avatar,
  })  : viewCount = 0,
        lastViewTime = 0,
        lastBlockRetweetTime = 0;

  factory LocalUserModel.fromJson(Map<String, dynamic> json) {
    return LocalUserModel(
      screenName: json["screenName"],
      nickName: json["nickName"],
      userId: json["userId"],
      avatar: json["avatar"] ?? "",
      viewCount: json["viewCount"] ?? 0,
      lastViewTime: json["lastViewTime"] ?? 0,
      lastBlockRetweetTime: json["lastBlockRetweetTime"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "screenName": screenName,
      "nickName": nickName,
      "userId": userId,
      "avatar": avatar,
      "viewCount": viewCount,
      "lastViewTime": lastViewTime,
      "lastBlockRetweetTime": lastBlockRetweetTime,
    };
  }

  @override
  String toString() {
    return 'LocalUserModel{screenName: $screenName, nickName: $nickName, userId: $userId, avatar: $avatar, viewCount: $viewCount, lastViewTime: $lastViewTime}';
  }
}
