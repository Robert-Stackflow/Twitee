// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_with_visibility_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetWithVisibilityResults _$TweetWithVisibilityResultsFromJson(
        Map<String, dynamic> json) =>
    TweetWithVisibilityResults(
      privateTypename: json['__typename'] == null
          ? null
          : TypeName.fromJson(json['__typename'] as String),
      limitedActionResults: json['limitedActionResults'],
      mediaVisibilityResults: json['mediaVisibilityResults'] == null
          ? null
          : MediaVisibilityResults.fromJson(
              json['mediaVisibilityResults'] as Map<String, dynamic>),
      tweet: Tweet.fromJson(json['tweet'] as Map<String, dynamic>),
      tweetInterstitial: json['tweetInterstitial'] == null
          ? null
          : TweetInterstitial.fromJson(
              json['tweetInterstitial'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TweetWithVisibilityResultsToJson(
        TweetWithVisibilityResults instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename],
      'limitedActionResults': instance.limitedActionResults,
      'mediaVisibilityResults': instance.mediaVisibilityResults,
      'tweet': instance.tweet,
      'tweetInterstitial': instance.tweetInterstitial,
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
