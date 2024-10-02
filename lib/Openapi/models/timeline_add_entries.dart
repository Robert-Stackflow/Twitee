// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'instruction_type.dart';
import 'timeline_add_entry.dart';

part 'timeline_add_entries.freezed.dart';
part 'timeline_add_entries.g.dart';

@Freezed()
class TimelineAddEntries with _$TimelineAddEntries {
  const factory TimelineAddEntries({
    required List<TimelineAddEntry> entries,
    required InstructionType type,
  }) = _TimelineAddEntries;
  
  factory TimelineAddEntries.fromJson(Map<String, Object?> json) => _$TimelineAddEntriesFromJson(json);
}
