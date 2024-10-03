// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'content_union.dart';

part 'timeline_add_entry.g.dart';

@JsonSerializable()
class TimelineAddEntry  {
  const TimelineAddEntry({
    required this.content,
    required this.entryId,
    required this.sortIndex,
  });
  
  factory TimelineAddEntry.fromJson(Map<String, Object?> json) => _$TimelineAddEntryFromJson(json);
  
  final ContentUnion content;
  final String entryId;
  final String sortIndex;

  Map<String, Object?> toJson() => _$TimelineAddEntryToJson(this);
}
