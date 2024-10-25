// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTimeline _$SearchTimelineFromJson(Map<String, dynamic> json) =>
    SearchTimeline(
      timeline: json['timeline'] != null
          ? Timeline.fromJson(json['timeline'] as Map<String, dynamic>)
          : const Timeline(
              instructions: [], metadata: null, responseObjects: null),
    );

Map<String, dynamic> _$SearchTimelineToJson(SearchTimeline instance) =>
    <String, dynamic>{
      'timeline': instance.timeline,
    };
