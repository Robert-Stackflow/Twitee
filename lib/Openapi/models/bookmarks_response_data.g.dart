// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookmarksResponseData _$BookmarksResponseDataFromJson(
        Map<String, dynamic> json) =>
    BookmarksResponseData(
      bookmarkTimelineV2: json['bookmark_timeline_v2'] == null
          ? null
          : BookmarksTimeline.fromJson(
              json['bookmark_timeline_v2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookmarksResponseDataToJson(
        BookmarksResponseData instance) =>
    <String, dynamic>{
      'bookmark_timeline_v2': instance.bookmarkTimelineV2,
    };
