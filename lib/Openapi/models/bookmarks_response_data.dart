// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bookmarks_timeline.dart';

part 'bookmarks_response_data.freezed.dart';
part 'bookmarks_response_data.g.dart';

@Freezed()
 class BookmarksResponseData with _$BookmarksResponseData {
  const factory BookmarksResponseData({
    @JsonKey(name: 'bookmark_timeline_v2')
    required BookmarksTimeline bookmarkTimelineV2,
  }) = _BookmarksResponseData;
  
  factory BookmarksResponseData.fromJson(Map<String, Object?> json) => _$BookmarksResponseDataFromJson(json);
}
