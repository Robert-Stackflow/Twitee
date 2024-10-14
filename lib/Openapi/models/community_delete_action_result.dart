// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'community_delete_action_result_reason.dart';
import 'type_name.dart';

part 'community_delete_action_result.g.dart';

@JsonSerializable()
class CommunityDeleteActionResult {
  const CommunityDeleteActionResult({
    required this.privateTypename,
    required this.reason,
  });

  factory CommunityDeleteActionResult.fromJson(Map<String, Object?> json) =>
      _$CommunityDeleteActionResultFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final CommunityDeleteActionResultReason reason;

  Map<String, Object?> toJson() => _$CommunityDeleteActionResultToJson(this);
}
