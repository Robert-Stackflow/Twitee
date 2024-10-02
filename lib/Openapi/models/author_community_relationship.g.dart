// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_community_relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorCommunityRelationshipImpl _$$AuthorCommunityRelationshipImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthorCommunityRelationshipImpl(
      communityResults:
          Community.fromJson(json['community_results'] as Map<String, dynamic>),
      role: AuthorCommunityRelationshipRole.fromJson(json['role'] as String),
      userResults:
          UserResults.fromJson(json['user_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthorCommunityRelationshipImplToJson(
        _$AuthorCommunityRelationshipImpl instance) =>
    <String, dynamic>{
      'community_results': instance.communityResults,
      'role': _$AuthorCommunityRelationshipRoleEnumMap[instance.role]!,
      'user_results': instance.userResults,
    };

const _$AuthorCommunityRelationshipRoleEnumMap = {
  AuthorCommunityRelationshipRole.member: 'Member',
  AuthorCommunityRelationshipRole.$unknown: r'$unknown',
};
