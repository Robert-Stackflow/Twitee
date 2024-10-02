// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_cover_behavior.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineCoverBehaviorImpl _$$TimelineCoverBehaviorImplFromJson(
        Map<String, dynamic> json) =>
    _$TimelineCoverBehaviorImpl(
      type: TimelineCoverBehaviorType.fromJson(json['type'] as String),
      url: TimelineCoverBehaviorUrl.fromJson(
          json['url'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TimelineCoverBehaviorImplToJson(
        _$TimelineCoverBehaviorImpl instance) =>
    <String, dynamic>{
      'type': _$TimelineCoverBehaviorTypeEnumMap[instance.type]!,
      'url': instance.url,
    };

const _$TimelineCoverBehaviorTypeEnumMap = {
  TimelineCoverBehaviorType.timelineCoverBehaviorDismiss:
      'TimelineCoverBehaviorDismiss',
  TimelineCoverBehaviorType.timelineCoverBehaviorNavigate:
      'TimelineCoverBehaviorNavigate',
  TimelineCoverBehaviorType.$unknown: r'$unknown',
};
