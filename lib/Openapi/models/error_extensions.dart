// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tracing.dart';

part 'error_extensions.g.dart';

@JsonSerializable()
class ErrorExtensions {
  const ErrorExtensions({
    required this.code,
    required this.kind,
    required this.name,
    required this.retryAfter,
    required this.source,
    required this.tracing,
  });

  factory ErrorExtensions.fromJson(Map<String, Object?> json) =>
      _$ErrorExtensionsFromJson(json);

  final int code;
  final String kind;
  final String name;
  @JsonKey(name: 'retry_after')
  final int? retryAfter;
  final String source;
  final Tracing tracing;

  Map<String, Object?> toJson() => _$ErrorExtensionsToJson(this);
}
