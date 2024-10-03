// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timeline _$TimelineFromJson(Map<String, dynamic> json) => Timeline(
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => InstructionUnion.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'],
      responseObjects: json['responseObjects'],
    );

Map<String, dynamic> _$TimelineToJson(Timeline instance) => <String, dynamic>{
      'instructions': instance.instructions,
      'metadata': instance.metadata,
      'responseObjects': instance.responseObjects,
    };
