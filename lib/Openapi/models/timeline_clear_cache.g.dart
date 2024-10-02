// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_clear_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineClearCacheImpl _$$TimelineClearCacheImplFromJson(
        Map<String, dynamic> json) =>
    _$TimelineClearCacheImpl(
      type: InstructionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$TimelineClearCacheImplToJson(
        _$TimelineClearCacheImpl instance) =>
    <String, dynamic>{
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
