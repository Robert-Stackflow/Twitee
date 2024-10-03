// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'birdwatch_entity_ref.dart';

part 'birdwatch_entity.g.dart';

@JsonSerializable()
class BirdwatchEntity  {
  const BirdwatchEntity({
    required this.fromIndex,
    required this.ref,
    required this.toIndex,
  });
  
  factory BirdwatchEntity.fromJson(Map<String, Object?> json) => _$BirdwatchEntityFromJson(json);
  
  final int fromIndex;
  final BirdwatchEntityRef ref;
  final int toIndex;

  Map<String, Object?> toJson() => _$BirdwatchEntityToJson(this);
}
