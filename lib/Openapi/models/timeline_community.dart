// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'item_content_union.dart';
import 'type_name.dart';

part 'timeline_community.g.dart';

@JsonSerializable()
class TimelineCommunity extends ItemContentUnion {
  const TimelineCommunity({
    required this.privateTypename,
  });

  factory TimelineCommunity.fromJson(Map<String, Object?> json) =>
      _$TimelineCommunityFromJson(json);

  @JsonKey(name: '__typename')
  final TypeName? privateTypename;

  Map<String, Object?> toJson() => _$TimelineCommunityToJson(this);
}
