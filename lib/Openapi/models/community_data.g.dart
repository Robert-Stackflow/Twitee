// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityDataImpl _$$CommunityDataImplFromJson(Map<String, dynamic> json) =>
    _$CommunityDataImpl(
      privateTypename: TypeName.fromJson(json['__typename'] as String),
      actions:
          CommunityActions.fromJson(json['actions'] as Map<String, dynamic>),
      adminResults:
          UserResults.fromJson(json['admin_results'] as Map<String, dynamic>),
      createdAt: (json['created_at'] as num).toInt(),
      creatorResults:
          UserResults.fromJson(json['creator_results'] as Map<String, dynamic>),
      customBannerMedia: json['custom_banner_media'],
      defaultBannerMedia: json['default_banner_media'],
      description: json['description'] as String,
      idStr: json['id_str'] as String,
      invitesPolicy:
          CommunityDataInvitesPolicy.fromJson(json['invites_policy'] as String),
      invitesResult: CommunityInvitesResult.fromJson(
          json['invites_result'] as Map<String, dynamic>),
      isPinned: json['is_pinned'] as bool,
      joinPolicy:
          CommunityDataJoinPolicy.fromJson(json['join_policy'] as String),
      joinRequestsResult: CommunityJoinRequestsResult.fromJson(
          json['join_requests_result'] as Map<String, dynamic>),
      memberCount: (json['member_count'] as num).toInt(),
      membersFacepileResults:
          (json['members_facepile_results'] as List<dynamic>)
              .map((e) => UserResults.fromJson(e as Map<String, dynamic>))
              .toList(),
      moderatorCount: (json['moderator_count'] as num).toInt(),
      name: json['name'] as String,
      primaryCommunityTopic: PrimaryCommunityTopic.fromJson(
          json['primary_community_topic'] as Map<String, dynamic>),
      question: json['question'] as String,
      role: CommunityDataRole.fromJson(json['role'] as String),
      rules: (json['rules'] as List<dynamic>)
          .map((e) => CommunityRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchTags: (json['search_tags'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      showOnlyUsersToDisplay:
          (json['show_only_users_to_display'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      urls: CommunityUrls.fromJson(json['urls'] as Map<String, dynamic>),
      viewerRelationship: json['viewer_relationship'],
    );

Map<String, dynamic> _$$CommunityDataImplToJson(_$CommunityDataImpl instance) =>
    <String, dynamic>{
      '__typename': _$TypeNameEnumMap[instance.privateTypename]!,
      'actions': instance.actions,
      'admin_results': instance.adminResults,
      'created_at': instance.createdAt,
      'creator_results': instance.creatorResults,
      'custom_banner_media': instance.customBannerMedia,
      'default_banner_media': instance.defaultBannerMedia,
      'description': instance.description,
      'id_str': instance.idStr,
      'invites_policy':
          _$CommunityDataInvitesPolicyEnumMap[instance.invitesPolicy]!,
      'invites_result': instance.invitesResult,
      'is_pinned': instance.isPinned,
      'join_policy': _$CommunityDataJoinPolicyEnumMap[instance.joinPolicy]!,
      'join_requests_result': instance.joinRequestsResult,
      'member_count': instance.memberCount,
      'members_facepile_results': instance.membersFacepileResults,
      'moderator_count': instance.moderatorCount,
      'name': instance.name,
      'primary_community_topic': instance.primaryCommunityTopic,
      'question': instance.question,
      'role': _$CommunityDataRoleEnumMap[instance.role]!,
      'rules': instance.rules,
      'search_tags': instance.searchTags,
      'show_only_users_to_display': instance.showOnlyUsersToDisplay,
      'urls': instance.urls,
      'viewer_relationship': instance.viewerRelationship,
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

const _$CommunityDataInvitesPolicyEnumMap = {
  CommunityDataInvitesPolicy.memberInvitesAllowed: 'MemberInvitesAllowed',
  CommunityDataInvitesPolicy.$unknown: r'$unknown',
};

const _$CommunityDataJoinPolicyEnumMap = {
  CommunityDataJoinPolicy.open: 'Open',
  CommunityDataJoinPolicy.$unknown: r'$unknown',
};

const _$CommunityDataRoleEnumMap = {
  CommunityDataRole.nonMember: 'NonMember',
  CommunityDataRole.$unknown: r'$unknown',
};
