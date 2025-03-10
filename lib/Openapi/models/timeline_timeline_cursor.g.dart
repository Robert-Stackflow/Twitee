// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_timeline_cursor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineTimelineCursor _$TimelineTimelineCursorFromJson(
        Map<String, dynamic> json) =>
    TimelineTimelineCursor(
      privateTypename: json['__typename'] == null
          ? null
          : TypeName.fromJson(json['__typename'] as String),
      cursorType: CursorType.fromJson(json['cursorType'] as String),
      displayTreatment: json['displayTreatment'] == null
          ? null
          : DisplayTreatment.fromJson(
              json['displayTreatment'] as Map<String, dynamic>),
      entryType: json['entryType'] == null
          ? null
          : ContentEntryType.fromJson(json['entryType'] as String),
      itemType: json['itemType'] == null
          ? null
          : ContentEntryType.fromJson(json['itemType'] as String),
      stopOnEmptyResponse: json['stopOnEmptyResponse'] as bool?,
      value: json['value'] as String,
    );

Map<String, dynamic> _$TimelineTimelineCursorToJson(
        TimelineTimelineCursor instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename],
      'cursorType': _$CursorTypeEnumMap[instance.cursorType]!,
      'displayTreatment': instance.displayTreatment,
      'entryType': _$ContentEntryTypeEnumMap[instance.entryType],
      'itemType': _$ContentEntryTypeEnumMap[instance.itemType],
      'stopOnEmptyResponse': instance.stopOnEmptyResponse,
      'value': instance.value,
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

const _$CursorTypeEnumMap = {
  CursorType.top: 'Top',
  CursorType.bottom: 'Bottom',
  CursorType.showMore: 'ShowMore',
  CursorType.showMoreThreads: 'ShowMoreThreads',
  CursorType.gap: 'Gap',
  CursorType.$unknown: r'$unknown',
};

const _$ContentEntryTypeEnumMap = {
  ContentEntryType.timelineTimelineItem: 'TimelineTimelineItem',
  ContentEntryType.timelineTimelineCursor: 'TimelineTimelineCursor',
  ContentEntryType.timelineTimelineModule: 'TimelineTimelineModule',
  ContentEntryType.$unknown: r'$unknown',
};
