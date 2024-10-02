// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

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

part 'community_data.freezed.dart';
part 'community_data.g.dart';

@Freezed()
class CommunityData with _$CommunityData {
  const factory CommunityData({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required CommunityActions actions,
    @JsonKey(name: 'admin_results')
    required UserResults adminResults,
    @JsonKey(name: 'created_at')
    required int createdAt,
    @JsonKey(name: 'creator_results')
    required UserResults creatorResults,
    @JsonKey(name: 'custom_banner_media')
    required dynamic customBannerMedia,
    @JsonKey(name: 'default_banner_media')
    required dynamic defaultBannerMedia,
    required String description,
    @JsonKey(name: 'id_str')
    required String idStr,
    @JsonKey(name: 'invites_policy')
    required CommunityDataInvitesPolicy invitesPolicy,
    @JsonKey(name: 'invites_result')
    required CommunityInvitesResult invitesResult,
    @JsonKey(name: 'is_pinned')
    required bool isPinned,
    @JsonKey(name: 'join_policy')
    required CommunityDataJoinPolicy joinPolicy,
    @JsonKey(name: 'join_requests_result')
    required CommunityJoinRequestsResult joinRequestsResult,
    @JsonKey(name: 'member_count')
    required int memberCount,
    @JsonKey(name: 'members_facepile_results')
    required List<UserResults> membersFacepileResults,
    @JsonKey(name: 'moderator_count')
    required int moderatorCount,
    required String name,
    @JsonKey(name: 'primary_community_topic')
    required PrimaryCommunityTopic primaryCommunityTopic,
    required String question,
    required CommunityDataRole role,
    required List<CommunityRule> rules,
    @JsonKey(name: 'search_tags')
    required List<String> searchTags,
    @JsonKey(name: 'show_only_users_to_display')
    required List<String> showOnlyUsersToDisplay,
    required CommunityUrls urls,
    @JsonKey(name: 'viewer_relationship')
    required dynamic viewerRelationship,
  }) = _CommunityData;
  
  factory CommunityData.fromJson(Map<String, Object?> json) => _$CommunityDataFromJson(json);
}
