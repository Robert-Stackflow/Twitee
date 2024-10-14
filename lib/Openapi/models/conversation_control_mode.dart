// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ConversationControlMode {
  @JsonValue('Community')
  community('Community'),
  @JsonValue('Verified')
  verified('Verified'),
  @JsonValue('ByInvitation')
  byInvitation('ByInvitation'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const ConversationControlMode(this.json);

  factory ConversationControlMode.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
