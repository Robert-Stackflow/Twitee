// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birdwatch_pivot_subtitle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirdwatchPivotSubtitleImpl _$$BirdwatchPivotSubtitleImplFromJson(
        Map<String, dynamic> json) =>
    _$BirdwatchPivotSubtitleImpl(
      entities: (json['entities'] as List<dynamic>)
          .map((e) => BirdwatchEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$BirdwatchPivotSubtitleImplToJson(
        _$BirdwatchPivotSubtitleImpl instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'text': instance.text,
    };
