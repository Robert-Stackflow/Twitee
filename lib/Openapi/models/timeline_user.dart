// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'content_item_type.dart';
import 'social_context_union.dart';
import 'timeline_user_user_display_type.dart';
import 'type_name.dart';
import 'user_results.dart';

part 'timeline_user.freezed.dart';
part 'timeline_user.g.dart';

@Freezed()
 class TimelineUser with _$TimelineUser {
  const factory TimelineUser({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required ContentItemType itemType,
    required SocialContextUnion socialContext,
    required TimelineUserUserDisplayType userDisplayType,
    @JsonKey(name: 'user_results')
    required UserResults userResults,
  }) = _TimelineUser;
  
  factory TimelineUser.fromJson(Map<String, Object?> json) => _$TimelineUserFromJson(json);
}
