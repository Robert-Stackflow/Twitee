// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'content_item_type.dart';
import 'highlight.dart';
import 'item_result.dart';
import 'social_context_union.dart';
import 'timeline_tweet_tweet_display_type.dart';
import 'type_name.dart';

part 'timeline_tweet.freezed.dart';
part 'timeline_tweet.g.dart';

@Freezed()
class TimelineTweet with _$TimelineTweet {
  const factory TimelineTweet({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required Highlight highlights,
    required ContentItemType itemType,
    required dynamic promotedMetadata,
    required SocialContextUnion socialContext,
    required TimelineTweetTweetDisplayType tweetDisplayType,
    @JsonKey(name: 'tweet_results')
    required ItemResult tweetResults,
  }) = _TimelineTweet;
  
  factory TimelineTweet.fromJson(Map<String, Object?> json) => _$TimelineTweetFromJson(json);
}
