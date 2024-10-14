// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'instruction_type.dart';
import 'instruction_union.dart';
import 'timeline_add_entry.dart';

part 'timeline_add_entries.g.dart';

@JsonSerializable()
class TimelineAddEntries extends InstructionUnion {
  const TimelineAddEntries({
    required this.entries,
    required this.type,
  });

  factory TimelineAddEntries.fromJson(Map<String, Object?> json) =>
      _$TimelineAddEntriesFromJson(json);

  final List<TimelineAddEntry> entries;
  final InstructionType type;

  Map<String, Object?> toJson() => _$TimelineAddEntriesToJson(this);
}
