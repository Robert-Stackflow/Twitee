// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'birdwatch_entity_ref.dart';

part 'birdwatch_entity.freezed.dart';
part 'birdwatch_entity.g.dart';

@Freezed()
 class BirdwatchEntity with _$BirdwatchEntity {
  const factory BirdwatchEntity({
    required int fromIndex,
    required BirdwatchEntityRef ref,
    required int toIndex,
  }) = _BirdwatchEntity;
  
  factory BirdwatchEntity.fromJson(Map<String, Object?> json) => _$BirdwatchEntityFromJson(json);
}
