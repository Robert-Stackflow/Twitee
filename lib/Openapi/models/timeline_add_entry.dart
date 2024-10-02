// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'content_union.dart';

part 'timeline_add_entry.freezed.dart';
part 'timeline_add_entry.g.dart';

@Freezed()
class TimelineAddEntry with _$TimelineAddEntry {
  const factory TimelineAddEntry({
    required ContentUnion content,
    required String entryId,
    required String sortIndex,
  }) = _TimelineAddEntry;
  
  factory TimelineAddEntry.fromJson(Map<String, Object?> json) => _$TimelineAddEntryFromJson(json);
}
