// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'birdwatch_entity.dart';

part 'birdwatch_pivot_subtitle.freezed.dart';
part 'birdwatch_pivot_subtitle.g.dart';

@Freezed()
class BirdwatchPivotSubtitle with _$BirdwatchPivotSubtitle {
  const factory BirdwatchPivotSubtitle({
    required List<BirdwatchEntity> entities,
    required String text,
  }) = _BirdwatchPivotSubtitle;
  
  factory BirdwatchPivotSubtitle.fromJson(Map<String, Object?> json) => _$BirdwatchPivotSubtitleFromJson(json);
}
