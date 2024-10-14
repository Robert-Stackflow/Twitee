// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'client_event_info.dart';
import 'content_entry_type.dart';
import 'content_union.dart';
import 'item_content_union.dart';
import 'type_name.dart';

part 'timeline_timeline_item.g.dart';

@JsonSerializable()
class TimelineTimelineItem extends ContentUnion {
  const TimelineTimelineItem({
    required this.privateTypename,
    required this.clientEventInfo,
    required this.entryType,
    required this.feedbackInfo,
    required this.itemContent,
  });

  factory TimelineTimelineItem.fromJson(Map<String, Object?> json) =>
      _$TimelineTimelineItemFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final ClientEventInfo? clientEventInfo;
  final ContentEntryType entryType;
  final dynamic feedbackInfo;
  final ItemContentUnion itemContent;

  Map<String, Object?> toJson() => _$TimelineTimelineItemToJson(this);
}
