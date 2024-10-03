// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_terminate_timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineTerminateTimeline _$TimelineTerminateTimelineFromJson(
        Map<String, dynamic> json) =>
    TimelineTerminateTimeline(
      direction: TimelineTerminateTimelineDirection.fromJson(
          json['direction'] as String),
      type: InstructionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$TimelineTerminateTimelineToJson(
        TimelineTerminateTimeline instance) =>
    <String, dynamic>{
      'direction':
          _$TimelineTerminateTimelineDirectionEnumMap[instance.direction]!,
      'type': _$InstructionTypeEnumMap[instance.type]!,
    };

const _$TimelineTerminateTimelineDirectionEnumMap = {
  TimelineTerminateTimelineDirection.top: 'Top',
  TimelineTerminateTimelineDirection.bottom: 'Bottom',
  TimelineTerminateTimelineDirection.topAndBottom: 'TopAndBottom',
  TimelineTerminateTimelineDirection.$unknown: r'$unknown',
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
