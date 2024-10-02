// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_value.freezed.dart';
part 'user_value.g.dart';

@Freezed()
 class UserValue with _$UserValue {
  const factory UserValue({
    @JsonKey(name: 'id_str')
    required String idStr,
  }) = _UserValue;
  
  factory UserValue.fromJson(Map<String, Object?> json) => _$UserValueFromJson(json);
}
