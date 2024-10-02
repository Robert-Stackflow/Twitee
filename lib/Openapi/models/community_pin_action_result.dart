// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';

part 'community_pin_action_result.freezed.dart';
part 'community_pin_action_result.g.dart';

@Freezed()
 class CommunityPinActionResult with _$CommunityPinActionResult {
  const factory CommunityPinActionResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
  }) = _CommunityPinActionResult;
  
  factory CommunityPinActionResult.fromJson(Map<String, Object?> json) => _$CommunityPinActionResultFromJson(json);
}
