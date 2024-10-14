// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'content_item_type.dart';
import 'item_content_union.dart';
import 'social_context_union.dart';
import 'timeline_user_user_display_type.dart';
import 'type_name.dart';
import 'user_results.dart';

part 'timeline_user.g.dart';

@JsonSerializable()
class TimelineUser extends ItemContentUnion {
  const TimelineUser({
    required this.privateTypename,
    required this.itemType,
    required this.socialContext,
    required this.userDisplayType,
    required this.userResults,
  });

  factory TimelineUser.fromJson(Map<String, Object?> json) =>
      _$TimelineUserFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;
  final ContentItemType itemType;
  final SocialContextUnion? socialContext;
  final TimelineUserUserDisplayType userDisplayType;
  @JsonKey(name: 'user_results')
  final UserResults? userResults;

  Map<String, Object?> toJson() => _$TimelineUserToJson(this);
}
