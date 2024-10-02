// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'instruction_union.dart';

part 'timeline.freezed.dart';
part 'timeline.g.dart';

@Freezed()
 class Timeline with _$Timeline {
  const factory Timeline({
    required List<InstructionUnion> instructions,
    required dynamic metadata,
    required dynamic responseObjects,
  }) = _Timeline;
  
  factory Timeline.fromJson(Map<String, Object?> json) => _$TimelineFromJson(json);
}
