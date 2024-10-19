// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tweets_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTweetsResult _$UserTweetsResultFromJson(Map<String, dynamic> json) =>
    UserTweetsResult(
      privateTypename: json['__typename'] == null
          ? null
          : TypeName.fromJson(json['__typename'] as String),
      timelineV2: json['timeline_v2'] == null
          ? null
          : TimelineV.fromJson(json['timeline_v2'] as Map<String, dynamic>),
      timeline: json['timeline'] == null
          ? null
          : TimelineV.fromJson(json['timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserTweetsResultToJson(UserTweetsResult instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename],
      'timeline_v2': instance.timelineV2,
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
