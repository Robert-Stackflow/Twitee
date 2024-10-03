// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birdwatch_pivot_footer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirdwatchPivotFooter _$BirdwatchPivotFooterFromJson(
        Map<String, dynamic> json) =>
    BirdwatchPivotFooter(
      entities: (json['entities'] as List<dynamic>)
          .map((e) => BirdwatchEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$BirdwatchPivotFooterToJson(
        BirdwatchPivotFooter instance) =>
    <String, dynamic>{
      'entities': instance.entities,
      'text': instance.text,
    };
