// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'client_event_info.dart';
import 'feedback_info.dart';
import 'item_content_union.dart';

part 'module_entry.g.dart';

@JsonSerializable()
class ModuleEntry {
  const ModuleEntry({
    required this.clientEventInfo,
    required this.feedbackInfo,
    required this.itemContent,
  });

  factory ModuleEntry.fromJson(Map<String, Object?> json) =>
      _$ModuleEntryFromJson(json);

  final ClientEventInfo? clientEventInfo;
  final FeedbackInfo? feedbackInfo;
  final ItemContentUnion itemContent;

  Map<String, Object?> toJson() => _$ModuleEntryToJson(this);
}
