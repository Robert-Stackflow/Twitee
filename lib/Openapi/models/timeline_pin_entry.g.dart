// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_pin_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelinePinEntry _$TimelinePinEntryFromJson(Map<String, dynamic> json) =>
    TimelinePinEntry(
      entry: TimelineAddEntry.fromJson(json['entry'] as Map<String, dynamic>),
      type: InstructionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$TimelinePinEntryToJson(TimelinePinEntry instance) =>
    <String, dynamic>{
      'entry': instance.entry,
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
