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

class UserInfo {
  int id;
  String idStr;
  String name;
  String screenName;
  String location;
  String url;
  String description;
  String createdAt;
  String profileBackgroundColor;
  String profileBackgroundImageUrl;
  String profileBackgroundImageUrlHttps;
  bool profileBackgroundTile;
  String profileImageUrl;
  String profileImageUrlHttps;
  String profileBannerUrl;
  String profileLinkColor;
  String profileSidebarBorderColor;
  String profileSidebarFillColor;
  String profileTextColor;
  bool profileUseBackgroundImage;
  bool defaultProfile;
  bool defaultProfileImage;

  UserInfo({
    required this.id,
    required this.idStr,
    required this.name,
    required this.screenName,
    required this.location,
    required this.url,
    required this.description,
    required this.createdAt,
    required this.profileBackgroundColor,
    required this.profileBackgroundImageUrl,
    required this.profileBackgroundImageUrlHttps,
    required this.profileBackgroundTile,
    required this.profileImageUrl,
    required this.profileImageUrlHttps,
    required this.profileBannerUrl,
    required this.profileLinkColor,
    required this.profileSidebarBorderColor,
    required this.profileSidebarFillColor,
    required this.profileTextColor,
    required this.profileUseBackgroundImage,
    required this.defaultProfile,
    required this.defaultProfileImage,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      id: json['id'],
      idStr: json['id_str'] ?? "",
      name: json['name'] ?? "",
      screenName: json['screen_name'] ?? "",
      location: json['location'] ?? "",
      url: json['url'] ?? "",
      description: json['description'] ?? "",
      createdAt: json['created_at'] ?? "",
      profileBackgroundColor: json['profile_background_color'] ?? "",
      profileBackgroundImageUrl: json['profile_background_image_url'] ?? "",
      profileBackgroundImageUrlHttps:
          json['profile_background_image_url_https'] ?? "",
      profileBackgroundTile: json['profile_background_tile'] ?? false,
      profileImageUrl: json['profile_image_url'] ?? "",
      profileImageUrlHttps: json['profile_image_url_https'] ?? "",
      profileBannerUrl: json['profile_banner_url'] ?? "",
      profileLinkColor: json['profile_link_color'] ?? "",
      profileSidebarBorderColor: json['profile_sidebar_border_color'] ?? "",
      profileSidebarFillColor: json['profile_sidebar_fill_color'] ?? "",
      profileTextColor: json['profile_text_color'] ?? "",
      profileUseBackgroundImage: json['profile_use_background_image'] ?? false,
      defaultProfile: json['default_profile'] ?? false,
      defaultProfileImage: json['default_profile_image'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_str'] = idStr;
    data['name'] = name;
    data['screen_name'] = screenName;
    data['location'] = location;
    data['url'] = url;
    data['description'] = description;
    data['created_at'] = createdAt;
    data['profile_background_color'] = profileBackgroundColor;
    data['profile_background_image_url'] = profileBackgroundImageUrl;
    data['profile_background_image_url_https'] = profileBackgroundImageUrlHttps;
    data['profile_background_tile'] = profileBackgroundTile;
    data['profile_image_url'] = profileImageUrl;
    data['profile_image_url_https'] = profileImageUrlHttps;
    data['profile_banner_url'] = profileBannerUrl;
    data['profile_link_color'] = profileLinkColor;
    data['profile_sidebar_border_color'] = profileSidebarBorderColor;
    data['profile_sidebar_fill_color'] = profileSidebarFillColor;
    data['profile_text_color'] = profileTextColor;
    data['profile_use_background_image'] = profileUseBackgroundImage;
    data['default_profile'] = defaultProfile;
    data['default_profile_image'] = defaultProfileImage;
    return data;
  }

  @override
  String toString() {
    return 'UserInfo{id: $id, idStr: $idStr, name: $name, screenName: $screenName, location: $location, url: $url, description: $description, createdAt: $createdAt, profileBackgroundColor: $profileBackgroundColor, profileBackgroundImageUrl: $profileBackgroundImageUrl, profileBackgroundImageUrlHttps: $profileBackgroundImageUrlHttps, profileBackgroundTile: $profileBackgroundTile, profileImageUrl: $profileImageUrl, profileImageUrlHttps: $profileImageUrlHttps, profileBannerUrl: $profileBannerUrl, profileLinkColor: $profileLinkColor, profileSidebarBorderColor: $profileSidebarBorderColor, profileSidebarFillColor: $profileSidebarFillColor, profileTextColor: $profileTextColor, profileUseBackgroundImage: $profileUseBackgroundImage, defaultProfile: $defaultProfile, defaultProfileImage: $defaultProfileImage}';
  }
}
