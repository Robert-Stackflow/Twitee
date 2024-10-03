// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birdwatch_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirdwatchEntity _$BirdwatchEntityFromJson(Map<String, dynamic> json) =>
    BirdwatchEntity(
      fromIndex: (json['fromIndex'] as num).toInt(),
      ref: BirdwatchEntityRef.fromJson(json['ref'] as Map<String, dynamic>),
      toIndex: (json['toIndex'] as num).toInt(),
    );

Map<String, dynamic> _$BirdwatchEntityToJson(BirdwatchEntity instance) =>
    <String, dynamic>{
      'fromIndex': instance.fromIndex,
      'ref': instance.ref,
      'toIndex': instance.toIndex,
    };
