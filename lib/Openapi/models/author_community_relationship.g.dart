// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_community_relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorCommunityRelationship _$AuthorCommunityRelationshipFromJson(
        Map<String, dynamic> json) =>
    AuthorCommunityRelationship(
      communityResults: json['community_results'] == null
          ? null
          : Community.fromJson(
              json['community_results'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : AuthorCommunityRelationshipRole.fromJson(json['role'] as String),
      userResults: json['user_results'] == null
          ? null
          : UserResults.fromJson(json['user_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthorCommunityRelationshipToJson(
        AuthorCommunityRelationship instance) =>
    <String, dynamic>{
      'community_results': instance.communityResults,
      'role': _$AuthorCommunityRelationshipRoleEnumMap[instance.role],
      'user_results': instance.userResults,
    };

const _$AuthorCommunityRelationshipRoleEnumMap = {
  AuthorCommunityRelationshipRole.member: 'Member',
  AuthorCommunityRelationshipRole.$unknown: r'$unknown',
};
