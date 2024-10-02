// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_detail_response_data.dart';

part 'tweet_detail_response.freezed.dart';
part 'tweet_detail_response.g.dart';

@Freezed()
class TweetDetailResponse with _$TweetDetailResponse {
  const factory TweetDetailResponse({
    required TweetDetailResponseData data,
  }) = _TweetDetailResponse;
  
  factory TweetDetailResponse.fromJson(Map<String, Object?> json) => _$TweetDetailResponseFromJson(json);
}
