// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_cover_behavior_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineCoverBehaviorUrlImpl _$$TimelineCoverBehaviorUrlImplFromJson(
        Map<String, dynamic> json) =>
    _$TimelineCoverBehaviorUrlImpl(
      url: json['url'] as String,
      urlType:
          TimelineCoverBehaviorUrlUrlType.fromJson(json['url_type'] as String),
    );

Map<String, dynamic> _$$TimelineCoverBehaviorUrlImplToJson(
        _$TimelineCoverBehaviorUrlImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'url_type': _$TimelineCoverBehaviorUrlUrlTypeEnumMap[instance.urlType]!,
    };

const _$TimelineCoverBehaviorUrlUrlTypeEnumMap = {
  TimelineCoverBehaviorUrlUrlType.externalUrl: 'ExternalUrl',
  TimelineCoverBehaviorUrlUrlType.$unknown: r'$unknown',
};
