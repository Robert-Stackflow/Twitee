// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'birdwatch_entity.dart';

part 'birdwatch_pivot_subtitle.g.dart';

@JsonSerializable()
class BirdwatchPivotSubtitle  {
  const BirdwatchPivotSubtitle({
    required this.entities,
    required this.text,
  });
  
  factory BirdwatchPivotSubtitle.fromJson(Map<String, Object?> json) => _$BirdwatchPivotSubtitleFromJson(json);
  
  final List<BirdwatchEntity> entities;
  final String text;

  Map<String, Object?> toJson() => _$BirdwatchPivotSubtitleToJson(this);
}
