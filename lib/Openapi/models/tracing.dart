// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tracing.g.dart';

@JsonSerializable()
class Tracing  {
  const Tracing({
    required this.traceId,
  });
  
  factory Tracing.fromJson(Map<String, Object?> json) => _$TracingFromJson(json);
  
  @JsonKey(name: 'trace_id')
  final String? traceId;

  Map<String, Object?> toJson() => _$TracingToJson(this);
}
