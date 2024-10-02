// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtendedEntitiesImpl _$$ExtendedEntitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$ExtendedEntitiesImpl(
      media: (json['media'] as List<dynamic>)
          .map((e) => MediaExtended.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExtendedEntitiesImplToJson(
        _$ExtendedEntitiesImpl instance) =>
    <String, dynamic>{
      'media': instance.media,
    };
