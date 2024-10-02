// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_legacy_extended_profile_birthdate.dart';

part 'user_legacy_extended_profile.freezed.dart';
part 'user_legacy_extended_profile.g.dart';

@Freezed()
class UserLegacyExtendedProfile with _$UserLegacyExtendedProfile {
  const factory UserLegacyExtendedProfile({
    required UserLegacyExtendedProfileBirthdate birthdate,
  }) = _UserLegacyExtendedProfile;
  
  factory UserLegacyExtendedProfile.fromJson(Map<String, Object?> json) => _$UserLegacyExtendedProfileFromJson(json);
}
