// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'birdwatch_pivot_note.freezed.dart';
part 'birdwatch_pivot_note.g.dart';

@Freezed()
class BirdwatchPivotNote with _$BirdwatchPivotNote {
  const factory BirdwatchPivotNote({
    @JsonKey(name: 'rest_id')
    required String restId,
  }) = _BirdwatchPivotNote;
  
  factory BirdwatchPivotNote.fromJson(Map<String, Object?> json) => _$BirdwatchPivotNoteFromJson(json);
}
