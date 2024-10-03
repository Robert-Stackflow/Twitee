// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location  {
  const Location({
    required this.column,
    required this.line,
  });
  
  factory Location.fromJson(Map<String, Object?> json) => _$LocationFromJson(json);
  
  final int column;
  final int line;

  Map<String, Object?> toJson() => _$LocationToJson(this);
}
