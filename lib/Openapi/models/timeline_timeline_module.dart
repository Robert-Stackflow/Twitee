// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'content_entry_type.dart';
import 'content_union.dart';
import 'display_type.dart';
import 'feedback_info.dart';
import 'module_item.dart';
import 'type_name.dart';

part 'timeline_timeline_module.g.dart';

@JsonSerializable()
class TimelineTimelineModule extends ContentUnion {
  const TimelineTimelineModule({
    required this.privateTypename,
    required this.clientEventInfo,
    required this.displayType,
    required this.entryType,
    required this.feedbackInfo,
    required this.footer,
    required this.header,
    required this.items,
    required this.metadata,
  });
  
  factory TimelineTimelineModule.fromJson(Map<String, Object?> json) => _$TimelineTimelineModuleFromJson(json);
  
  @JsonKey(name: '__typename')
  final String? privateTypename;
  final dynamic clientEventInfo;
  final DisplayType displayType;
  final ContentEntryType entryType;
  final FeedbackInfo? feedbackInfo;
  final dynamic footer;
  final dynamic header;
  final List<ModuleItem?>? items;
  final dynamic metadata;

  Map<String, Object?> toJson() => _$TimelineTimelineModuleToJson(this);
}
