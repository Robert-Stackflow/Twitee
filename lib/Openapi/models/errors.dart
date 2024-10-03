// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'error.dart';
import 'errors_data.dart';

part 'errors.g.dart';

@JsonSerializable()
class Errors  {
  const Errors({
    required this.data,
    required this.errors,
  });
  
  factory Errors.fromJson(Map<String, Object?> json) => _$ErrorsFromJson(json);
  
  final ErrorsData? data;
  final List<Error> errors;

  Map<String, Object?> toJson() => _$ErrorsToJson(this);
}
