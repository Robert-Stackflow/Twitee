// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline.dart';

part 'user_highlights_tweets_timeline.g.dart';

@JsonSerializable()
class UserHighlightsTweetsTimeline {
  const UserHighlightsTweetsTimeline({
    required this.timeline,
  });

  factory UserHighlightsTweetsTimeline.fromJson(Map<String, Object?> json) =>
      _$UserHighlightsTweetsTimelineFromJson(json);

  final Timeline timeline;

  Map<String, Object?> toJson() => _$UserHighlightsTweetsTimelineToJson(this);
}
