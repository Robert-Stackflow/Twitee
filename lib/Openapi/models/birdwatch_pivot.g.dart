// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birdwatch_pivot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirdwatchPivot _$BirdwatchPivotFromJson(Map<String, dynamic> json) =>
    BirdwatchPivot(
      callToAction: json['callToAction'] == null
          ? null
          : BirdwatchPivotCallToAction.fromJson(
              json['callToAction'] as Map<String, dynamic>),
      destinationUrl: json['destinationUrl'] as String,
      footer:
          BirdwatchPivotFooter.fromJson(json['footer'] as Map<String, dynamic>),
      iconType: BirdwatchPivotIconType.fromJson(json['iconType'] as String),
      note: BirdwatchPivotNote.fromJson(json['note'] as Map<String, dynamic>),
      shorttitle: json['shorttitle'] as String,
      subtitle: BirdwatchPivotSubtitle.fromJson(
          json['subtitle'] as Map<String, dynamic>),
      title: json['title'] as String,
      visualStyle: json['visualStyle'] == null
          ? null
          : BirdwatchPivotVisualStyle.fromJson(json['visualStyle'] as String),
    );

Map<String, dynamic> _$BirdwatchPivotToJson(BirdwatchPivot instance) =>
    <String, dynamic>{
      'callToAction': instance.callToAction,
      'destinationUrl': instance.destinationUrl,
      'footer': instance.footer,
      'iconType': _$BirdwatchPivotIconTypeEnumMap[instance.iconType]!,
      'note': instance.note,
      'shorttitle': instance.shorttitle,
      'subtitle': instance.subtitle,
      'title': instance.title,
      'visualStyle': _$BirdwatchPivotVisualStyleEnumMap[instance.visualStyle],
    };

const _$BirdwatchPivotIconTypeEnumMap = {
  BirdwatchPivotIconType.birdwatchV1Icon: 'BirdwatchV1Icon',
  BirdwatchPivotIconType.$unknown: r'$unknown',
};

const _$BirdwatchPivotVisualStyleEnumMap = {
  BirdwatchPivotVisualStyle.valueDefault: 'Default',
  BirdwatchPivotVisualStyle.$unknown: r'$unknown',
};
