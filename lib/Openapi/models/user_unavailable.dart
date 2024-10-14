// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'type_name.dart';
import 'user_union.dart';

part 'user_unavailable.g.dart';

@JsonSerializable()
class UserUnavailable extends UserUnion {
  const UserUnavailable({
    required this.privateTypename,
    required this.message,
    required this.reason,
  });

  factory UserUnavailable.fromJson(Map<String, Object?> json) =>
      _$UserUnavailableFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final String? message;
  final String reason;

  Map<String, Object?> toJson() => _$UserUnavailableToJson(this);
}
