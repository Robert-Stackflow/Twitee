// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'timeline_add_entries.dart';
import 'timeline_add_to_module.dart';
import 'timeline_clear_cache.dart';
import 'timeline_pin_entry.dart';
import 'timeline_replace_entry.dart';
import 'timeline_show_alert.dart';
import 'timeline_show_cover.dart';
import 'timeline_terminate_timeline.dart';

abstract class InstructionUnion {
  const InstructionUnion();
  factory InstructionUnion.fromJson(Map<String, Object?> json) {
    switch (json['type']) {
      case "TimelineAddEntries":
        return TimelineAddEntries.fromJson(json);
      case "TimelineAddToModule":
        return TimelineAddToModule.fromJson(json);
      case "TimelineClearCache":
        return TimelineClearCache.fromJson(json);
      case "TimelinePinEntry":
        return TimelinePinEntry.fromJson(json);
      case "TimelineReplaceEntry":
        return TimelineReplaceEntry.fromJson(json);
      case "TimelineShowAlert":
        return TimelineShowAlert.fromJson(json);
      case "TimelineTerminateTimeline":
        return TimelineTerminateTimeline.fromJson(json);
      case "TimelineShowCover":
        return TimelineShowCover.fromJson(json);

      default:
        throw ArgumentError('Unknown InstructionUnion: $json');
    }
  }
  Map<String, Object?> toJson() => {};
}
