// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'instruction_type.dart';
import 'instruction_union.dart';
import 'timeline_add_entry.dart';

part 'timeline_pin_entry.g.dart';

@JsonSerializable()
class TimelinePinEntry extends InstructionUnion {
  const TimelinePinEntry({
    required this.entry,
    required this.type,
  });

  factory TimelinePinEntry.fromJson(Map<String, Object?> json) =>
      _$TimelinePinEntryFromJson(json);

  final TimelineAddEntry entry;
  final InstructionType type;

  Map<String, Object?> toJson() => _$TimelinePinEntryToJson(this);
}
