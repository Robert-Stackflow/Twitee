// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_previous_counts.freezed.dart';
part 'tweet_previous_counts.g.dart';

@Freezed()
 class TweetPreviousCounts with _$TweetPreviousCounts {
  const factory TweetPreviousCounts({
    @JsonKey(name: 'bookmark_count')
    required int bookmarkCount,
    @JsonKey(name: 'favorite_count')
    required int favoriteCount,
    @JsonKey(name: 'quote_count')
    required int quoteCount,
    @JsonKey(name: 'reply_count')
    required int replyCount,
    @JsonKey(name: 'retweet_count')
    required int retweetCount,
  }) = _TweetPreviousCounts;
  
  factory TweetPreviousCounts.fromJson(Map<String, Object?> json) => _$TweetPreviousCountsFromJson(json);
}
