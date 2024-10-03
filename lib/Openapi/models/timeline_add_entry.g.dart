// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_add_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineAddEntry _$TimelineAddEntryFromJson(Map<String, dynamic> json) =>
    TimelineAddEntry(
      content: ContentUnion.fromJson(json['content'] as Map<String, dynamic>),
      entryId: json['entryId'] as String,
      sortIndex: json['sortIndex'] as String,
    );

Map<String, dynamic> _$TimelineAddEntryToJson(TimelineAddEntry instance) =>
    <String, dynamic>{
      'content': instance.content,
      'entryId': instance.entryId,
      'sortIndex': instance.sortIndex,
    };
