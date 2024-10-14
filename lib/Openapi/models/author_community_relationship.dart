// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'author_community_relationship_role.dart';
import 'community.dart';
import 'user_results.dart';

part 'author_community_relationship.g.dart';

@JsonSerializable()
class AuthorCommunityRelationship {
  const AuthorCommunityRelationship({
    required this.communityResults,
    required this.role,
    required this.userResults,
  });

  factory AuthorCommunityRelationship.fromJson(Map<String, Object?> json) =>
      _$AuthorCommunityRelationshipFromJson(json);

  @JsonKey(name: 'community_results')
  final Community? communityResults;
  final AuthorCommunityRelationshipRole? role;
  @JsonKey(name: 'user_results')
  final UserResults? userResults;

  Map<String, Object?> toJson() => _$AuthorCommunityRelationshipToJson(this);
}
