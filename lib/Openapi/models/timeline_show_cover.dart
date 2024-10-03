// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'client_event_info.dart';
import 'instruction_type.dart';
import 'instruction_union.dart';
import 'timeline_half_cover.dart';

part 'timeline_show_cover.g.dart';

@JsonSerializable()
class TimelineShowCover extends InstructionUnion {
  const TimelineShowCover({
    required this.clientEventInfo,
    required this.cover,
    required this.type,
  });
  
  factory TimelineShowCover.fromJson(Map<String, Object?> json) => _$TimelineShowCoverFromJson(json);
  
  final ClientEventInfo clientEventInfo;
  final TimelineHalfCover cover;
  final InstructionType type;

  Map<String, Object?> toJson() => _$TimelineShowCoverToJson(this);
}
