// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_timeline_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTimelineResponse _$SearchTimelineResponseFromJson(
        Map<String, dynamic> json) =>
    SearchTimelineResponse(
      data: SearchTimelineData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchTimelineResponseToJson(
        SearchTimelineResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
