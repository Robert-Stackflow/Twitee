// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Text _$TextFromJson(Map<String, dynamic> json) => Text(
      entities: (json['entities'] as List<dynamic>)
          .map((e) => TextEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$TextToJson(Text instance) => <String, dynamic>{
      'entities': instance.entities,
      'text': instance.text,
    };
