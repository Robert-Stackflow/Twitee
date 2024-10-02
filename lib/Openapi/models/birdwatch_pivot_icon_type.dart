// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum BirdwatchPivotIconType {
  @JsonValue('BirdwatchV1Icon')
  birdwatchV1Icon('BirdwatchV1Icon'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const BirdwatchPivotIconType(this.json);

  factory BirdwatchPivotIconType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
