// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';
import 'user_highlights_tweets_timeline.dart';

part 'user_highlights_tweets_result.freezed.dart';
part 'user_highlights_tweets_result.g.dart';

@Freezed()
class UserHighlightsTweetsResult with _$UserHighlightsTweetsResult {
  const factory UserHighlightsTweetsResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required UserHighlightsTweetsTimeline timeline,
  }) = _UserHighlightsTweetsResult;
  
  factory UserHighlightsTweetsResult.fromJson(Map<String, Object?> json) => _$UserHighlightsTweetsResultFromJson(json);
}
