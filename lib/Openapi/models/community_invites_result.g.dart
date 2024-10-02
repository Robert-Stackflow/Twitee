// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_invites_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityInvitesResultImpl _$$CommunityInvitesResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CommunityInvitesResultImpl(
      privateTypename: TypeName.fromJson(json['__typename'] as String),
      message: json['message'] as String,
      reason: CommunityInvitesResultReason.fromJson(json['reason'] as String),
    );

Map<String, dynamic> _$$CommunityInvitesResultImplToJson(
        _$CommunityInvitesResultImpl instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename]!,
      'message': instance.message,
      'reason': _$CommunityInvitesResultReasonEnumMap[instance.reason]!,
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

const _$CommunityInvitesResultReasonEnumMap = {
  CommunityInvitesResultReason.unavailable: 'Unavailable',
  CommunityInvitesResultReason.$unknown: r'$unknown',
};
