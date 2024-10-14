// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_legacy_extended_profile_birthdate_visibility.dart';
import 'user_legacy_extended_profile_birthdate_year_visibility.dart';

part 'user_legacy_extended_profile_birthdate.g.dart';

@JsonSerializable()
class UserLegacyExtendedProfileBirthdate {
  const UserLegacyExtendedProfileBirthdate({
    required this.day,
    required this.month,
    required this.visibility,
    required this.year,
    required this.yearVisibility,
  });

  factory UserLegacyExtendedProfileBirthdate.fromJson(
          Map<String, Object?> json) =>
      _$UserLegacyExtendedProfileBirthdateFromJson(json);

  final int day;
  final int month;
  final UserLegacyExtendedProfileBirthdateVisibility visibility;
  final int year;
  @JsonKey(name: 'year_visibility')
  final UserLegacyExtendedProfileBirthdateYearVisibility? yearVisibility;

  Map<String, Object?> toJson() =>
      _$UserLegacyExtendedProfileBirthdateToJson(this);
}
