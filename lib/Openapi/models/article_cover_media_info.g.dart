// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_cover_media_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleCoverMediaInfoImpl _$$ArticleCoverMediaInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleCoverMediaInfoImpl(
      privateTypename: TypeName.fromJson(json['__typename'] as String),
      colorInfo: ArticleCoverMediaColorInfo.fromJson(
          json['color_info'] as Map<String, dynamic>),
      originalImgHeight: (json['original_img_height'] as num).toInt(),
      originalImgUrl: json['original_img_url'] as String,
      originalImgWidth: (json['original_img_width'] as num).toInt(),
    );

Map<String, dynamic> _$$ArticleCoverMediaInfoImplToJson(
        _$ArticleCoverMediaInfoImpl instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename]!,
      'color_info': instance.colorInfo,
      'original_img_height': instance.originalImgHeight,
      'original_img_url': instance.originalImgUrl,
      'original_img_width': instance.originalImgWidth,
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
