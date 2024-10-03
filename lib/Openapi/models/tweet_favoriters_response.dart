// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_favoriters_response_data.dart';

part 'tweet_favoriters_response.g.dart';

@JsonSerializable()
class TweetFavoritersResponse  {
  const TweetFavoritersResponse({
    required this.data,
  });
  
  factory TweetFavoritersResponse.fromJson(Map<String, Object?> json) => _$TweetFavoritersResponseFromJson(json);
  
  final TweetFavoritersResponseData data;

  Map<String, Object?> toJson() => _$TweetFavoritersResponseToJson(this);
}
