// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_timeline_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineTimelineModule _$TimelineTimelineModuleFromJson(
        Map<String, dynamic> json) =>
    TimelineTimelineModule(
      privateTypename: json['__typename'] as String?,
      clientEventInfo: json['clientEventInfo'],
      displayType: DisplayType.fromJson(json['displayType'] as String),
      entryType: ContentEntryType.fromJson(json['entryType'] as String),
      feedbackInfo: json['feedbackInfo'] == null
          ? null
          : FeedbackInfo.fromJson(json['feedbackInfo'] as Map<String, dynamic>),
      footer: json['footer'],
      header: json['header'],
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : ModuleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$TimelineTimelineModuleToJson(
        TimelineTimelineModule instance) =>
    <String, dynamic>{
      '__typename': instance.privateTypename,
      'clientEventInfo': instance.clientEventInfo,
      'displayType': _$DisplayTypeEnumMap[instance.displayType]!,
      'entryType': _$ContentEntryTypeEnumMap[instance.entryType]!,
      'feedbackInfo': instance.feedbackInfo,
      'footer': instance.footer,
      'header': instance.header,
      'items': instance.items,
      'metadata': instance.metadata,
    };

const _$DisplayTypeEnumMap = {
  DisplayType.vertical: 'Vertical',
  DisplayType.verticalConversation: 'VerticalConversation',
  DisplayType.verticalGrid: 'VerticalGrid',
  DisplayType.carousel: 'Carousel',
  DisplayType.$unknown: r'$unknown',
};

const _$ContentEntryTypeEnumMap = {
  ContentEntryType.timelineTimelineItem: 'TimelineTimelineItem',
  ContentEntryType.timelineTimelineCursor: 'TimelineTimelineCursor',
  ContentEntryType.timelineTimelineModule: 'TimelineTimelineModule',
  ContentEntryType.$unknown: r'$unknown',
};
