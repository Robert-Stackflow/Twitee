// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_visibility_results.dart';
import 'tweet.dart';
import 'tweet_interstitial.dart';
import 'type_name.dart';

part 'tweet_with_visibility_results.freezed.dart';
part 'tweet_with_visibility_results.g.dart';

@Freezed()
class TweetWithVisibilityResults with _$TweetWithVisibilityResults {
  const factory TweetWithVisibilityResults({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required dynamic limitedActionResults,
    required MediaVisibilityResults mediaVisibilityResults,
    required Tweet tweet,
    required TweetInterstitial tweetInterstitial,
  }) = _TweetWithVisibilityResults;
  
  factory TweetWithVisibilityResults.fromJson(Map<String, Object?> json) => _$TweetWithVisibilityResultsFromJson(json);
}
