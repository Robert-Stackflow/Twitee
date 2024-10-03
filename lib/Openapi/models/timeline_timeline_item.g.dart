// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_timeline_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineTimelineItem _$TimelineTimelineItemFromJson(
        Map<String, dynamic> json) =>
    TimelineTimelineItem(
      privateTypename: json['__typename'] == null
          ? null
          : TypeName.fromJson(json['__typename'] as String),
      clientEventInfo: json['clientEventInfo'] == null
          ? null
          : ClientEventInfo.fromJson(
              json['clientEventInfo'] as Map<String, dynamic>),
      entryType: ContentEntryType.fromJson(json['entryType'] as String),
      feedbackInfo: json['feedbackInfo'],
      itemContent: ItemContentUnion.fromJson(
          json['itemContent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimelineTimelineItemToJson(
        TimelineTimelineItem instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename],
      'clientEventInfo': instance.clientEventInfo,
      'entryType': _$ContentEntryTypeEnumMap[instance.entryType]!,
      'feedbackInfo': instance.feedbackInfo,
      'itemContent': instance.itemContent,
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

const _$ContentEntryTypeEnumMap = {
  ContentEntryType.timelineTimelineItem: 'TimelineTimelineItem',
  ContentEntryType.timelineTimelineCursor: 'TimelineTimelineCursor',
  ContentEntryType.timelineTimelineModule: 'TimelineTimelineModule',
  ContentEntryType.$unknown: r'$unknown',
};
