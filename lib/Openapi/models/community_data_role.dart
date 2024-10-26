// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum CommunityDataRole {
  @JsonValue('NonMember')
  nonMember('NonMember'),
  @JsonValue('Member')
  member('Member'),
  @JsonValue('Admin')
  admin('Admin'),
  @JsonValue('Moderator')
  moderator('Moderator'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  bool get isAdminOrModerator => this == admin || this == moderator;

  const CommunityDataRole(this.json);

  factory CommunityDataRole.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
