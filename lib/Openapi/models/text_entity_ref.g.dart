// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_entity_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextEntityRef _$TextEntityRefFromJson(Map<String, dynamic> json) =>
    TextEntityRef(
      type: TextEntityRefType.fromJson(json['type'] as String),
      url: json['url'] as String,
      urlType: TextEntityRefUrlType.fromJson(json['urlType'] as String),
    );

Map<String, dynamic> _$TextEntityRefToJson(TextEntityRef instance) =>
    <String, dynamic>{
      'type': _$TextEntityRefTypeEnumMap[instance.type]!,
      'url': instance.url,
      'urlType': _$TextEntityRefUrlTypeEnumMap[instance.urlType]!,
    };

const _$TextEntityRefTypeEnumMap = {
  TextEntityRefType.timelineUrl: 'TimelineUrl',
  TextEntityRefType.$unknown: r'$unknown',
};

const _$TextEntityRefUrlTypeEnumMap = {
  TextEntityRefUrlType.externalUrl: 'ExternalUrl',
  TextEntityRefUrlType.$unknown: r'$unknown',
};
