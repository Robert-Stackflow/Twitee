// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';

part 'user_unavailable.freezed.dart';
part 'user_unavailable.g.dart';

@Freezed()
 class UserUnavailable with _$UserUnavailable {
  const factory UserUnavailable({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required String message,
    required String reason,
  }) = _UserUnavailable;
  
  factory UserUnavailable.fromJson(Map<String, Object?> json) => _$UserUnavailableFromJson(json);
}
