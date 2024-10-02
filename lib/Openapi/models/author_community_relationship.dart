// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'author_community_relationship_role.dart';
import 'community.dart';
import 'user_results.dart';

part 'author_community_relationship.freezed.dart';
part 'author_community_relationship.g.dart';

@Freezed()
 class AuthorCommunityRelationship with _$AuthorCommunityRelationship {
  const factory AuthorCommunityRelationship({
    @JsonKey(name: 'community_results')
    required Community communityResults,
    required AuthorCommunityRelationshipRole role,
    @JsonKey(name: 'user_results')
    required UserResults userResults,
  }) = _AuthorCommunityRelationship;
  
  factory AuthorCommunityRelationship.fromJson(Map<String, Object?> json) => _$AuthorCommunityRelationshipFromJson(json);
}
