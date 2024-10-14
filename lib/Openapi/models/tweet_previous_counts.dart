// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tweet_previous_counts.g.dart';

@JsonSerializable()
class TweetPreviousCounts {
  const TweetPreviousCounts({
    required this.bookmarkCount,
    required this.favoriteCount,
    required this.quoteCount,
    required this.replyCount,
    required this.retweetCount,
  });

  factory TweetPreviousCounts.fromJson(Map<String, Object?> json) =>
      _$TweetPreviousCountsFromJson(json);

  @JsonKey(name: 'bookmark_count')
  final int? bookmarkCount;
  @JsonKey(name: 'favorite_count')
  final int? favoriteCount;
  @JsonKey(name: 'quote_count')
  final int? quoteCount;
  @JsonKey(name: 'reply_count')
  final int? replyCount;
  @JsonKey(name: 'retweet_count')
  final int? retweetCount;

  Map<String, Object?> toJson() => _$TweetPreviousCountsToJson(this);
}
