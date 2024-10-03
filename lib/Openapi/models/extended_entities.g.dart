// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtendedEntities _$ExtendedEntitiesFromJson(Map<String, dynamic> json) =>
    ExtendedEntities(
      media: (json['media'] as List<dynamic>)
          .map((e) => MediaExtended.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExtendedEntitiesToJson(ExtendedEntities instance) =>
    <String, dynamic>{
      'media': instance.media,
    };
