// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'community_delete_action_result_reason.dart';
import 'type_name.dart';

part 'community_delete_action_result.freezed.dart';
part 'community_delete_action_result.g.dart';

@Freezed()
class CommunityDeleteActionResult with _$CommunityDeleteActionResult {
  const factory CommunityDeleteActionResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required CommunityDeleteActionResultReason reason,
  }) = _CommunityDeleteActionResult;
  
  factory CommunityDeleteActionResult.fromJson(Map<String, Object?> json) => _$CommunityDeleteActionResultFromJson(json);
}
