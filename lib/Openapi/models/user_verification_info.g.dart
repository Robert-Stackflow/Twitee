// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVerificationInfo _$UserVerificationInfoFromJson(
        Map<String, dynamic> json) =>
    UserVerificationInfo(
      isIdentityVerified: json['is_identity_verified'] as bool?,
      reason: json['reason'] == null
          ? null
          : UserVerificationInfoReason.fromJson(
              json['reason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserVerificationInfoToJson(
        UserVerificationInfo instance) =>
    <String, dynamic>{
      'is_identity_verified': instance.isIdentityVerified,
      'reason': instance.reason,
    };
