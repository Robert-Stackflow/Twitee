// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_actions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityActionsImpl _$$CommunityActionsImplFromJson(
        Map<String, dynamic> json) =>
    _$CommunityActionsImpl(
      deleteActionResult: CommunityDeleteActionResult.fromJson(
          json['delete_action_result'] as Map<String, dynamic>),
      joinActionResult: CommunityJoinActionResult.fromJson(
          json['join_action_result'] as Map<String, dynamic>),
      leaveActionResult: CommunityLeaveActionResult.fromJson(
          json['leave_action_result'] as Map<String, dynamic>),
      pinActionResult: CommunityPinActionResult.fromJson(
          json['pin_action_result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommunityActionsImplToJson(
        _$CommunityActionsImpl instance) =>
    <String, dynamic>{
      'delete_action_result': instance.deleteActionResult,
      'join_action_result': instance.joinActionResult,
      'leave_action_result': instance.leaveActionResult,
      'pin_action_result': instance.pinActionResult,
    };
