// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_cover_behavior.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineCoverBehavior _$TimelineCoverBehaviorFromJson(
        Map<String, dynamic> json) =>
    TimelineCoverBehavior(
      type: TimelineCoverBehaviorType.fromJson(json['type'] as String),
      url: json['url'] == null
          ? null
          : TimelineCoverBehaviorUrl.fromJson(
              json['url'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimelineCoverBehaviorToJson(
        TimelineCoverBehavior instance) =>
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
