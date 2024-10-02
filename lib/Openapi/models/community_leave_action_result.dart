// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'community_leave_action_result_reason.dart';
import 'type_name.dart';

part 'community_leave_action_result.freezed.dart';
part 'community_leave_action_result.g.dart';

@Freezed()
class CommunityLeaveActionResult with _$CommunityLeaveActionResult {
  const factory CommunityLeaveActionResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required String message,
    required CommunityLeaveActionResultReason reason,
  }) = _CommunityLeaveActionResult;
  
  factory CommunityLeaveActionResult.fromJson(Map<String, Object?> json) => _$CommunityLeaveActionResultFromJson(json);
}
