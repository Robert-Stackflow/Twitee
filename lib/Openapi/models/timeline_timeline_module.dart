// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'content_entry_type.dart';
import 'display_type.dart';
import 'feedback_info.dart';
import 'module_item.dart';
import 'type_name.dart';

part 'timeline_timeline_module.freezed.dart';
part 'timeline_timeline_module.g.dart';

@Freezed()
 class TimelineTimelineModule with _$TimelineTimelineModule {
  const factory TimelineTimelineModule({
    @JsonKey(name: '__typename')
    required String privateTypename,
    required dynamic clientEventInfo,
    required DisplayType displayType,
    required ContentEntryType entryType,
    required FeedbackInfo feedbackInfo,
    required dynamic footer,
    required dynamic header,
    required List<ModuleItem> items,
    required dynamic metadata,
  }) = _TimelineTimelineModule;
  
  factory TimelineTimelineModule.fromJson(Map<String, Object?> json) => _$TimelineTimelineModuleFromJson(json);
}
