// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_verification_info_reason.dart';

part 'user_verification_info.freezed.dart';
part 'user_verification_info.g.dart';

@Freezed()
 class UserVerificationInfo with _$UserVerificationInfo {
  const factory UserVerificationInfo({
    @JsonKey(name: 'is_identity_verified')
    required bool isIdentityVerified,
    required UserVerificationInfoReason reason,
  }) = _UserVerificationInfo;
  
  factory UserVerificationInfo.fromJson(Map<String, Object?> json) => _$UserVerificationInfoFromJson(json);
}
