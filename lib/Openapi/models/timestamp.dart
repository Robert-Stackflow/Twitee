// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamp.freezed.dart';
part 'timestamp.g.dart';

@Freezed()
class Timestamp with _$Timestamp {
  const factory Timestamp({
    required List<int> indices,
    required int seconds,
    required String text,
  }) = _Timestamp;
  
  factory Timestamp.fromJson(Map<String, Object?> json) => _$TimestampFromJson(json);
}
