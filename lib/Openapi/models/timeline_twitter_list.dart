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

import 'item_content_union.dart';
import 'user_results.dart';

class TimelineTwitterList extends ItemContentUnion {
  const TimelineTwitterList({
    required this.itemType,
    required this.privateTypename,
    required this.displayType,
    required this.list,
  });

  final String itemType;
  final String privateTypename;
  final String displayType;
  final TimelineTwitterListInfo list;

  factory TimelineTwitterList.fromJson(Map<String, Object?> json) {
    return TimelineTwitterList(
      itemType: json['itemType'] as String,
      privateTypename: json['__typename'] as String,
      displayType: json['displayType'] as String,
      list: TimelineTwitterListInfo.fromJson(
          json['list'] as Map<String, Object?>),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'itemType': itemType,
      '__typename': privateTypename,
      'displayType': displayType,
      'list': list.toJson(),
    };
  }
}

class TimelineTwitterListInfo {
  TimelineTwitterListInfo({
    required this.createdAt,
    required this.defaultBannerMedia,
    required this.defaultBannerMediaResults,
    required this.description,
    required this.facepileUrls,
    required this.following,
    required this.id,
    required this.idStr,
    required this.isMember,
    required this.memberCount,
    required this.membersContext,
    required this.mode,
    required this.muting,
    required this.name,
    required this.pinning,
    required this.subscriberCount,
    required this.userResults,
  });

  final int createdAt;
  final DefaultBannerMedia defaultBannerMedia;
  final DefaultBannerMediaResults defaultBannerMediaResults;
  final String description;
  final List<String> facepileUrls;
  final bool following;
  final String id;
  final String idStr;
  final bool isMember;
  final int memberCount;
  final String membersContext;
  String mode;
  final bool muting;
  final String name;
  bool pinning;
  final int subscriberCount;
  final UserResults userResults;

  bool get isPrivate => mode == 'Private';

  factory TimelineTwitterListInfo.fromJson(Map<String, Object?> json) {
    return TimelineTwitterListInfo(
      createdAt: json['created_at'] == null ? 0 : json['created_at'] as int,
      defaultBannerMedia: DefaultBannerMedia.fromJson(
          json['default_banner_media'] as Map<String, Object?>),
      defaultBannerMediaResults: DefaultBannerMediaResults.fromJson(
          json['default_banner_media_results'] as Map<String, Object?>),
      description: json['description'] as String,
      facepileUrls: (json['facepile_urls'] as List<Object?>)
          .map((e) => e as String)
          .toList(),
      following: json['following'] as bool,
      id: json['id'] as String,
      idStr: json['id_str'] as String,
      isMember: json['is_member'] as bool,
      memberCount: json['member_count'] as int,
      membersContext: json['members_context'] as String,
      mode: json['mode'] as String,
      muting: json['muting'] as bool,
      name: json['name'] as String,
      pinning: json['pinning'] as bool,
      subscriberCount: json['subscriber_count'] as int,
      userResults:
          UserResults.fromJson(json['user_results'] as Map<String, Object?>),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'created_at': createdAt,
      'default_banner_media': defaultBannerMedia.toJson(),
      'default_banner_media_results': defaultBannerMediaResults.toJson(),
      'description': description,
      'facepile_urls': facepileUrls,
      'following': following,
      'id': id,
      'id_str': idStr,
      'is_member': isMember,
      'member_count': memberCount,
      'members_context': membersContext,
      'mode': mode,
      'muting': muting,
      'name': name,
      'pinning': pinning,
      'subscriber_count': subscriberCount,
      'user_results': userResults.toJson(),
    };
  }
}

class DefaultBannerMedia {
  const DefaultBannerMedia({
    required this.mediaInfo,
  });

  final MediaInfo mediaInfo;

  factory DefaultBannerMedia.fromJson(Map<String, Object?> json) {
    return DefaultBannerMedia(
      mediaInfo: MediaInfo.fromJson(json['media_info'] as Map<String, Object?>),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'media_info': mediaInfo.toJson(),
    };
  }
}

class DefaultBannerMediaResults {
  const DefaultBannerMediaResults({
    required this.result,
  });

  final Result result;

  factory DefaultBannerMediaResults.fromJson(Map<String, Object?> json) {
    return DefaultBannerMediaResults(
      result: Result.fromJson(json['result'] as Map<String, Object?>),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'result': result.toJson(),
    };
  }
}

class MediaInfo {
  const MediaInfo({
    required this.originalImgUrl,
    required this.originalImgWidth,
    required this.originalImgHeight,
    required this.salientRect,
  });

  final String originalImgUrl;
  final int originalImgWidth;
  final int originalImgHeight;
  final SalientRect salientRect;

  factory MediaInfo.fromJson(Map<String, Object?> json) {
    return MediaInfo(
      originalImgUrl: json['original_img_url'] as String,
      originalImgWidth: json['original_img_width'] as int,
      originalImgHeight: json['original_img_height'] as int,
      salientRect:
          SalientRect.fromJson(json['salient_rect'] as Map<String, Object?>),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'original_img_url': originalImgUrl,
      'original_img_width': originalImgWidth,
      'original_img_height': originalImgHeight,
      'salient_rect': salientRect.toJson(),
    };
  }
}

class SalientRect {
  const SalientRect({
    required this.left,
    required this.top,
    required this.width,
    required this.height,
  });

  final int left;
  final int top;
  final int width;
  final int height;

  factory SalientRect.fromJson(Map<String, Object?> json) {
    return SalientRect(
      left: json['left'] as int,
      top: json['top'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'left': left,
      'top': top,
      'width': width,
      'height': height,
    };
  }
}

class Result {
  const Result({
    required this.id,
    required this.mediaKey,
    required this.mediaId,
    required this.mediaInfo,
    required this.privateTypename,
  });

  final String id;
  final String mediaKey;
  final String mediaId;
  final MediaInfo mediaInfo;
  final String privateTypename;

  factory Result.fromJson(Map<String, Object?> json) {
    return Result(
      id: json['id'] as String,
      mediaKey: json['media_key'] as String,
      mediaId: json['media_id'] as String,
      mediaInfo: MediaInfo.fromJson(json['media_info'] as Map<String, Object?>),
      privateTypename: json['__typename'] as String,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'media_key': mediaKey,
      'media_id': mediaId,
      'media_info': mediaInfo.toJson(),
      '__typename': privateTypename,
    };
  }
}
