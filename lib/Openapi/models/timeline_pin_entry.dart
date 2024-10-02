// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'instruction_type.dart';
import 'timeline_add_entry.dart';

part 'timeline_pin_entry.freezed.dart';
part 'timeline_pin_entry.g.dart';

@Freezed()
class TimelinePinEntry with _$TimelinePinEntry {
  const factory TimelinePinEntry({
    required TimelineAddEntry entry,
    required InstructionType type,
  }) = _TimelinePinEntry;
  
  factory TimelinePinEntry.fromJson(Map<String, Object?> json) => _$TimelinePinEntryFromJson(json);
}
