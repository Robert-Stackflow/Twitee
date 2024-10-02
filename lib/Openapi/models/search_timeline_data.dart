// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_by_raw_query.dart';

part 'search_timeline_data.freezed.dart';
part 'search_timeline_data.g.dart';

@Freezed()
class SearchTimelineData with _$SearchTimelineData {
  const factory SearchTimelineData({
    @JsonKey(name: 'search_by_raw_query')
    required SearchByRawQuery searchByRawQuery,
  }) = _SearchTimelineData;
  
  factory SearchTimelineData.fromJson(Map<String, Object?> json) => _$SearchTimelineDataFromJson(json);
}
