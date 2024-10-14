// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum CursorType {
  @JsonValue('Top')
  top('Top'),
  @JsonValue('Bottom')
  bottom('Bottom'),
  @JsonValue('ShowMore')
  showMore('ShowMore'),
  @JsonValue('ShowMoreThreads')
  showMoreThreads('ShowMoreThreads'),
  @JsonValue('Gap')
  gap('Gap'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const CursorType(this.json);

  factory CursorType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
