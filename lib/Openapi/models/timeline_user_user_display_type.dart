// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum TimelineUserUserDisplayType {
  @JsonValue('User')
  user('User'),
  @JsonValue('UserDetailed')
  userDetailed('UserDetailed'),
  @JsonValue('SubscribableUser')
  subscribableUser('SubscribableUser'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const TimelineUserUserDisplayType(this.json);

  factory TimelineUserUserDisplayType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
