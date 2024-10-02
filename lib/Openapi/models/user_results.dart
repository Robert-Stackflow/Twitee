// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_union.dart';

part 'user_results.freezed.dart';
part 'user_results.g.dart';

@Freezed()
 class UserResults with _$UserResults {
  const factory UserResults({
    required UserUnion result,
  }) = _UserResults;
  
  factory UserResults.fromJson(Map<String, Object?> json) => _$UserResultsFromJson(json);
}
