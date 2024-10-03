// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_actions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityActions _$CommunityActionsFromJson(Map<String, dynamic> json) =>
    CommunityActions(
      deleteActionResult: json['delete_action_result'] == null
          ? null
          : CommunityDeleteActionResult.fromJson(
              json['delete_action_result'] as Map<String, dynamic>),
      joinActionResult: json['join_action_result'] == null
          ? null
          : CommunityJoinActionResult.fromJson(
              json['join_action_result'] as Map<String, dynamic>),
      leaveActionResult: json['leave_action_result'] == null
          ? null
          : CommunityLeaveActionResult.fromJson(
              json['leave_action_result'] as Map<String, dynamic>),
      pinActionResult: json['pin_action_result'] == null
          ? null
          : CommunityPinActionResult.fromJson(
              json['pin_action_result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommunityActionsToJson(CommunityActions instance) =>
    <String, dynamic>{
      'delete_action_result': instance.deleteActionResult,
      'join_action_result': instance.joinActionResult,
      'leave_action_result': instance.leaveActionResult,
      'pin_action_result': instance.pinActionResult,
    };
