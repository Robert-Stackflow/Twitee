// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'errors_data.freezed.dart';
part 'errors_data.g.dart';

@Freezed()
 class ErrorsData with _$ErrorsData {
  const factory ErrorsData({
    required String user,
  }) = _ErrorsData;
  
  factory ErrorsData.fromJson(Map<String, Object?> json) => _$ErrorsDataFromJson(json);
}
