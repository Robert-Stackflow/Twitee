// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'search_by_raw_query.dart';

part 'search_timeline_data.g.dart';

@JsonSerializable()
class SearchTimelineData  {
  const SearchTimelineData({
    required this.searchByRawQuery,
  });
  
  factory SearchTimelineData.fromJson(Map<String, Object?> json) => _$SearchTimelineDataFromJson(json);
  
  @JsonKey(name: 'search_by_raw_query')
  final SearchByRawQuery? searchByRawQuery;

  Map<String, Object?> toJson() => _$SearchTimelineDataToJson(this);
}
