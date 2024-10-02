// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@Freezed()
 class Location with _$Location {
  const factory Location({
    required int column,
    required int line,
  }) = _Location;
  
  factory Location.fromJson(Map<String, Object?> json) => _$LocationFromJson(json);
}
