// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_results.dart';

part 'user_result_core.freezed.dart';
part 'user_result_core.g.dart';

@Freezed()
class UserResultCore with _$UserResultCore {
  const factory UserResultCore({
    @JsonKey(name: 'user_results')
    required UserResults userResults,
  }) = _UserResultCore;
  
  factory UserResultCore.fromJson(Map<String, Object?> json) => _$UserResultCoreFromJson(json);
}
