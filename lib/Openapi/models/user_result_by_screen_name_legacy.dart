// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'user_result_by_screen_name_legacy.g.dart';

@JsonSerializable()
class UserResultByScreenNameLegacy {
  const UserResultByScreenNameLegacy({
    required this.blockedBy,
    required this.blocking,
    required this.followedBy,
    required this.following,
    required this.name,
    required this.protected,
    required this.screenName,
  });

  factory UserResultByScreenNameLegacy.fromJson(Map<String, Object?> json) =>
      _$UserResultByScreenNameLegacyFromJson(json);

  @JsonKey(name: 'blocked_by')
  final bool? blockedBy;
  final bool? blocking;
  @JsonKey(name: 'followed_by')
  final bool? followedBy;
  final bool? following;
  final String? name;
  final bool? protected;
  @JsonKey(name: 'screen_name')
  final String? screenName;

  Map<String, Object?> toJson() => _$UserResultByScreenNameLegacyToJson(this);
}
