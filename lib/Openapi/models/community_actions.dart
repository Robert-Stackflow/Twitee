// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'community_delete_action_result.dart';
import 'community_join_action_result.dart';
import 'community_leave_action_result.dart';
import 'community_pin_action_result.dart';

part 'community_actions.g.dart';

@JsonSerializable()
class CommunityActions  {
  const CommunityActions({
    required this.deleteActionResult,
    required this.joinActionResult,
    required this.leaveActionResult,
    required this.pinActionResult,
  });
  
  factory CommunityActions.fromJson(Map<String, Object?> json) => _$CommunityActionsFromJson(json);
  
  @JsonKey(name: 'delete_action_result')
  final CommunityDeleteActionResult? deleteActionResult;
  @JsonKey(name: 'join_action_result')
  final CommunityJoinActionResult? joinActionResult;
  @JsonKey(name: 'leave_action_result')
  final CommunityLeaveActionResult? leaveActionResult;
  @JsonKey(name: 'pin_action_result')
  final CommunityPinActionResult? pinActionResult;

  Map<String, Object?> toJson() => _$CommunityActionsToJson(this);
}
