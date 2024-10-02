// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'follow_timeline.dart';
import 'type_name.dart';

part 'follow_response_result.freezed.dart';
part 'follow_response_result.g.dart';

@Freezed()
 class FollowResponseResult with _$FollowResponseResult {
  const factory FollowResponseResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required FollowTimeline timeline,
  }) = _FollowResponseResult;
  
  factory FollowResponseResult.fromJson(Map<String, Object?> json) => _$FollowResponseResultFromJson(json);
}
