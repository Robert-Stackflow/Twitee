// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'legacy.freezed.dart';
part 'legacy.g.dart';

@Freezed()
class Legacy with _$Legacy {
  const factory Legacy({
    @JsonKey(name: 'full_text')
    required String fullText,
  }) = _Legacy;
  
  factory Legacy.fromJson(Map<String, Object?> json) => _$LegacyFromJson(json);
}
