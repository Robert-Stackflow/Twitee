// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'birdwatch_entity.dart';

part 'birdwatch_pivot_footer.g.dart';

@JsonSerializable()
class BirdwatchPivotFooter  {
  const BirdwatchPivotFooter({
    required this.entities,
    required this.text,
  });
  
  factory BirdwatchPivotFooter.fromJson(Map<String, Object?> json) => _$BirdwatchPivotFooterFromJson(json);
  
  final List<BirdwatchEntity> entities;
  final String text;

  Map<String, Object?> toJson() => _$BirdwatchPivotFooterToJson(this);
}
