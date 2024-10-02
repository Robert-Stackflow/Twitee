// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_results.dart';

part 'users_response_data.freezed.dart';
part 'users_response_data.g.dart';

@Freezed()
class UsersResponseData with _$UsersResponseData {
  const factory UsersResponseData({
    required List<UserResults> users,
  }) = _UsersResponseData;
  
  factory UsersResponseData.fromJson(Map<String, Object?> json) => _$UsersResponseDataFromJson(json);
}
