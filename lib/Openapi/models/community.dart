// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';
import 'package:twitee/Openapi/models/timeline_twitter_list.dart';

import 'community_data.dart';

part 'community.g.dart';

@JsonSerializable()
class Community extends PinnedTimelineUnion {
  const Community({
    required this.result,
  });

  factory Community.fromJson(Map<String, Object?> json) =>
      _$CommunityFromJson(json);

  final CommunityData result;

  Map<String, Object?> toJson() => _$CommunityToJson(this);
}
