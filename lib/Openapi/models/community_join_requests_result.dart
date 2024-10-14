// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'type_name.dart';

part 'community_join_requests_result.g.dart';

@JsonSerializable()
class CommunityJoinRequestsResult {
  const CommunityJoinRequestsResult({
    required this.privateTypename,
  });

  factory CommunityJoinRequestsResult.fromJson(Map<String, Object?> json) =>
      _$CommunityJoinRequestsResultFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;

  Map<String, Object?> toJson() => _$CommunityJoinRequestsResultToJson(this);
}
