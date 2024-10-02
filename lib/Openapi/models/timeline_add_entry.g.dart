// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_add_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineAddEntryImpl _$$TimelineAddEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$TimelineAddEntryImpl(
      content: ContentUnion.fromJson(json['content'] as Map<String, dynamic>),
      entryId: json['entryId'] as String,
      sortIndex: json['sortIndex'] as String,
    );

Map<String, dynamic> _$$TimelineAddEntryImplToJson(
        _$TimelineAddEntryImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'entryId': instance.entryId,
      'sortIndex': instance.sortIndex,
    };
