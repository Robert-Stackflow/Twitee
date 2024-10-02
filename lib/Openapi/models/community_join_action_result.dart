// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';

part 'community_join_action_result.freezed.dart';
part 'community_join_action_result.g.dart';

@Freezed()
class CommunityJoinActionResult with _$CommunityJoinActionResult {
  const factory CommunityJoinActionResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
  }) = _CommunityJoinActionResult;
  
  factory CommunityJoinActionResult.fromJson(Map<String, Object?> json) => _$CommunityJoinActionResultFromJson(json);
}
