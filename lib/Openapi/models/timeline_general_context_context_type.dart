// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum TimelineGeneralContextContextType {
  @JsonValue('Follow')
  follow('Follow'),
  @JsonValue('Pin')
  pin('Pin'),
  @JsonValue('Like')
  like('Like'),
  @JsonValue('Location')
  location('Location'),
  @JsonValue('Sparkle')
  sparkle('Sparkle'),
  @JsonValue('Conversation')
  conversation('Conversation'),
  @JsonValue('Community')
  community('Community'),
  @JsonValue('List')
  list('List'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const TimelineGeneralContextContextType(this.json);

  factory TimelineGeneralContextContextType.fromJson(String json) =>
      values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
