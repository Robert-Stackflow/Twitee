// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineTweetImpl _$$TimelineTweetImplFromJson(Map<String, dynamic> json) =>
    _$TimelineTweetImpl(
      privateTypename: TypeName.fromJson(json['__typename'] as String),
      highlights:
          Highlight.fromJson(json['highlights'] as Map<String, dynamic>),
      itemType: ContentItemType.fromJson(json['itemType'] as String),
      promotedMetadata: json['promotedMetadata'],
      socialContext: SocialContextUnion.fromJson(
          json['socialContext'] as Map<String, dynamic>),
      tweetDisplayType: TimelineTweetTweetDisplayType.fromJson(
          json['tweetDisplayType'] as String),
      tweetResults:
          ItemResult.fromJson(json['tweet_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TimelineTweetImplToJson(_$TimelineTweetImpl instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename]!,
      'highlights': instance.highlights,
      'itemType': _$ContentItemTypeEnumMap[instance.itemType]!,
      'promotedMetadata': instance.promotedMetadata,
      'socialContext': instance.socialContext,
      'tweetDisplayType':
          _$TimelineTweetTweetDisplayTypeEnumMap[instance.tweetDisplayType]!,
      'tweet_results': instance.tweetResults,
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

const _$ContentItemTypeEnumMap = {
  ContentItemType.timelineTweet: 'TimelineTweet',
  ContentItemType.timelineTimelineCursor: 'TimelineTimelineCursor',
  ContentItemType.timelineUser: 'TimelineUser',
  ContentItemType.timelinePrompt: 'TimelinePrompt',
  ContentItemType.timelineMessagePrompt: 'TimelineMessagePrompt',
  ContentItemType.timelineCommunity: 'TimelineCommunity',
  ContentItemType.$unknown: r'$unknown',
};

const _$TimelineTweetTweetDisplayTypeEnumMap = {
  TimelineTweetTweetDisplayType.tweet: 'Tweet',
  TimelineTweetTweetDisplayType.selfThread: 'SelfThread',
  TimelineTweetTweetDisplayType.mediaGrid: 'MediaGrid',
  TimelineTweetTweetDisplayType.condensedTweet: 'CondensedTweet',
  TimelineTweetTweetDisplayType.$unknown: r'$unknown',
};
