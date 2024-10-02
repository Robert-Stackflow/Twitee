// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'note_tweet_result_data.dart';

part 'note_tweet_result.freezed.dart';
part 'note_tweet_result.g.dart';

@Freezed()
class NoteTweetResult with _$NoteTweetResult {
  const factory NoteTweetResult({
    required NoteTweetResultData result,
  }) = _NoteTweetResult;
  
  factory NoteTweetResult.fromJson(Map<String, Object?> json) => _$NoteTweetResultFromJson(json);
}
