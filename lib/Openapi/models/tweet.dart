// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';
import 'package:twitee/Models/translation_result.dart';

import 'article.dart';
import 'author_community_relationship.dart';
import 'birdwatch_pivot.dart';
import 'community.dart';
import 'item_result.dart';
import 'note_tweet.dart';
import 'quoted_ref_result.dart';
import 'super_follows_reply_user_result.dart';
import 'tweet_card.dart';
import 'tweet_edit_control.dart';
import 'tweet_edit_prespective.dart';
import 'tweet_legacy.dart';
import 'tweet_previous_counts.dart';
import 'tweet_union.dart';
import 'tweet_view.dart';
import 'type_name.dart';
import 'unified_card.dart';
import 'user_result_core.dart';

part 'tweet.g.dart';

@JsonSerializable()
class Tweet extends TweetUnion {
  Tweet({
    this.translation = null,
    this.isTranslating = false,
    required this.privateTypename,
    required this.article,
    required this.authorCommunityRelationship,
    required this.birdwatchPivot,
    required this.card,
    required this.communityResults,
    required this.core,
    required this.editControl,
    required this.editPrespective,
    required this.hasBirdwatchNotes,
    required this.isTranslatable,
    required this.legacy,
    required this.noteTweet,
    required this.previousCounts,
    required this.quickPromoteEligibility,
    required this.quotedRefResult,
    required this.quotedStatusResult,
    required this.restId,
    required this.source,
    required this.superFollowsReplyUserResult,
    required this.unifiedCard,
    required this.unmentionData,
    required this.views,
  });

  factory Tweet.fromJson(Map<String, Object?> json) => _$TweetFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final Article? article;
  @JsonKey(name: 'author_community_relationship')
  final AuthorCommunityRelationship? authorCommunityRelationship;
  @JsonKey(name: 'birdwatch_pivot')
  final BirdwatchPivot? birdwatchPivot;
  final TweetCard? card;
  @JsonKey(name: 'community_results')
  final Community? communityResults;
  final UserResultCore? core;
  @JsonKey(name: 'edit_control')
  final TweetEditControl? editControl;
  @JsonKey(name: 'edit_prespective')
  final TweetEditPrespective? editPrespective;
  @JsonKey(name: 'has_birdwatch_notes')
  final bool? hasBirdwatchNotes;
  @JsonKey(name: 'is_translatable')
  final bool? isTranslatable;
  final TweetLegacy? legacy;
  @JsonKey(name: 'note_tweet')
  final NoteTweet? noteTweet;
  @JsonKey(name: 'previous_counts')
  final TweetPreviousCounts? previousCounts;
  @JsonKey(name: 'quick_promote_eligibility')
  final dynamic quickPromoteEligibility;
  final QuotedRefResult? quotedRefResult;
  @JsonKey(name: 'quoted_status_result')
  final ItemResult? quotedStatusResult;
  @JsonKey(name: 'rest_id')
  final String? restId;
  final String? source;
  final SuperFollowsReplyUserResult? superFollowsReplyUserResult;
  @JsonKey(name: 'unified_card')
  final UnifiedCard? unifiedCard;
  @JsonKey(name: 'unmention_data')
  final dynamic unmentionData;
  final TweetView? views;
  TranslationResult? translation;
  bool isTranslating;

  Map<String, Object?> toJson() => _$TweetToJson(this);
}
