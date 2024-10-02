// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_extensions.dart';
import 'location.dart';
import 'tracing.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@Freezed()
class Error with _$Error {
  const factory Error({
    required int code,
    required ErrorExtensions extensions,
    required String kind,
    required List<Location> locations,
    required String message,
    required String name,
    required List<String> path,
    @JsonKey(name: 'retry_after')
    required int retryAfter,
    required String source,
    required Tracing tracing,
  }) = _Error;
  
  factory Error.fromJson(Map<String, Object?> json) => _$ErrorFromJson(json);
}
