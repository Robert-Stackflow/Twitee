// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'community_invites_result_reason.dart';
import 'type_name.dart';

part 'community_invites_result.g.dart';

@JsonSerializable()
class CommunityInvitesResult  {
  const CommunityInvitesResult({
    required this.privateTypename,
    required this.message,
    required this.reason,
  });
  
  factory CommunityInvitesResult.fromJson(Map<String, Object?> json) => _$CommunityInvitesResultFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final String message;
  final CommunityInvitesResultReason reason;

  Map<String, Object?> toJson() => _$CommunityInvitesResultToJson(this);
}
