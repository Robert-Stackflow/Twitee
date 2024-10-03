// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'legacy.g.dart';

@JsonSerializable()
class Legacy  {
  const Legacy({
    required this.fullText,
  });
  
  factory Legacy.fromJson(Map<String, Object?> json) => _$LegacyFromJson(json);
  
  @JsonKey(name: 'full_text')
  final String fullText;

  Map<String, Object?> toJson() => _$LegacyToJson(this);
}
