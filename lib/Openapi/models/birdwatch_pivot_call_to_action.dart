// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'birdwatch_pivot_call_to_action.g.dart';

@JsonSerializable()
class BirdwatchPivotCallToAction {
  const BirdwatchPivotCallToAction({
    required this.destinationUrl,
    required this.prompt,
    required this.title,
  });

  factory BirdwatchPivotCallToAction.fromJson(Map<String, Object?> json) =>
      _$BirdwatchPivotCallToActionFromJson(json);

  final String destinationUrl;
  final String prompt;
  final String title;

  Map<String, Object?> toJson() => _$BirdwatchPivotCallToActionToJson(this);
}
