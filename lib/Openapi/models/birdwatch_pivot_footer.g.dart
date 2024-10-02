// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birdwatch_pivot_footer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirdwatchPivotFooterImpl _$$BirdwatchPivotFooterImplFromJson(
        Map<String, dynamic> json) =>
    _$BirdwatchPivotFooterImpl(
      entities: (json['entities'] as List<dynamic>)
          .map((e) => BirdwatchEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$BirdwatchPivotFooterImplToJson(
        _$BirdwatchPivotFooterImpl instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'text': instance.text,
    };
