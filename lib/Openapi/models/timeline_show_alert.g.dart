// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_show_alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineShowAlert _$TimelineShowAlertFromJson(Map<String, dynamic> json) =>
    TimelineShowAlert(
      alertType: json['alertType'] == null
          ? null
          : TimelineShowAlertAlertType.fromJson(json['alertType'] as String),
      colorConfig: json['colorConfig'],
      displayDurationMs: (json['displayDurationMs'] as num?)?.toInt(),
      displayLocation: json['displayLocation'] == null
          ? null
          : TimelineShowAlertDisplayLocation.fromJson(
              json['displayLocation'] as String),
      iconDisplayInfo: json['iconDisplayInfo'],
      richText: RichText.fromJson(json['richText'] as Map<String, dynamic>),
      triggerDelayMs: (json['triggerDelayMs'] as num?)?.toInt(),
      type: InstructionType.fromJson(json['type'] as String),
      usersResults: (json['usersResults'] as List<dynamic>)
          .map((e) => UserResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimelineShowAlertToJson(TimelineShowAlert instance) =>
    <String, dynamic>{
      'alertType': _$TimelineShowAlertAlertTypeEnumMap[instance.alertType],
      'colorConfig': instance.colorConfig,
      'displayDurationMs': instance.displayDurationMs,
      'displayLocation':
          _$TimelineShowAlertDisplayLocationEnumMap[instance.displayLocation],
      'iconDisplayInfo': instance.iconDisplayInfo,
      'richText': instance.richText,
      'triggerDelayMs': instance.triggerDelayMs,
      'type': _$InstructionTypeEnumMap[instance.type]!,
      'usersResults': instance.usersResults,
    };

const _$TimelineShowAlertAlertTypeEnumMap = {
  TimelineShowAlertAlertType.newTweets: 'NewTweets',
  TimelineShowAlertAlertType.$unknown: r'$unknown',
};

const _$TimelineShowAlertDisplayLocationEnumMap = {
  TimelineShowAlertDisplayLocation.top: 'Top',
  TimelineShowAlertDisplayLocation.$unknown: r'$unknown',
};

const _$InstructionTypeEnumMap = {
  InstructionType.timelineAddEntries: 'TimelineAddEntries',
  InstructionType.timelineAddToModule: 'TimelineAddToModule',
  InstructionType.timelineClearCache: 'TimelineClearCache',
  InstructionType.timelinePinEntry: 'TimelinePinEntry',
  InstructionType.timelineReplaceEntry: 'TimelineReplaceEntry',
  InstructionType.timelineShowAlert: 'TimelineShowAlert',
  InstructionType.timelineTerminateTimeline: 'TimelineTerminateTimeline',
  InstructionType.timelineShowCover: 'TimelineShowCover',
  InstructionType.$unknown: r'$unknown',
};
