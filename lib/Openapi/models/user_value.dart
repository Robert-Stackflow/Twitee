// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'user_value.g.dart';

@JsonSerializable()
class UserValue  {
  const UserValue({
    required this.idStr,
  });
  
  factory UserValue.fromJson(Map<String, Object?> json) => _$UserValueFromJson(json);
  
  @JsonKey(name: 'id_str')
  final String? idStr;

  Map<String, Object?> toJson() => _$UserValueToJson(this);
}
