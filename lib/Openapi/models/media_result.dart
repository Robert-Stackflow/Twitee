// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_result.freezed.dart';
part 'media_result.g.dart';

@Freezed()
 class MediaResult with _$MediaResult {
  const factory MediaResult({
    @JsonKey(name: 'media_key')
    required String mediaKey,
  }) = _MediaResult;
  
  factory MediaResult.fromJson(Map<String, Object?> json) => _$MediaResultFromJson(json);
}
