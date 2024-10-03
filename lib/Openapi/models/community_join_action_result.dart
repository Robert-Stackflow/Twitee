// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'type_name.dart';

part 'community_join_action_result.g.dart';

@JsonSerializable()
class CommunityJoinActionResult  {
  const CommunityJoinActionResult({
    required this.privateTypename,
  });
  
  factory CommunityJoinActionResult.fromJson(Map<String, Object?> json) => _$CommunityJoinActionResultFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;

  Map<String, Object?> toJson() => _$CommunityJoinActionResultToJson(this);
}
