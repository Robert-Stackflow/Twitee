// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'timeline_v.dart';

part 'tweet_favoriters_response_data.g.dart';

@JsonSerializable()
class TweetFavoritersResponseData {
  const TweetFavoritersResponseData({
    required this.favoritersTimeline,
  });

  factory TweetFavoritersResponseData.fromJson(Map<String, Object?> json) =>
      _$TweetFavoritersResponseDataFromJson(json);

  @JsonKey(name: 'favoriters_timeline')
  final TimelineV? favoritersTimeline;

  Map<String, Object?> toJson() => _$TweetFavoritersResponseDataToJson(this);
}
