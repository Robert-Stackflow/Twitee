// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_legacy_extended_profile_birthdate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLegacyExtendedProfileBirthdate _$UserLegacyExtendedProfileBirthdateFromJson(
        Map<String, dynamic> json) =>
    UserLegacyExtendedProfileBirthdate(
      day: (json['day'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      visibility: UserLegacyExtendedProfileBirthdateVisibility.fromJson(
          json['visibility'] as String),
      year: (json['year'] as num).toInt(),
      yearVisibility: json['year_visibility'] == null
          ? null
          : UserLegacyExtendedProfileBirthdateYearVisibility.fromJson(
              json['year_visibility'] as String),
    );

Map<String, dynamic> _$UserLegacyExtendedProfileBirthdateToJson(
        UserLegacyExtendedProfileBirthdate instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'visibility': _$UserLegacyExtendedProfileBirthdateVisibilityEnumMap[
          instance.visibility]!,
      'year': instance.year,
      'year_visibility':
          _$UserLegacyExtendedProfileBirthdateYearVisibilityEnumMap[
              instance.yearVisibility],
    };

const _$UserLegacyExtendedProfileBirthdateVisibilityEnumMap = {
  UserLegacyExtendedProfileBirthdateVisibility.self: 'Self',
  UserLegacyExtendedProfileBirthdateVisibility.public: 'Public',
  UserLegacyExtendedProfileBirthdateVisibility.mutualFollow: 'MutualFollow',
  UserLegacyExtendedProfileBirthdateVisibility.followers: 'Followers',
  UserLegacyExtendedProfileBirthdateVisibility.following: 'Following',
  UserLegacyExtendedProfileBirthdateVisibility.$unknown: r'$unknown',
};

const _$UserLegacyExtendedProfileBirthdateYearVisibilityEnumMap = {
  UserLegacyExtendedProfileBirthdateYearVisibility.self: 'Self',
  UserLegacyExtendedProfileBirthdateYearVisibility.public: 'Public',
  UserLegacyExtendedProfileBirthdateYearVisibility.mutualFollow: 'MutualFollow',
  UserLegacyExtendedProfileBirthdateYearVisibility.followers: 'Followers',
  UserLegacyExtendedProfileBirthdateYearVisibility.following: 'Following',
  UserLegacyExtendedProfileBirthdateYearVisibility.$unknown: r'$unknown',
};
