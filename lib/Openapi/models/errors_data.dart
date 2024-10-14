// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'errors_data.g.dart';

@JsonSerializable()
class ErrorsData {
  const ErrorsData({
    required this.user,
  });

  factory ErrorsData.fromJson(Map<String, Object?> json) =>
      _$ErrorsDataFromJson(json);

  final String? user;

  Map<String, Object?> toJson() => _$ErrorsDataToJson(this);
}
