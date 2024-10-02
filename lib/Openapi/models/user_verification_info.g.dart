// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserVerificationInfoImpl _$$UserVerificationInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserVerificationInfoImpl(
      isIdentityVerified: json['is_identity_verified'] as bool,
      reason: UserVerificationInfoReason.fromJson(
          json['reason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserVerificationInfoImplToJson(
        _$UserVerificationInfoImpl instance) =>
    <String, dynamic>{
      'is_identity_verified': instance.isIdentityVerified,
      'reason': instance.reason,
    };
