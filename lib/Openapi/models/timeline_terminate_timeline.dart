// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'instruction_type.dart';
import 'timeline_terminate_timeline_direction.dart';

part 'timeline_terminate_timeline.freezed.dart';
part 'timeline_terminate_timeline.g.dart';

@Freezed()
 class TimelineTerminateTimeline with _$TimelineTerminateTimeline {
  const factory TimelineTerminateTimeline({
    required TimelineTerminateTimelineDirection direction,
    required InstructionType type,
  }) = _TimelineTerminateTimeline;
  
  factory TimelineTerminateTimeline.fromJson(Map<String, Object?> json) => _$TimelineTerminateTimelineFromJson(json);
}
