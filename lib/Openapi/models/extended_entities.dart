// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_extended.dart';

part 'extended_entities.freezed.dart';
part 'extended_entities.g.dart';

@Freezed()
class ExtendedEntities with _$ExtendedEntities {
  const factory ExtendedEntities({
    required List<MediaExtended> media,
  }) = _ExtendedEntities;
  
  factory ExtendedEntities.fromJson(Map<String, Object?> json) => _$ExtendedEntitiesFromJson(json);
}
