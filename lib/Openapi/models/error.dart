// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'error_extensions.dart';
import 'location.dart';
import 'tracing.dart';

part 'error.g.dart';

@JsonSerializable()
class Error {
  const Error({
    required this.code,
    required this.extensions,
    required this.kind,
    required this.locations,
    required this.message,
    required this.name,
    required this.path,
    required this.retryAfter,
    required this.source,
    required this.tracing,
  });

  factory Error.fromJson(Map<String, Object?> json) => _$ErrorFromJson(json);

  final int code;
  final ErrorExtensions extensions;
  final String kind;
  final List<Location> locations;
  final String message;
  final String name;
  final List<String> path;
  @JsonKey(name: 'retry_after')
  final int? retryAfter;
  final String source;
  final Tracing tracing;

  Map<String, Object?> toJson() => _$ErrorToJson(this);
}
