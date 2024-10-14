// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'super_follows_reply_user_result_legacy.g.dart';

@JsonSerializable()
class SuperFollowsReplyUserResultLegacy {
  const SuperFollowsReplyUserResultLegacy({
    required this.screenName,
  });

  factory SuperFollowsReplyUserResultLegacy.fromJson(
          Map<String, Object?> json) =>
      _$SuperFollowsReplyUserResultLegacyFromJson(json);

  @JsonKey(name: 'screen_name')
  final String? screenName;

  Map<String, Object?> toJson() =>
      _$SuperFollowsReplyUserResultLegacyToJson(this);
}
