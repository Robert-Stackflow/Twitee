// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ContentItemType {
  @JsonValue('TimelineTweet')
  timelineTweet('TimelineTweet'),
  @JsonValue('TimelineTimelineCursor')
  timelineTimelineCursor('TimelineTimelineCursor'),
  @JsonValue('TimelineUser')
  timelineUser('TimelineUser'),
  @JsonValue('TimelinePrompt')
  timelinePrompt('TimelinePrompt'),
  @JsonValue('TimelineMessagePrompt')
  timelineMessagePrompt('TimelineMessagePrompt'),
  @JsonValue('TimelineCommunity')
  timelineCommunity('TimelineCommunity'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const ContentItemType(this.json);

  factory ContentItemType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
