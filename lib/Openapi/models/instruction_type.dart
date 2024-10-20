// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum InstructionType {
  @JsonValue('TimelineAddEntries')
  timelineAddEntries('TimelineAddEntries'),
  @JsonValue('TimelineAddToModule')
  timelineAddToModule('TimelineAddToModule'),
  @JsonValue('TimelineClearCache')
  timelineClearCache('TimelineClearCache'),
  @JsonValue('TimelinePinEntry')
  timelinePinEntry('TimelinePinEntry'),
  @JsonValue('TimelineReplaceEntry')
  timelineReplaceEntry('TimelineReplaceEntry'),
  @JsonValue('TimelineShowAlert')
  timelineShowAlert('TimelineShowAlert'),
  @JsonValue('TimelineTerminateTimeline')
  timelineTerminateTimeline('TimelineTerminateTimeline'),
  @JsonValue('TimelineShowCover')
  timelineShowCover('TimelineShowCover'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const InstructionType(this.json);

  factory InstructionType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
