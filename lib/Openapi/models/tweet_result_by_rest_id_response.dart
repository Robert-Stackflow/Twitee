// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_result_by_rest_id_data.dart';

part 'tweet_result_by_rest_id_response.g.dart';

@JsonSerializable()
class TweetResultByRestIdResponse  {
  const TweetResultByRestIdResponse({
    required this.data,
  });
  
  factory TweetResultByRestIdResponse.fromJson(Map<String, Object?> json) => _$TweetResultByRestIdResponseFromJson(json);
  
  final TweetResultByRestIdData data;

  Map<String, Object?> toJson() => _$TweetResultByRestIdResponseToJson(this);
}
