// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'instruction_type.dart';
import 'timeline_add_entry.dart';

part 'timeline_replace_entry.freezed.dart';
part 'timeline_replace_entry.g.dart';

@Freezed()
 class TimelineReplaceEntry with _$TimelineReplaceEntry {
  const factory TimelineReplaceEntry({
    required TimelineAddEntry entry,
    @JsonKey(name: 'entry_id_to_replace')
    required String entryIdToReplace,
    required InstructionType type,
  }) = _TimelineReplaceEntry;
  
  factory TimelineReplaceEntry.fromJson(Map<String, Object?> json) => _$TimelineReplaceEntryFromJson(json);
}
