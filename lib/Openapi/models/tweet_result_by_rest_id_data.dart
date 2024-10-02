// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_result.dart';

part 'tweet_result_by_rest_id_data.freezed.dart';
part 'tweet_result_by_rest_id_data.g.dart';

@Freezed()
 class TweetResultByRestIdData with _$TweetResultByRestIdData {
  const factory TweetResultByRestIdData({
    required ItemResult tweetResult,
  }) = _TweetResultByRestIdData;
  
  factory TweetResultByRestIdData.fromJson(Map<String, Object?> json) => _$TweetResultByRestIdDataFromJson(json);
}
