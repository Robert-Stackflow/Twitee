// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline.dart';

part 'list_tweets_timeline.g.dart';

@JsonSerializable()
class ListTweetsTimeline  {
  const ListTweetsTimeline({
    required this.timeline,
  });
  
  factory ListTweetsTimeline.fromJson(Map<String, Object?> json) => _$ListTweetsTimelineFromJson(json);
  
  final Timeline? timeline;

  Map<String, Object?> toJson() => _$ListTweetsTimelineToJson(this);
}
