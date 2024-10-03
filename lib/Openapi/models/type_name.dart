// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum TypeName {
  @JsonValue('TimelineTweet')
  timelineTweet('TimelineTweet'),
  @JsonValue('TimelineTimelineItem')
  timelineTimelineItem('TimelineTimelineItem'),
  @JsonValue('TimelineUser')
  timelineUser('TimelineUser'),
  @JsonValue('TimelineTimelineCursor')
  timelineTimelineCursor('TimelineTimelineCursor'),
  @JsonValue('TweetWithVisibilityResults')
  tweetWithVisibilityResults('TweetWithVisibilityResults'),
  @JsonValue('ContextualTweetInterstitial')
  contextualTweetInterstitial('ContextualTweetInterstitial'),
  @JsonValue('TimelineTimelineModule')
  timelineTimelineModule('TimelineTimelineModule'),
  @JsonValue('TweetTombstone')
  tweetTombstone('TweetTombstone'),
  @JsonValue('TimelinePrompt')
  timelinePrompt('TimelinePrompt'),
  @JsonValue('TimelineMessagePrompt')
  timelineMessagePrompt('TimelineMessagePrompt'),
  @JsonValue('TimelineCommunity')
  timelineCommunity('TimelineCommunity'),
  @JsonValue('TweetUnavailable')
  tweetUnavailable('TweetUnavailable'),
  @JsonValue('Tweet')
  tweet('Tweet'),
  @JsonValue('User')
  user('User'),
  @JsonValue('UserUnavailable')
  userUnavailable('UserUnavailable'),
  @JsonValue('Community')
  community('Community'),
  @JsonValue('CommunityDeleteActionUnavailable')
  communityDeleteActionUnavailable('CommunityDeleteActionUnavailable'),
  @JsonValue('CommunityJoinAction')
  communityJoinAction('CommunityJoinAction'),
  @JsonValue('CommunityLeaveActionUnavailable')
  communityLeaveActionUnavailable('CommunityLeaveActionUnavailable'),
  @JsonValue('CommunityTweetPinActionUnavailable')
  communityTweetPinActionUnavailable('CommunityTweetPinActionUnavailable'),
  @JsonValue('CommunityInvitesUnavailable')
  communityInvitesUnavailable('CommunityInvitesUnavailable'),
  @JsonValue('CommunityJoinRequestsUnavailable')
  communityJoinRequestsUnavailable('CommunityJoinRequestsUnavailable'),
  @JsonValue('ApiImage')
  apiImage('ApiImage'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const TypeName(this.json);

  factory TypeName.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
