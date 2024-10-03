// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_v.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineV _$TimelineVFromJson(Map<String, dynamic> json) => TimelineV(
      timeline: json['timeline'] == null
          ? null
          : Timeline.fromJson(json['timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimelineVToJson(TimelineV instance) => <String, dynamic>{
      'timeline': instance.timeline,
    };
