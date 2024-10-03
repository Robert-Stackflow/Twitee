// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_legacy_extended_profile_birthdate.dart';

part 'user_legacy_extended_profile.g.dart';

@JsonSerializable()
class UserLegacyExtendedProfile  {
  const UserLegacyExtendedProfile({
    required this.birthdate,
  });
  
  factory UserLegacyExtendedProfile.fromJson(Map<String, Object?> json) => _$UserLegacyExtendedProfileFromJson(json);
  
  final UserLegacyExtendedProfileBirthdate? birthdate;

  Map<String, Object?> toJson() => _$UserLegacyExtendedProfileToJson(this);
}
