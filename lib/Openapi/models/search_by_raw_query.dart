// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_timeline.dart';

part 'search_by_raw_query.freezed.dart';
part 'search_by_raw_query.g.dart';

@Freezed()
 class SearchByRawQuery with _$SearchByRawQuery {
  const factory SearchByRawQuery({
    @JsonKey(name: 'search_timeline')
    required SearchTimeline searchTimeline,
  }) = _SearchByRawQuery;
  
  factory SearchByRawQuery.fromJson(Map<String, Object?> json) => _$SearchByRawQueryFromJson(json);
}
