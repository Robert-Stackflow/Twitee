// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'birdwatch_entity.dart';

part 'birdwatch_pivot_footer.freezed.dart';
part 'birdwatch_pivot_footer.g.dart';

@Freezed()
 class BirdwatchPivotFooter with _$BirdwatchPivotFooter {
  const factory BirdwatchPivotFooter({
    required List<BirdwatchEntity> entities,
    required String text,
  }) = _BirdwatchPivotFooter;
  
  factory BirdwatchPivotFooter.fromJson(Map<String, Object?> json) => _$BirdwatchPivotFooterFromJson(json);
}
