// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_favoriters_response_data.dart';

part 'tweet_favoriters_response.freezed.dart';
part 'tweet_favoriters_response.g.dart';

@Freezed()
 class TweetFavoritersResponse with _$TweetFavoritersResponse {
  const factory TweetFavoritersResponse({
    required TweetFavoritersResponseData data,
  }) = _TweetFavoritersResponse;
  
  factory TweetFavoritersResponse.fromJson(Map<String, Object?> json) => _$TweetFavoritersResponseFromJson(json);
}
