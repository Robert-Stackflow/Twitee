// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_show_cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineShowCover _$TimelineShowCoverFromJson(Map<String, dynamic> json) =>
    TimelineShowCover(
      clientEventInfo: ClientEventInfo.fromJson(
          json['clientEventInfo'] as Map<String, dynamic>),
      cover: TimelineHalfCover.fromJson(json['cover'] as Map<String, dynamic>),
      type: InstructionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$TimelineShowCoverToJson(TimelineShowCover instance) =>
    <String, dynamic>{
      'clientEventInfo': instance.clientEventInfo,
      'cover': instance.cover,
      'type': _$InstructionTypeEnumMap[instance.type]!,
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
