// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'birdwatch_pivot_note.g.dart';

@JsonSerializable()
class BirdwatchPivotNote {
  const BirdwatchPivotNote({
    required this.restId,
  });

  factory BirdwatchPivotNote.fromJson(Map<String, Object?> json) =>
      _$BirdwatchPivotNoteFromJson(json);

  @JsonKey(name: 'rest_id')
  final String? restId;

  Map<String, Object?> toJson() => _$BirdwatchPivotNoteToJson(this);
}
