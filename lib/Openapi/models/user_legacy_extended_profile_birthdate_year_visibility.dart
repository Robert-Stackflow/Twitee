// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum UserLegacyExtendedProfileBirthdateYearVisibility {
  @JsonValue('Self')
  self('Self'),
  @JsonValue('Public')
  public('Public'),
  @JsonValue('MutualFollow')
  mutualFollow('MutualFollow'),
  @JsonValue('Followers')
  followers('Followers'),
  @JsonValue('Following')
  following('Following'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const UserLegacyExtendedProfileBirthdateYearVisibility(this.json);

  factory UserLegacyExtendedProfileBirthdateYearVisibility.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
