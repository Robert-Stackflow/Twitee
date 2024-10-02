// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'client_event_info.dart';
import 'content_entry_type.dart';
import 'item_content_union.dart';
import 'type_name.dart';

part 'timeline_timeline_item.freezed.dart';
part 'timeline_timeline_item.g.dart';

@Freezed()
 class TimelineTimelineItem with _$TimelineTimelineItem {
  const factory TimelineTimelineItem({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required ClientEventInfo clientEventInfo,
    required ContentEntryType entryType,
    required dynamic feedbackInfo,
    required ItemContentUnion itemContent,
  }) = _TimelineTimelineItem;
  
  factory TimelineTimelineItem.fromJson(Map<String, Object?> json) => _$TimelineTimelineItemFromJson(json);
}
