// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline.dart';

part 'list_tweets_timeline.freezed.dart';
part 'list_tweets_timeline.g.dart';

@Freezed()
class ListTweetsTimeline with _$ListTweetsTimeline {
  const factory ListTweetsTimeline({
    required Timeline timeline,
  }) = _ListTweetsTimeline;
  
  factory ListTweetsTimeline.fromJson(Map<String, Object?> json) => _$ListTweetsTimelineFromJson(json);
}
