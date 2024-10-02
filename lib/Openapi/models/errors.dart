// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'error.dart';
import 'errors_data.dart';

part 'errors.freezed.dart';
part 'errors.g.dart';

@Freezed()
 class Errors with _$Errors {
  const factory Errors({
    required ErrorsData data,
    required List<Error> errors,
  }) = _Errors;
  
  factory Errors.fromJson(Map<String, Object?> json) => _$ErrorsFromJson(json);
}
