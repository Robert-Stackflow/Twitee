// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline.dart';

part 'bookmarks_timeline.g.dart';

@JsonSerializable()
class BookmarksTimeline {
  const BookmarksTimeline({
    required this.timeline,
  });

  factory BookmarksTimeline.fromJson(Map<String, Object?> json) =>
      _$BookmarksTimelineFromJson(json);

  final Timeline timeline;

  Map<String, Object?> toJson() => _$BookmarksTimelineToJson(this);
}
