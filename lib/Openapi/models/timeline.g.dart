// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineImpl _$$TimelineImplFromJson(Map<String, dynamic> json) =>
    _$TimelineImpl(
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => InstructionUnion.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'],
      responseObjects: json['responseObjects'],
    );

Map<String, dynamic> _$$TimelineImplToJson(_$TimelineImpl instance) =>
    <String, dynamic>{
      'instructions': instance.instructions,
      'metadata': instance.metadata,
      'responseObjects': instance.responseObjects,
    };
