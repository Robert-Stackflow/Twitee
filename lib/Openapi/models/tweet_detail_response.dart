// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_detail_response_data.dart';

part 'tweet_detail_response.g.dart';

@JsonSerializable()
class TweetDetailResponse {
  const TweetDetailResponse({
    required this.data,
  });

  factory TweetDetailResponse.fromJson(Map<String, Object?> json) =>
      _$TweetDetailResponseFromJson(json);

  final TweetDetailResponseData data;

  Map<String, Object?> toJson() => _$TweetDetailResponseToJson(this);
}
