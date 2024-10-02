// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'client_event_info.dart';
import 'feedback_info.dart';
import 'item_content_union.dart';

part 'module_entry.freezed.dart';
part 'module_entry.g.dart';

@Freezed()
class ModuleEntry with _$ModuleEntry {
  const factory ModuleEntry({
    required ClientEventInfo clientEventInfo,
    required FeedbackInfo feedbackInfo,
    required ItemContentUnion itemContent,
  }) = _ModuleEntry;
  
  factory ModuleEntry.fromJson(Map<String, Object?> json) => _$ModuleEntryFromJson(json);
}
