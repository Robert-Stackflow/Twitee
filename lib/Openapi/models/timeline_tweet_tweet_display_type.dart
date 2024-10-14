// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum TimelineTweetTweetDisplayType {
  @JsonValue('Tweet')
  tweet('Tweet'),
  @JsonValue('SelfThread')
  selfThread('SelfThread'),
  @JsonValue('MediaGrid')
  mediaGrid('MediaGrid'),
  @JsonValue('CondensedTweet')
  condensedTweet('CondensedTweet'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const TimelineTweetTweetDisplayType(this.json);

  factory TimelineTweetTweetDisplayType.fromJson(String json) =>
      values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
