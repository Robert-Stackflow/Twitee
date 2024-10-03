// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline.dart';

part 'search_timeline.g.dart';

@JsonSerializable()
class SearchTimeline  {
  const SearchTimeline({
    required this.timeline,
  });
  
  factory SearchTimeline.fromJson(Map<String, Object?> json) => _$SearchTimelineFromJson(json);
  
  final Timeline timeline;

  Map<String, Object?> toJson() => _$SearchTimelineToJson(this);
}
