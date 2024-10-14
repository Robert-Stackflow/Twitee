// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'super_follows_reply_user_result_data.dart';

part 'super_follows_reply_user_result.g.dart';

@JsonSerializable()
class SuperFollowsReplyUserResult {
  const SuperFollowsReplyUserResult({
    required this.result,
  });

  factory SuperFollowsReplyUserResult.fromJson(Map<String, Object?> json) =>
      _$SuperFollowsReplyUserResultFromJson(json);

  final SuperFollowsReplyUserResultData result;

  Map<String, Object?> toJson() => _$SuperFollowsReplyUserResultToJson(this);
}
