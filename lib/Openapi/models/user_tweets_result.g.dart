// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tweets_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTweetsResultImpl _$$UserTweetsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$UserTweetsResultImpl(
      privateTypename: TypeName.fromJson(json['__typename'] as String),
      timelineV2:
          TimelineV.fromJson(json['timeline_v2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserTweetsResultImplToJson(
        _$UserTweetsResultImpl instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename]!,
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
