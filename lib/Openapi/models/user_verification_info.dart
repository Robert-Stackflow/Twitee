// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_verification_info_reason.dart';

part 'user_verification_info.g.dart';

@JsonSerializable()
class UserVerificationInfo  {
  const UserVerificationInfo({
    required this.isIdentityVerified,
    required this.reason,
  });
  
  factory UserVerificationInfo.fromJson(Map<String, Object?> json) => _$UserVerificationInfoFromJson(json);
  
  @JsonKey(name: 'is_identity_verified')
  final bool? isIdentityVerified;
  final UserVerificationInfoReason? reason;

  Map<String, Object?> toJson() => _$UserVerificationInfoToJson(this);
}
