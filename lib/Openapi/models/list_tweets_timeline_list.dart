// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'list_tweets_timeline.dart';

part 'list_tweets_timeline_list.g.dart';

@JsonSerializable()
class ListTweetsTimelineList  {
  const ListTweetsTimelineList({
    required this.tweetsTimeline,
  });
  
  factory ListTweetsTimelineList.fromJson(Map<String, Object?> json) => _$ListTweetsTimelineListFromJson(json);
  
  @JsonKey(name: 'tweets_timeline')
  final ListTweetsTimeline? tweetsTimeline;

  Map<String, Object?> toJson() => _$ListTweetsTimelineListToJson(this);
}
