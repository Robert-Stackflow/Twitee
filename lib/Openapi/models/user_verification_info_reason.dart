// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_verification_info_reason_description.dart';

part 'user_verification_info_reason.g.dart';

@JsonSerializable()
class UserVerificationInfoReason {
  const UserVerificationInfoReason({
    required this.description,
    required this.overrideVerifiedYear,
    required this.verifiedSinceMsec,
  });

  factory UserVerificationInfoReason.fromJson(Map<String, Object?> json) =>
      _$UserVerificationInfoReasonFromJson(json);

  final UserVerificationInfoReasonDescription description;
  @JsonKey(name: 'override_verified_year')
  final int? overrideVerifiedYear;
  @JsonKey(name: 'verified_since_msec')
  final String? verifiedSinceMsec;

  Map<String, Object?> toJson() => _$UserVerificationInfoReasonToJson(this);
}
