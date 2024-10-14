// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'bookmarks_timeline.dart';

part 'bookmarks_response_data.g.dart';

@JsonSerializable()
class BookmarksResponseData {
  const BookmarksResponseData({
    required this.bookmarkTimelineV2,
  });

  factory BookmarksResponseData.fromJson(Map<String, Object?> json) =>
      _$BookmarksResponseDataFromJson(json);

  @JsonKey(name: 'bookmark_timeline_v2')
  final BookmarksTimeline? bookmarkTimelineV2;

  Map<String, Object?> toJson() => _$BookmarksResponseDataToJson(this);
}
