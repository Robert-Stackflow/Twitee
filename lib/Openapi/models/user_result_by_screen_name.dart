// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_result_by_screen_name_result.dart';

part 'user_result_by_screen_name.freezed.dart';
part 'user_result_by_screen_name.g.dart';

@Freezed()
 class UserResultByScreenName with _$UserResultByScreenName {
  const factory UserResultByScreenName({
    required String id,
    required UserResultByScreenNameResult result,
  }) = _UserResultByScreenName;
  
  factory UserResultByScreenName.fromJson(Map<String, Object?> json) => _$UserResultByScreenNameFromJson(json);
}
