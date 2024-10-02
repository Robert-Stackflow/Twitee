// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'timeline_v.dart';

part 'tweet_favoriters_response_data.freezed.dart';
part 'tweet_favoriters_response_data.g.dart';

@Freezed()
class TweetFavoritersResponseData with _$TweetFavoritersResponseData {
  const factory TweetFavoritersResponseData({
    @JsonKey(name: 'favoriters_timeline')
    required TimelineV favoritersTimeline,
  }) = _TweetFavoritersResponseData;
  
  factory TweetFavoritersResponseData.fromJson(Map<String, Object?> json) => _$TweetFavoritersResponseDataFromJson(json);
}
