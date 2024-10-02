// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';

part 'community_join_requests_result.freezed.dart';
part 'community_join_requests_result.g.dart';

@Freezed()
class CommunityJoinRequestsResult with _$CommunityJoinRequestsResult {
  const factory CommunityJoinRequestsResult({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
  }) = _CommunityJoinRequestsResult;
  
  factory CommunityJoinRequestsResult.fromJson(Map<String, Object?> json) => _$CommunityJoinRequestsResultFromJson(json);
}
