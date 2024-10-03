// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_legacy_extended_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLegacyExtendedProfile _$UserLegacyExtendedProfileFromJson(
        Map<String, dynamic> json) =>
    UserLegacyExtendedProfile(
      birthdate: json['birthdate'] == null
          ? null
          : UserLegacyExtendedProfileBirthdate.fromJson(
              json['birthdate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserLegacyExtendedProfileToJson(
        UserLegacyExtendedProfile instance) =>
    <String, dynamic>{
      'birthdate': instance.birthdate,
    };
