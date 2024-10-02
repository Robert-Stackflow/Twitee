// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_legacy_extended_profile_birthdate_visibility.dart';
import 'user_legacy_extended_profile_birthdate_year_visibility.dart';

part 'user_legacy_extended_profile_birthdate.freezed.dart';
part 'user_legacy_extended_profile_birthdate.g.dart';

@Freezed()
class UserLegacyExtendedProfileBirthdate with _$UserLegacyExtendedProfileBirthdate {
  const factory UserLegacyExtendedProfileBirthdate({
    required int day,
    required int month,
    required UserLegacyExtendedProfileBirthdateVisibility visibility,
    required int year,
    @JsonKey(name: 'year_visibility')
    required UserLegacyExtendedProfileBirthdateYearVisibility yearVisibility,
  }) = _UserLegacyExtendedProfileBirthdate;
  
  factory UserLegacyExtendedProfileBirthdate.fromJson(Map<String, Object?> json) => _$UserLegacyExtendedProfileBirthdateFromJson(json);
}
