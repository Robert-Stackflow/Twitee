// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextEntity _$TextEntityFromJson(Map<String, dynamic> json) => TextEntity(
      fromIndex: (json['fromIndex'] as num).toInt(),
      ref: TextEntityRef.fromJson(json['ref'] as Map<String, dynamic>),
      toIndex: (json['toIndex'] as num).toInt(),
    );

Map<String, dynamic> _$TextEntityToJson(TextEntity instance) =>
    <String, dynamic>{
      'fromIndex': instance.fromIndex,
      'ref': instance.ref,
      'toIndex': instance.toIndex,
    };
