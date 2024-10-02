// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarksResponseDataImpl _$$BookmarksResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BookmarksResponseDataImpl(
      bookmarkTimelineV2: BookmarksTimeline.fromJson(
          json['bookmark_timeline_v2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookmarksResponseDataImplToJson(
        _$BookmarksResponseDataImpl instance) =>
    <String, dynamic>{
      'bookmark_timeline_v2': instance.bookmarkTimelineV2,
    };
