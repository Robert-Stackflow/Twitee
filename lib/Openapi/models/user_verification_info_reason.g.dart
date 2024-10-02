// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_info_reason.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserVerificationInfoReasonImpl _$$UserVerificationInfoReasonImplFromJson(
        Map<String, dynamic> json) =>
    _$UserVerificationInfoReasonImpl(
      description: UserVerificationInfoReasonDescription.fromJson(
          json['description'] as Map<String, dynamic>),
      overrideVerifiedYear: (json['override_verified_year'] as num).toInt(),
      verifiedSinceMsec: json['verified_since_msec'] as String,
    );

Map<String, dynamic> _$$UserVerificationInfoReasonImplToJson(
        _$UserVerificationInfoReasonImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'override_verified_year': instance.overrideVerifiedYear,
      'verified_since_msec': instance.verifiedSinceMsec,
    };
