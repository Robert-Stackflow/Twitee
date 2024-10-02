// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline_v.dart';
import 'type_name.dart';

part 'user_tweets_result.freezed.dart';
part 'user_tweets_result.g.dart';

@Freezed()
class UserTweetsResult with _$UserTweetsResult {
  const factory UserTweetsResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    @JsonKey(name: 'timeline_v2')
    required TimelineV timelineV2,
  }) = _UserTweetsResult;
  
  factory UserTweetsResult.fromJson(Map<String, Object?> json) => _$UserTweetsResultFromJson(json);
}
