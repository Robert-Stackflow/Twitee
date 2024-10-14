// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'type_name.dart';
import 'user_highlights_tweets_timeline.dart';

part 'user_highlights_tweets_result.g.dart';

@JsonSerializable()
class UserHighlightsTweetsResult {
  const UserHighlightsTweetsResult({
    required this.privateTypename,
    required this.timeline,
  });

  factory UserHighlightsTweetsResult.fromJson(Map<String, Object?> json) =>
      _$UserHighlightsTweetsResultFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final UserHighlightsTweetsTimeline timeline;

  Map<String, Object?> toJson() => _$UserHighlightsTweetsResultToJson(this);
}
