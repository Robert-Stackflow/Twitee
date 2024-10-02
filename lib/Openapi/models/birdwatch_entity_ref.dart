// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'birdwatch_entity_ref_type.dart';
import 'birdwatch_entity_ref_url_type.dart';

part 'birdwatch_entity_ref.freezed.dart';
part 'birdwatch_entity_ref.g.dart';

@Freezed()
class BirdwatchEntityRef with _$BirdwatchEntityRef {
  const factory BirdwatchEntityRef({
    required String text,
    required BirdwatchEntityRefType type,
    required String url,
    required BirdwatchEntityRefUrlType urlType,
  }) = _BirdwatchEntityRef;
  
  factory BirdwatchEntityRef.fromJson(Map<String, Object?> json) => _$BirdwatchEntityRefFromJson(json);
}
