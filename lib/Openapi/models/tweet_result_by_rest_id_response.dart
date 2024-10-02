// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_result_by_rest_id_data.dart';

part 'tweet_result_by_rest_id_response.freezed.dart';
part 'tweet_result_by_rest_id_response.g.dart';

@Freezed()
 class TweetResultByRestIdResponse with _$TweetResultByRestIdResponse {
  const factory TweetResultByRestIdResponse({
    required TweetResultByRestIdData data,
  }) = _TweetResultByRestIdResponse;
  
  factory TweetResultByRestIdResponse.fromJson(Map<String, Object?> json) => _$TweetResultByRestIdResponseFromJson(json);
}
