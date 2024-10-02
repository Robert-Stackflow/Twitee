// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensitive_media_warning.freezed.dart';
part 'sensitive_media_warning.g.dart';

@Freezed()
class SensitiveMediaWarning with _$SensitiveMediaWarning {
  const factory SensitiveMediaWarning({
    @JsonKey(name: 'adult_content')
    required bool adultContent,
    @JsonKey(name: 'graphic_violence')
    required bool graphicViolence,
    required bool other,
  }) = _SensitiveMediaWarning;
  
  factory SensitiveMediaWarning.fromJson(Map<String, Object?> json) => _$SensitiveMediaWarningFromJson(json);
}
