// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

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
import 'tweet_view.dart';
import 'type_name.dart';
import 'unified_card.dart';
import 'user_result_core.dart';

part 'tweet.freezed.dart';
part 'tweet.g.dart';

@Freezed()
class Tweet with _$Tweet {
  const factory Tweet({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required Article article,
    @JsonKey(name: 'author_community_relationship')
    required AuthorCommunityRelationship authorCommunityRelationship,
    @JsonKey(name: 'birdwatch_pivot')
    required BirdwatchPivot birdwatchPivot,
    required TweetCard card,
    @JsonKey(name: 'community_results')
    required Community communityResults,
    required UserResultCore core,
    @JsonKey(name: 'edit_control')
    required TweetEditControl editControl,
    @JsonKey(name: 'edit_prespective')
    required TweetEditPrespective editPrespective,
    @JsonKey(name: 'has_birdwatch_notes')
    required bool hasBirdwatchNotes,
    @JsonKey(name: 'is_translatable')
    required bool isTranslatable,
    required TweetLegacy legacy,
    @JsonKey(name: 'note_tweet')
    required NoteTweet noteTweet,
    @JsonKey(name: 'previous_counts')
    required TweetPreviousCounts previousCounts,
    @JsonKey(name: 'quick_promote_eligibility')
    required dynamic quickPromoteEligibility,
    required QuotedRefResult quotedRefResult,
    @JsonKey(name: 'quoted_status_result')
    required ItemResult quotedStatusResult,
    @JsonKey(name: 'rest_id')
    required String restId,
    required String source,
    required SuperFollowsReplyUserResult superFollowsReplyUserResult,
    @JsonKey(name: 'unified_card')
    required UnifiedCard unifiedCard,
    @JsonKey(name: 'unmention_data')
    required dynamic unmentionData,
    required TweetView views,
  }) = _Tweet;
  
  factory Tweet.fromJson(Map<String, Object?> json) => _$TweetFromJson(json);
}
