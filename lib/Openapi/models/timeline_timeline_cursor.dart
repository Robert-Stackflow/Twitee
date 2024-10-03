// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'content_entry_type.dart';
import 'content_union.dart';
import 'cursor_type.dart';
import 'display_treatment.dart';
import 'item_content_union.dart';
import 'type_name.dart';

part 'timeline_timeline_cursor.g.dart';

@JsonSerializable()
class TimelineTimelineCursor extends ItemContentUnion {
  const TimelineTimelineCursor({
    required this.privateTypename,
    required this.cursorType,
    required this.displayTreatment,
    required this.entryType,
    required this.itemType,
    required this.stopOnEmptyResponse,
    required this.value,
  });
  
  factory TimelineTimelineCursor.fromJson(Map<String, Object?> json) => _$TimelineTimelineCursorFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final CursorType cursorType;
  final DisplayTreatment? displayTreatment;
  final ContentEntryType? entryType;
  final ContentEntryType? itemType;
  final bool? stopOnEmptyResponse;
  final String value;

  Map<String, Object?> toJson() => _$TimelineTimelineCursorToJson(this);
}
