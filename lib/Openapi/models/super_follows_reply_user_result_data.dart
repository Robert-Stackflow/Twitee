// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'super_follows_reply_user_result_legacy.dart';
import 'type_name.dart';

part 'super_follows_reply_user_result_data.g.dart';

@JsonSerializable()
class SuperFollowsReplyUserResultData {
  const SuperFollowsReplyUserResultData({
    required this.privateTypename,
    required this.legacy,
  });

  factory SuperFollowsReplyUserResultData.fromJson(Map<String, Object?> json) =>
      _$SuperFollowsReplyUserResultDataFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final SuperFollowsReplyUserResultLegacy legacy;

  Map<String, Object?> toJson() =>
      _$SuperFollowsReplyUserResultDataToJson(this);
}
