// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet.dart';

part 'create_tweet.freezed.dart';
part 'create_tweet.g.dart';

@Freezed()
class CreateTweet with _$CreateTweet {
  const factory CreateTweet({
    required Tweet result,
  }) = _CreateTweet;
  
  factory CreateTweet.fromJson(Map<String, Object?> json) => _$CreateTweetFromJson(json);
}
