// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'item_result.dart';

part 'tweet_result_by_rest_id_data.g.dart';

@JsonSerializable()
class TweetResultByRestIdData  {
  const TweetResultByRestIdData({
    required this.tweetResult,
  });
  
  factory TweetResultByRestIdData.fromJson(Map<String, Object?> json) => _$TweetResultByRestIdDataFromJson(json);
  
  final ItemResult tweetResult;

  Map<String, Object?> toJson() => _$TweetResultByRestIdDataToJson(this);
}
