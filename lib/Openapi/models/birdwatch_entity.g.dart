// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birdwatch_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirdwatchEntityImpl _$$BirdwatchEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BirdwatchEntityImpl(
      fromIndex: (json['fromIndex'] as num).toInt(),
      ref: BirdwatchEntityRef.fromJson(json['ref'] as Map<String, dynamic>),
      toIndex: (json['toIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$BirdwatchEntityImplToJson(
        _$BirdwatchEntityImpl instance) =>
    <String, dynamic>{
      'fromIndex': instance.fromIndex,
      'ref': instance.ref,
      'toIndex': instance.toIndex,
    };
