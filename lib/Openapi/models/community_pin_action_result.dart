// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'type_name.dart';

part 'community_pin_action_result.g.dart';

@JsonSerializable()
class CommunityPinActionResult {
  const CommunityPinActionResult({
    required this.privateTypename,
  });

  factory CommunityPinActionResult.fromJson(Map<String, Object?> json) =>
      _$CommunityPinActionResultFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;

  Map<String, Object?> toJson() => _$CommunityPinActionResultToJson(this);
}
