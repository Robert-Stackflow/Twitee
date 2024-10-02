// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_result_by_screen_name_legacy.freezed.dart';
part 'user_result_by_screen_name_legacy.g.dart';

@Freezed()
class UserResultByScreenNameLegacy with _$UserResultByScreenNameLegacy {
  const factory UserResultByScreenNameLegacy({
    @JsonKey(name: 'blocked_by')
    required bool blockedBy,
    required bool blocking,
    @JsonKey(name: 'followed_by')
    required bool followedBy,
    required bool following,
    required String name,
    required bool protected,
    @JsonKey(name: 'screen_name')
    required String screenName,
  }) = _UserResultByScreenNameLegacy;
  
  factory UserResultByScreenNameLegacy.fromJson(Map<String, Object?> json) => _$UserResultByScreenNameLegacyFromJson(json);
}
