// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_pin_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelinePinEntryImpl _$$TimelinePinEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$TimelinePinEntryImpl(
      entry: TimelineAddEntry.fromJson(json['entry'] as Map<String, dynamic>),
      type: InstructionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$TimelinePinEntryImplToJson(
        _$TimelinePinEntryImpl instance) =>
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
