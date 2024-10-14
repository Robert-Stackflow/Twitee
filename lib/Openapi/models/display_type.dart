// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum DisplayType {
  @JsonValue('Vertical')
  vertical('Vertical'),
  @JsonValue('VerticalConversation')
  verticalConversation('VerticalConversation'),
  @JsonValue('VerticalGrid')
  verticalGrid('VerticalGrid'),
  @JsonValue('Carousel')
  carousel('Carousel'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const DisplayType(this.json);

  factory DisplayType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
