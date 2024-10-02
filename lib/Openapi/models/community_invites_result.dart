// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'community_invites_result_reason.dart';
import 'type_name.dart';

part 'community_invites_result.freezed.dart';
part 'community_invites_result.g.dart';

@Freezed()
class CommunityInvitesResult with _$CommunityInvitesResult {
  const factory CommunityInvitesResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required String message,
    required CommunityInvitesResultReason reason,
  }) = _CommunityInvitesResult;
  
  factory CommunityInvitesResult.fromJson(Map<String, Object?> json) => _$CommunityInvitesResultFromJson(json);
}
