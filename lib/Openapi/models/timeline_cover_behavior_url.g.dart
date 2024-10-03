// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_cover_behavior_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineCoverBehaviorUrl _$TimelineCoverBehaviorUrlFromJson(
        Map<String, dynamic> json) =>
    TimelineCoverBehaviorUrl(
      url: json['url'] as String,
      urlType: json['url_type'] == null
          ? null
          : TimelineCoverBehaviorUrlUrlType.fromJson(
              json['url_type'] as String),
    );

Map<String, dynamic> _$TimelineCoverBehaviorUrlToJson(
        TimelineCoverBehaviorUrl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'url_type': _$TimelineCoverBehaviorUrlUrlTypeEnumMap[instance.urlType],
    };

const _$TimelineCoverBehaviorUrlUrlTypeEnumMap = {
  TimelineCoverBehaviorUrlUrlType.externalUrl: 'ExternalUrl',
  TimelineCoverBehaviorUrlUrlType.$unknown: r'$unknown',
};
