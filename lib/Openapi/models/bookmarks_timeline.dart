// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline.dart';

part 'bookmarks_timeline.freezed.dart';
part 'bookmarks_timeline.g.dart';

@Freezed()
class BookmarksTimeline with _$BookmarksTimeline {
  const factory BookmarksTimeline({
    required Timeline timeline,
  }) = _BookmarksTimeline;
  
  factory BookmarksTimeline.fromJson(Map<String, Object?> json) => _$BookmarksTimelineFromJson(json);
}
