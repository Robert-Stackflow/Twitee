// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_delete_action_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityDeleteActionResultImpl _$$CommunityDeleteActionResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CommunityDeleteActionResultImpl(
      privateTypename: TypeName.fromJson(json['__typename'] as String),
      reason:
          CommunityDeleteActionResultReason.fromJson(json['reason'] as String),
    );

Map<String, dynamic> _$$CommunityDeleteActionResultImplToJson(
        _$CommunityDeleteActionResultImpl instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename]!,
      'reason': _$CommunityDeleteActionResultReasonEnumMap[instance.reason]!,
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

const _$CommunityDeleteActionResultReasonEnumMap = {
  CommunityDeleteActionResultReason.unavailable: 'Unavailable',
  CommunityDeleteActionResultReason.$unknown: r'$unknown',
};
