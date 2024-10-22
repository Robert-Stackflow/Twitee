// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';
import 'package:twitee/Openapi/export.dart';

import 'item_content_union.dart';
import 'type_name.dart';

part 'timeline_community.g.dart';

@JsonSerializable()
class TimelineCommunity extends ItemContentUnion {
  const TimelineCommunity({
    required this.privateTypename,
    required this.communityResults,
  });

  factory TimelineCommunity.fromJson(Map<String, Object?> json) =>
      _$TimelineCommunityFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;

  @JsonKey(name: 'community_results')
  final Community communityResults;

  Map<String, Object?> toJson() => _$TimelineCommunityToJson(this);
}
