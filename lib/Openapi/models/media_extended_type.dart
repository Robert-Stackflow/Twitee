// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum MediaExtendedType {
  @JsonValue('photo')
  photo('photo'),
  @JsonValue('video')
  video('video'),
  @JsonValue('animated_gif')
  animatedGif('animated_gif'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const MediaExtendedType(this.json);

  factory MediaExtendedType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
