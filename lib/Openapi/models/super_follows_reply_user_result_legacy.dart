// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_follows_reply_user_result_legacy.freezed.dart';
part 'super_follows_reply_user_result_legacy.g.dart';

@Freezed()
 class SuperFollowsReplyUserResultLegacy with _$SuperFollowsReplyUserResultLegacy {
  const factory SuperFollowsReplyUserResultLegacy({
    @JsonKey(name: 'screen_name')
    required String screenName,
  }) = _SuperFollowsReplyUserResultLegacy;
  
  factory SuperFollowsReplyUserResultLegacy.fromJson(Map<String, Object?> json) => _$SuperFollowsReplyUserResultLegacyFromJson(json);
}
