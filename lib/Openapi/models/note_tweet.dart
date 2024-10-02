// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'note_tweet_result.dart';

part 'note_tweet.freezed.dart';
part 'note_tweet.g.dart';

@Freezed()
 class NoteTweet with _$NoteTweet {
  const factory NoteTweet({
    @JsonKey(name: 'is_expandable')
    required bool isExpandable,
    @JsonKey(name: 'note_tweet_results')
    required NoteTweetResult noteTweetResults,
  }) = _NoteTweet;
  
  factory NoteTweet.fromJson(Map<String, Object?> json) => _$NoteTweetFromJson(json);
}
