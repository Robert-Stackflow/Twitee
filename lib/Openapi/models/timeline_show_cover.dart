// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'client_event_info.dart';
import 'instruction_type.dart';
import 'timeline_half_cover.dart';

part 'timeline_show_cover.freezed.dart';
part 'timeline_show_cover.g.dart';

@Freezed()
 class TimelineShowCover with _$TimelineShowCover {
  const factory TimelineShowCover({
    required ClientEventInfo clientEventInfo,
    required TimelineHalfCover cover,
    required InstructionType type,
  }) = _TimelineShowCover;
  
  factory TimelineShowCover.fromJson(Map<String, Object?> json) => _$TimelineShowCoverFromJson(json);
}
