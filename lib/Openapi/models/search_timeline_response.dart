// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'search_timeline_data.dart';

part 'search_timeline_response.g.dart';

@JsonSerializable()
class SearchTimelineResponse {
  const SearchTimelineResponse({
    required this.data,
  });

  factory SearchTimelineResponse.fromJson(Map<String, Object?> json) =>
      _$SearchTimelineResponseFromJson(json);

  final SearchTimelineData data;

  Map<String, Object?> toJson() => _$SearchTimelineResponseToJson(this);
}
