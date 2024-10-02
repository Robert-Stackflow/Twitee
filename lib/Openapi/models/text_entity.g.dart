// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextEntityImpl _$$TextEntityImplFromJson(Map<String, dynamic> json) =>
    _$TextEntityImpl(
      fromIndex: (json['fromIndex'] as num).toInt(),
      ref: TextEntityRef.fromJson(json['ref'] as Map<String, dynamic>),
      toIndex: (json['toIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$TextEntityImplToJson(_$TextEntityImpl instance) =>
    <String, dynamic>{
      'fromIndex': instance.fromIndex,
      'ref': instance.ref,
      'toIndex': instance.toIndex,
    };
