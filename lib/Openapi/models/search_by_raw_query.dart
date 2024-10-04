// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'search_timeline.dart';

part 'search_by_raw_query.g.dart';

@JsonSerializable()
class SearchByRawQuery  {
  const SearchByRawQuery({
    required this.searchTimeline,
    required this.bookmarksSearchTimeline,
  });
  
  factory SearchByRawQuery.fromJson(Map<String, Object?> json) => _$SearchByRawQueryFromJson(json);
  
  @JsonKey(name: 'search_timeline')
  final SearchTimeline? searchTimeline;

  @JsonKey(name: 'bookmarks_search_timeline')
  final SearchTimeline? bookmarksSearchTimeline;

  Map<String, Object?> toJson() => _$SearchByRawQueryToJson(this);
}
