// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'callback.g.dart';

@JsonSerializable()
class Callback {
  const Callback({
    required this.endpoint,
  });

  factory Callback.fromJson(Map<String, Object?> json) =>
      _$CallbackFromJson(json);

  final String endpoint;

  Map<String, Object?> toJson() => _$CallbackToJson(this);
}
