// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline_v.dart';

part 'tweet_retweeters_response_data.g.dart';

@JsonSerializable()
class TweetRetweetersResponseData  {
  const TweetRetweetersResponseData({
    required this.retweetersTimeline,
  });
  
  factory TweetRetweetersResponseData.fromJson(Map<String, Object?> json) => _$TweetRetweetersResponseDataFromJson(json);
  
  @JsonKey(name: 'retweeters_timeline')
  final TimelineV? retweetersTimeline;

  Map<String, Object?> toJson() => _$TweetRetweetersResponseDataToJson(this);
}
