// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'timestamp.g.dart';

@JsonSerializable()
class Timestamp {
  const Timestamp({
    required this.indices,
    required this.seconds,
    required this.text,
  });

  factory Timestamp.fromJson(Map<String, Object?> json) =>
      _$TimestampFromJson(json);

  final List<int> indices;
  final int seconds;
  final String text;

  Map<String, Object?> toJson() => _$TimestampToJson(this);
}
