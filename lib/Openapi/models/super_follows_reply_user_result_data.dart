// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'super_follows_reply_user_result_legacy.dart';
import 'type_name.dart';

part 'super_follows_reply_user_result_data.freezed.dart';
part 'super_follows_reply_user_result_data.g.dart';

@Freezed()
 class SuperFollowsReplyUserResultData with _$SuperFollowsReplyUserResultData {
  const factory SuperFollowsReplyUserResultData({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required SuperFollowsReplyUserResultLegacy legacy,
  }) = _SuperFollowsReplyUserResultData;
  
  factory SuperFollowsReplyUserResultData.fromJson(Map<String, Object?> json) => _$SuperFollowsReplyUserResultDataFromJson(json);
}
