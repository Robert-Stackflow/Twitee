// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tracing.dart';

part 'error_extensions.freezed.dart';
part 'error_extensions.g.dart';

@Freezed()
 class ErrorExtensions with _$ErrorExtensions {
  const factory ErrorExtensions({
    required int code,
    required String kind,
    required String name,
    @JsonKey(name: 'retry_after')
    required int retryAfter,
    required String source,
    required Tracing tracing,
  }) = _ErrorExtensions;
  
  factory ErrorExtensions.fromJson(Map<String, Object?> json) => _$ErrorExtensionsFromJson(json);
}
