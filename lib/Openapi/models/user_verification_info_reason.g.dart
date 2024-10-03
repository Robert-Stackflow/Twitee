// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_info_reason.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVerificationInfoReason _$UserVerificationInfoReasonFromJson(
        Map<String, dynamic> json) =>
    UserVerificationInfoReason(
      description: UserVerificationInfoReasonDescription.fromJson(
          json['description'] as Map<String, dynamic>),
      overrideVerifiedYear: (json['override_verified_year'] as num?)?.toInt(),
      verifiedSinceMsec: json['verified_since_msec'] as String?,
    );

Map<String, dynamic> _$UserVerificationInfoReasonToJson(
        UserVerificationInfoReason instance) =>
    <String, dynamic>{
      'description': instance.description,
      'override_verified_year': instance.overrideVerifiedYear,
      'verified_since_msec': instance.verifiedSinceMsec,
    };
