// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'instruction_union.dart';

part 'timeline.g.dart';

@JsonSerializable()
class Timeline {
  const Timeline({
    required this.instructions,
    required this.metadata,
    required this.responseObjects,
  });

  factory Timeline.fromJson(Map<String, Object?> json) =>
      _$TimelineFromJson(json);

  final List<InstructionUnion> instructions;
  final dynamic metadata;
  final dynamic responseObjects;

  Map<String, Object?> toJson() => _$TimelineToJson(this);
}
