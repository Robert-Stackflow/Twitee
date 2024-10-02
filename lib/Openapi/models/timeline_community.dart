// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';

part 'timeline_community.freezed.dart';
part 'timeline_community.g.dart';

@Freezed()
class TimelineCommunity with _$TimelineCommunity {
  const factory TimelineCommunity({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
  }) = _TimelineCommunity;
  
  factory TimelineCommunity.fromJson(Map<String, Object?> json) => _$TimelineCommunityFromJson(json);
}
