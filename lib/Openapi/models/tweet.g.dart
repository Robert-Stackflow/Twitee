// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetImpl _$$TweetImplFromJson(Map<String, dynamic> json) => _$TweetImpl(
      privateTypename: TypeName.fromJson(json['__typename'] as String),
      article: Article.fromJson(json['article'] as Map<String, dynamic>),
      authorCommunityRelationship: AuthorCommunityRelationship.fromJson(
          json['author_community_relationship'] as Map<String, dynamic>),
      birdwatchPivot: BirdwatchPivot.fromJson(
          json['birdwatch_pivot'] as Map<String, dynamic>),
      card: TweetCard.fromJson(json['card'] as Map<String, dynamic>),
      communityResults:
          Community.fromJson(json['community_results'] as Map<String, dynamic>),
      core: UserResultCore.fromJson(json['core'] as Map<String, dynamic>),
      editControl: TweetEditControl.fromJson(
          json['edit_control'] as Map<String, dynamic>),
      editPrespective: TweetEditPrespective.fromJson(
          json['edit_prespective'] as Map<String, dynamic>),
      hasBirdwatchNotes: json['has_birdwatch_notes'] as bool,
      isTranslatable: json['is_translatable'] as bool,
      legacy: TweetLegacy.fromJson(json['legacy'] as Map<String, dynamic>),
      noteTweet: NoteTweet.fromJson(json['note_tweet'] as Map<String, dynamic>),
      previousCounts: TweetPreviousCounts.fromJson(
          json['previous_counts'] as Map<String, dynamic>),
      quickPromoteEligibility: json['quick_promote_eligibility'],
      quotedRefResult: QuotedRefResult.fromJson(
          json['quotedRefResult'] as Map<String, dynamic>),
      quotedStatusResult: ItemResult.fromJson(
          json['quoted_status_result'] as Map<String, dynamic>),
      restId: json['rest_id'] as String,
      source: json['source'] as String,
      superFollowsReplyUserResult: SuperFollowsReplyUserResult.fromJson(
          json['superFollowsReplyUserResult'] as Map<String, dynamic>),
      unifiedCard:
          UnifiedCard.fromJson(json['unified_card'] as Map<String, dynamic>),
      unmentionData: json['unmention_data'],
      views: TweetView.fromJson(json['views'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TweetImplToJson(_$TweetImpl instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename]!,
      'article': instance.article,
      'author_community_relationship': instance.authorCommunityRelationship,
      'birdwatch_pivot': instance.birdwatchPivot,
      'card': instance.card,
      'community_results': instance.communityResults,
      'core': instance.core,
      'edit_control': instance.editControl,
      'edit_prespective': instance.editPrespective,
      'has_birdwatch_notes': instance.hasBirdwatchNotes,
      'is_translatable': instance.isTranslatable,
      'legacy': instance.legacy,
      'note_tweet': instance.noteTweet,
      'previous_counts': instance.previousCounts,
      'quick_promote_eligibility': instance.quickPromoteEligibility,
      'quotedRefResult': instance.quotedRefResult,
      'quoted_status_result': instance.quotedStatusResult,
      'rest_id': instance.restId,
      'source': instance.source,
      'superFollowsReplyUserResult': instance.superFollowsReplyUserResult,
      'unified_card': instance.unifiedCard,
      'unmention_data': instance.unmentionData,
      'views': instance.views,
    };

const _$TypeNameEnumMap = {
  TypeName.timelineTweet: 'TimelineTweet',
  TypeName.timelineTimelineItem: 'TimelineTimelineItem',
  TypeName.timelineUser: 'TimelineUser',
  TypeName.timelineTimelineCursor: 'TimelineTimelineCursor',
  TypeName.tweetWithVisibilityResults: 'TweetWithVisibilityResults',
  TypeName.contextualTweetInterstitial: 'ContextualTweetInterstitial',
  TypeName.timelineTimelineModule: 'TimelineTimelineModule',
  TypeName.tweetTombstone: 'TweetTombstone',
  TypeName.timelinePrompt: 'TimelinePrompt',
  TypeName.timelineMessagePrompt: 'TimelineMessagePrompt',
  TypeName.timelineCommunity: 'TimelineCommunity',
  TypeName.tweetUnavailable: 'TweetUnavailable',
  TypeName.tweet: 'Tweet',
  TypeName.user: 'User',
  TypeName.userUnavailable: 'UserUnavailable',
  TypeName.community: 'Community',
  TypeName.communityDeleteActionUnavailable: 'CommunityDeleteActionUnavailable',
  TypeName.communityJoinAction: 'CommunityJoinAction',
  TypeName.communityLeaveActionUnavailable: 'CommunityLeaveActionUnavailable',
  TypeName.communityTweetPinActionUnavailable:
      'CommunityTweetPinActionUnavailable',
  TypeName.communityInvitesUnavailable: 'CommunityInvitesUnavailable',
  TypeName.communityJoinRequestsUnavailable: 'CommunityJoinRequestsUnavailable',
  TypeName.apiImage: 'ApiImage',
  TypeName.$unknown: r'$unknown',
};
