// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_timeline_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTimelineData _$SearchTimelineDataFromJson(Map<String, dynamic> json) =>
    SearchTimelineData(
      searchByRawQuery: json['search_by_raw_query'] == null
          ? null
          : SearchByRawQuery.fromJson(
              json['search_by_raw_query'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchTimelineDataToJson(SearchTimelineData instance) =>
    <String, dynamic>{
      'search_by_raw_query': instance.searchByRawQuery,
    };
