// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_replace_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineReplaceEntryImpl _$$TimelineReplaceEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$TimelineReplaceEntryImpl(
      entry: TimelineAddEntry.fromJson(json['entry'] as Map<String, dynamic>),
      entryIdToReplace: json['entry_id_to_replace'] as String,
      type: InstructionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$TimelineReplaceEntryImplToJson(
        _$TimelineReplaceEntryImpl instance) =>
    <String, dynamic>{
      'entry': instance.entry,
      'entry_id_to_replace': instance.entryIdToReplace,
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
