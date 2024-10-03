// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'media_extended.dart';

part 'extended_entities.g.dart';

@JsonSerializable()
class ExtendedEntities  {
  const ExtendedEntities({
    required this.media,
  });
  
  factory ExtendedEntities.fromJson(Map<String, Object?> json) => _$ExtendedEntitiesFromJson(json);
  
  final List<MediaExtended> media;

  Map<String, Object?> toJson() => _$ExtendedEntitiesToJson(this);
}
