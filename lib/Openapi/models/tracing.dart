// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracing.freezed.dart';
part 'tracing.g.dart';

@Freezed()
 class Tracing with _$Tracing {
  const factory Tracing({
    @JsonKey(name: 'trace_id')
    required String traceId,
  }) = _Tracing;
  
  factory Tracing.fromJson(Map<String, Object?> json) => _$TracingFromJson(json);
}
