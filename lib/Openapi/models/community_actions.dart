// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'community_delete_action_result.dart';
import 'community_join_action_result.dart';
import 'community_leave_action_result.dart';
import 'community_pin_action_result.dart';

part 'community_actions.freezed.dart';
part 'community_actions.g.dart';

@Freezed()
 class CommunityActions with _$CommunityActions {
  const factory CommunityActions({
    @JsonKey(name: 'delete_action_result')
    required CommunityDeleteActionResult deleteActionResult,
    @JsonKey(name: 'join_action_result')
    required CommunityJoinActionResult joinActionResult,
    @JsonKey(name: 'leave_action_result')
    required CommunityLeaveActionResult leaveActionResult,
    @JsonKey(name: 'pin_action_result')
    required CommunityPinActionResult pinActionResult,
  }) = _CommunityActions;
  
  factory CommunityActions.fromJson(Map<String, Object?> json) => _$CommunityActionsFromJson(json);
}
