// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'instruction_type.dart';
import 'instruction_union.dart';
import 'timeline_add_entry.dart';

part 'timeline_replace_entry.g.dart';

@JsonSerializable()
class TimelineReplaceEntry extends InstructionUnion {
  const TimelineReplaceEntry({
    required this.entry,
    required this.entryIdToReplace,
    required this.type,
  });

  factory TimelineReplaceEntry.fromJson(Map<String, Object?> json) =>
      _$TimelineReplaceEntryFromJson(json);

  final TimelineAddEntry entry;
  @JsonKey(name: 'entry_id_to_replace')
  final String? entryIdToReplace;
  final InstructionType type;

  Map<String, Object?> toJson() => _$TimelineReplaceEntryToJson(this);
}
