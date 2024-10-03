// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'community_leave_action_result_reason.dart';
import 'type_name.dart';

part 'community_leave_action_result.g.dart';

@JsonSerializable()
class CommunityLeaveActionResult  {
  const CommunityLeaveActionResult({
    required this.privateTypename,
    required this.message,
    required this.reason,
  });
  
  factory CommunityLeaveActionResult.fromJson(Map<String, Object?> json) => _$CommunityLeaveActionResultFromJson(json);
  
  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final String message;
  final CommunityLeaveActionResultReason reason;

  Map<String, Object?> toJson() => _$CommunityLeaveActionResultToJson(this);
}
