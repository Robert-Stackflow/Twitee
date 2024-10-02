// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum ContentEntryType {
  @JsonValue('TimelineTimelineItem')
  timelineTimelineItem('TimelineTimelineItem'),
  @JsonValue('TimelineTimelineCursor')
  timelineTimelineCursor('TimelineTimelineCursor'),
  @JsonValue('TimelineTimelineModule')
  timelineTimelineModule('TimelineTimelineModule'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const ContentEntryType(this.json);

  factory ContentEntryType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
