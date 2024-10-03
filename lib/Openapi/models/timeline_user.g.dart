// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineUser _$TimelineUserFromJson(Map<String, dynamic> json) => TimelineUser(
      privateTypename: json['__typename'] == null
          ? null
          : TypeName.fromJson(json['__typename'] as String),
      itemType: ContentItemType.fromJson(json['itemType'] as String),
      socialContext: json['socialContext'] == null
          ? null
          : SocialContextUnion.fromJson(
              json['socialContext'] as Map<String, dynamic>),
      userDisplayType: TimelineUserUserDisplayType.fromJson(
          json['userDisplayType'] as String),
      userResults: json['user_results'] == null
          ? null
          : UserResults.fromJson(json['user_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimelineUserToJson(TimelineUser instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename],
      'itemType': _$ContentItemTypeEnumMap[instance.itemType]!,
      'socialContext': instance.socialContext,
      'userDisplayType':
          _$TimelineUserUserDisplayTypeEnumMap[instance.userDisplayType]!,
      'user_results': instance.userResults,
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

const _$TimelineUserUserDisplayTypeEnumMap = {
  TimelineUserUserDisplayType.user: 'User',
  TimelineUserUserDisplayType.userDetailed: 'UserDetailed',
  TimelineUserUserDisplayType.subscribableUser: 'SubscribableUser',
  TimelineUserUserDisplayType.$unknown: r'$unknown',
};
