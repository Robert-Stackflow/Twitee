// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';
import 'user_result_by_screen_name_legacy.dart';

part 'user_result_by_screen_name_result.freezed.dart';
part 'user_result_by_screen_name_result.g.dart';

@Freezed()
 class UserResultByScreenNameResult with _$UserResultByScreenNameResult {
  const factory UserResultByScreenNameResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required String id,
    required UserResultByScreenNameLegacy legacy,
    required dynamic profilemodules,
    @JsonKey(name: 'rest_id')
    required String restId,
  }) = _UserResultByScreenNameResult;
  
  factory UserResultByScreenNameResult.fromJson(Map<String, Object?> json) => _$UserResultByScreenNameResultFromJson(json);
}
