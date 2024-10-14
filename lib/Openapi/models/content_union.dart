// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'timeline_timeline_cursor.dart';
import 'timeline_timeline_item.dart';
import 'timeline_timeline_module.dart';

abstract class ContentUnion {
  const ContentUnion();
  factory ContentUnion.fromJson(Map<String, Object?> json) {
    switch (json['entryType']) {
      case "TimelineTimelineItem":
        return TimelineTimelineItem.fromJson(json);
      case "TimelineTimelineModule":
        return TimelineTimelineModule.fromJson(json);
      case "TimelineTimelineCursor":
        return TimelineTimelineCursor.fromJson(json);

      default:
        throw ArgumentError('Unknown ContentUnion: $json');
    }
  }
  Map<String, Object?> toJson() => {};
}
