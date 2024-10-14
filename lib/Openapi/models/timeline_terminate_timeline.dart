// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'instruction_type.dart';
import 'instruction_union.dart';
import 'timeline_terminate_timeline_direction.dart';

part 'timeline_terminate_timeline.g.dart';

@JsonSerializable()
class TimelineTerminateTimeline extends InstructionUnion {
  const TimelineTerminateTimeline({
    required this.direction,
    required this.type,
  });

  factory TimelineTerminateTimeline.fromJson(Map<String, Object?> json) =>
      _$TimelineTerminateTimelineFromJson(json);

  final TimelineTerminateTimelineDirection direction;
  final InstructionType type;

  Map<String, Object?> toJson() => _$TimelineTerminateTimelineToJson(this);
}
