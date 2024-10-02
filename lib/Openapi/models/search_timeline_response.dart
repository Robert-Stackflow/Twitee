// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_timeline_data.dart';

part 'search_timeline_response.freezed.dart';
part 'search_timeline_response.g.dart';

@Freezed()
 class SearchTimelineResponse with _$SearchTimelineResponse {
  const factory SearchTimelineResponse({
    required SearchTimelineData data,
  }) = _SearchTimelineResponse;
  
  factory SearchTimelineResponse.fromJson(Map<String, Object?> json) => _$SearchTimelineResponseFromJson(json);
}
