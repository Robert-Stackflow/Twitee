// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'content_entry_type.dart';
import 'cursor_type.dart';
import 'display_treatment.dart';
import 'type_name.dart';

part 'timeline_timeline_cursor.freezed.dart';
part 'timeline_timeline_cursor.g.dart';

@Freezed()
 class TimelineTimelineCursor with _$TimelineTimelineCursor {
  const factory TimelineTimelineCursor({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required CursorType cursorType,
    required DisplayTreatment displayTreatment,
    required ContentEntryType entryType,
    required ContentEntryType itemType,
    required bool stopOnEmptyResponse,
    required String value,
  }) = _TimelineTimelineCursor;
  
  factory TimelineTimelineCursor.fromJson(Map<String, Object?> json) => _$TimelineTimelineCursorFromJson(json);
}
