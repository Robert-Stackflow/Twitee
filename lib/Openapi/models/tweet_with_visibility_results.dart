// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'media_visibility_results.dart';
import 'tweet.dart';
import 'tweet_interstitial.dart';
import 'tweet_union.dart';
import 'type_name.dart';

part 'tweet_with_visibility_results.g.dart';

@JsonSerializable()
class TweetWithVisibilityResults extends TweetUnion {
  const TweetWithVisibilityResults({
    required this.privateTypename,
    required this.limitedActionResults,
    required this.mediaVisibilityResults,
    required this.tweet,
    required this.tweetInterstitial,
  });

  factory TweetWithVisibilityResults.fromJson(Map<String, Object?> json) =>
      _$TweetWithVisibilityResultsFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final dynamic limitedActionResults;
  final MediaVisibilityResults? mediaVisibilityResults;
  final Tweet tweet;
  final TweetInterstitial? tweetInterstitial;

  Map<String, Object?> toJson() => _$TweetWithVisibilityResultsToJson(this);
}
