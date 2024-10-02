// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'list_tweets_timeline.dart';

part 'list_tweets_timeline_list.freezed.dart';
part 'list_tweets_timeline_list.g.dart';

@Freezed()
class ListTweetsTimelineList with _$ListTweetsTimelineList {
  const factory ListTweetsTimelineList({
    @JsonKey(name: 'tweets_timeline')
    required ListTweetsTimeline tweetsTimeline,
  }) = _ListTweetsTimelineList;
  
  factory ListTweetsTimelineList.fromJson(Map<String, Object?> json) => _$ListTweetsTimelineListFromJson(json);
}
