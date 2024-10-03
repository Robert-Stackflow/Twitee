// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birdwatch_pivot_subtitle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirdwatchPivotSubtitle _$BirdwatchPivotSubtitleFromJson(
        Map<String, dynamic> json) =>
    BirdwatchPivotSubtitle(
      entities: (json['entities'] as List<dynamic>)
          .map((e) => BirdwatchEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$BirdwatchPivotSubtitleToJson(
        BirdwatchPivotSubtitle instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'text': instance.text,
    };
