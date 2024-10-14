// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'sensitive_media_warning.g.dart';

@JsonSerializable()
class SensitiveMediaWarning {
  const SensitiveMediaWarning({
    required this.adultContent,
    required this.graphicViolence,
    required this.other,
  });

  factory SensitiveMediaWarning.fromJson(Map<String, Object?> json) =>
      _$SensitiveMediaWarningFromJson(json);

  @JsonKey(name: 'adult_content')
  final bool? adultContent;
  @JsonKey(name: 'graphic_violence')
  final bool? graphicViolence;
  final bool other;

  Map<String, Object?> toJson() => _$SensitiveMediaWarningToJson(this);
}
