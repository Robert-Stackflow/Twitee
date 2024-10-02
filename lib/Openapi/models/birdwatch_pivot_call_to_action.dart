// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'birdwatch_pivot_call_to_action.freezed.dart';
part 'birdwatch_pivot_call_to_action.g.dart';

@Freezed()
 class BirdwatchPivotCallToAction with _$BirdwatchPivotCallToAction {
  const factory BirdwatchPivotCallToAction({
    required String destinationUrl,
    required String prompt,
    required String title,
  }) = _BirdwatchPivotCallToAction;
  
  factory BirdwatchPivotCallToAction.fromJson(Map<String, Object?> json) => _$BirdwatchPivotCallToActionFromJson(json);
}
