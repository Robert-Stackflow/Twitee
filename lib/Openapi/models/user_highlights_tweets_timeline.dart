// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline.dart';

part 'user_highlights_tweets_timeline.freezed.dart';
part 'user_highlights_tweets_timeline.g.dart';

@Freezed()
class UserHighlightsTweetsTimeline with _$UserHighlightsTweetsTimeline {
  const factory UserHighlightsTweetsTimeline({
    required Timeline timeline,
  }) = _UserHighlightsTweetsTimeline;
  
  factory UserHighlightsTweetsTimeline.fromJson(Map<String, Object?> json) => _$UserHighlightsTweetsTimelineFromJson(json);
}
