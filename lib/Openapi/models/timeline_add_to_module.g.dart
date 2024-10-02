// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_add_to_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineAddToModuleImpl _$$TimelineAddToModuleImplFromJson(
        Map<String, dynamic> json) =>
    _$TimelineAddToModuleImpl(
      moduleEntryId: json['moduleEntryId'] as String,
      moduleItems: (json['moduleItems'] as List<dynamic>)
          .map((e) => ModuleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      prepend: json['prepend'] as bool,
      type: InstructionType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$TimelineAddToModuleImplToJson(
        _$TimelineAddToModuleImpl instance) =>
    <String, dynamic>{
      'moduleEntryId': instance.moduleEntryId,
      'moduleItems': instance.moduleItems,
      'prepend': instance.prepend,
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
