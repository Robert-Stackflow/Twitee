// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birdwatch_entity_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirdwatchEntityRef _$BirdwatchEntityRefFromJson(Map<String, dynamic> json) =>
    BirdwatchEntityRef(
      text: json['text'] as String?,
      type: BirdwatchEntityRefType.fromJson(json['type'] as String),
      url: json['url'] as String?,
      urlType: json['urlType'] == null
          ? null
          : BirdwatchEntityRefUrlType.fromJson(json['urlType'] as String),
    );

Map<String, dynamic> _$BirdwatchEntityRefToJson(BirdwatchEntityRef instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': _$BirdwatchEntityRefTypeEnumMap[instance.type]!,
      'url': instance.url,
      'urlType': _$BirdwatchEntityRefUrlTypeEnumMap[instance.urlType],
    };

const _$BirdwatchEntityRefTypeEnumMap = {
  BirdwatchEntityRefType.timelineUrl: 'TimelineUrl',
  BirdwatchEntityRefType.timelineRichTextHashtag: 'TimelineRichTextHashtag',
  BirdwatchEntityRefType.$unknown: r'$unknown',
};

const _$BirdwatchEntityRefUrlTypeEnumMap = {
  BirdwatchEntityRefUrlType.externalUrl: 'ExternalUrl',
  BirdwatchEntityRefUrlType.$unknown: r'$unknown',
};
