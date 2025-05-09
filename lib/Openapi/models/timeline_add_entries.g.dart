// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_add_entries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineAddEntries _$TimelineAddEntriesFromJson(Map<String, dynamic> json) =>
    TimelineAddEntries(
      entries: (json['entries'] as List<dynamic>)
          .map((e) => TimelineAddEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: InstructionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$TimelineAddEntriesToJson(TimelineAddEntries instance) =>
    <String, dynamic>{
      'entries': instance.entries,
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
