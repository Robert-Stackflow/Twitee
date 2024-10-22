// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'article_cover_media.dart';
import 'article_cover_media_info.dart';
import 'community_actions.dart';
import 'community_data_invites_policy.dart';
import 'community_data_join_policy.dart';
import 'community_data_role.dart';
import 'community_invites_result.dart';
import 'community_join_requests_result.dart';
import 'community_rule.dart';
import 'community_urls.dart';
import 'primary_community_topic.dart';
import 'type_name.dart';
import 'user_results.dart';

part 'community_data.g.dart';

@JsonSerializable()
class CommunityData {
  const CommunityData({
    required this.privateTypename,
    required this.actions,
    required this.adminResults,
    required this.createdAt,
    required this.creatorResults,
    required this.customBannerMedia,
    required this.defaultBannerMedia,
    required this.description,
    required this.idStr,
    required this.invitesPolicy,
    required this.invitesResult,
    required this.isPinned,
    required this.joinPolicy,
    required this.joinRequestsResult,
    required this.memberCount,
    required this.membersFacepileResults,
    required this.moderatorCount,
    required this.name,
    required this.primaryCommunityTopic,
    required this.question,
    required this.role,
    required this.rules,
    required this.searchTags,
    required this.showOnlyUsersToDisplay,
    required this.urls,
    required this.viewerRelationship,
  });

  factory CommunityData.fromJson(Map<String, Object?> json) =>
      _$CommunityDataFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final CommunityActions actions;
  @JsonKey(name: 'admin_results')
  final UserResults? adminResults;
  @JsonKey(name: 'created_at')
  final int? createdAt;
  @JsonKey(name: 'creator_results')
  final UserResults? creatorResults;
  @JsonKey(name: 'custom_banner_media')
  final ArticleCoverMedia? customBannerMedia;
  @JsonKey(name: 'default_banner_media')
  final ArticleCoverMedia? defaultBannerMedia;
  final String description;
  @JsonKey(name: 'id_str')
  final String? idStr;
  @JsonKey(name: 'invites_policy')
  final CommunityDataInvitesPolicy? invitesPolicy;
  @JsonKey(name: 'invites_result')
  final CommunityInvitesResult? invitesResult;
  @JsonKey(name: 'is_pinned')
  final bool? isPinned;
  @JsonKey(name: 'join_policy')
  final CommunityDataJoinPolicy? joinPolicy;
  @JsonKey(name: 'join_requests_result')
  final CommunityJoinRequestsResult? joinRequestsResult;
  @JsonKey(name: 'member_count')
  final int? memberCount;
  @JsonKey(name: 'members_facepile_results')
  final List<UserResults?>? membersFacepileResults;
  @JsonKey(name: 'moderator_count')
  final int? moderatorCount;
  final String name;
  @JsonKey(name: 'primary_community_topic')
  final PrimaryCommunityTopic? primaryCommunityTopic;
  final String? question;
  final CommunityDataRole role;
  final List<CommunityRule> rules;
  @JsonKey(name: 'search_tags')
  final List<String?>? searchTags;
  @JsonKey(name: 'show_only_users_to_display')
  final List<String?>? showOnlyUsersToDisplay;
  final CommunityUrls? urls;
  @JsonKey(name: 'viewer_relationship')
  final dynamic viewerRelationship;

  Map<String, Object?> toJson() => _$CommunityDataToJson(this);
}
