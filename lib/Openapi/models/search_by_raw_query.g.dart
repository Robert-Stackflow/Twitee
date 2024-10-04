// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_by_raw_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchByRawQuery _$SearchByRawQueryFromJson(Map<String, dynamic> json) =>
    SearchByRawQuery(
      searchTimeline: json['search_timeline'] == null
          ? null
          : SearchTimeline.fromJson(
              json['search_timeline'] as Map<String, dynamic>),
      bookmarksSearchTimeline: json['bookmarks_search_timeline'] == null
          ? null
          : SearchTimeline.fromJson(
              json['bookmarks_search_timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchByRawQueryToJson(SearchByRawQuery instance) =>
    <String, dynamic>{
      'search_timeline': instance.searchTimeline,
      'bookmarks_search_timeline': instance.bookmarksSearchTimeline,
    };
