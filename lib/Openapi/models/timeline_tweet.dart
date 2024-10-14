// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'content_item_type.dart';
import 'highlight.dart';
import 'item_content_union.dart';
import 'item_result.dart';
import 'social_context_union.dart';
import 'timeline_tweet_tweet_display_type.dart';
import 'type_name.dart';

part 'timeline_tweet.g.dart';

@JsonSerializable()
class TimelineTweet extends ItemContentUnion {
  const TimelineTweet({
    required this.privateTypename,
    required this.highlights,
    required this.itemType,
    required this.promotedMetadata,
    required this.socialContext,
    required this.tweetDisplayType,
    required this.tweetResults,
  });

  factory TimelineTweet.fromJson(Map<String, Object?> json) =>
      _$TimelineTweetFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final Highlight? highlights;
  final ContentItemType itemType;
  final dynamic promotedMetadata;
  final SocialContextUnion? socialContext;
  final TimelineTweetTweetDisplayType tweetDisplayType;
  @JsonKey(name: 'tweet_results')
  final ItemResult? tweetResults;

  Map<String, Object?> toJson() => _$TimelineTweetToJson(this);
}
