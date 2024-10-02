// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_verification_info_reason_description.dart';

part 'user_verification_info_reason.freezed.dart';
part 'user_verification_info_reason.g.dart';

@Freezed()
class UserVerificationInfoReason with _$UserVerificationInfoReason {
  const factory UserVerificationInfoReason({
    required UserVerificationInfoReasonDescription description,
    @JsonKey(name: 'override_verified_year')
    required int overrideVerifiedYear,
    @JsonKey(name: 'verified_since_msec')
    required String verifiedSinceMsec,
  }) = _UserVerificationInfoReason;
  
  factory UserVerificationInfoReason.fromJson(Map<String, Object?> json) => _$UserVerificationInfoReasonFromJson(json);
}
