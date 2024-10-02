// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_result_by_screen_name_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResultByScreenNameResultImpl _$$UserResultByScreenNameResultImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResultByScreenNameResultImpl(
      privateTypename: TypeName.fromJson(json['__typename'] as String),
      id: json['id'] as String,
      legacy: UserResultByScreenNameLegacy.fromJson(
          json['legacy'] as Map<String, dynamic>),
      profilemodules: json['profilemodules'],
      restId: json['rest_id'] as String,
    );

Map<String, dynamic> _$$UserResultByScreenNameResultImplToJson(
        _$UserResultByScreenNameResultImpl instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename]!,
      'id': instance.id,
      'legacy': instance.legacy,
      'profilemodules': instance.profilemodules,
      'rest_id': instance.restId,
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
