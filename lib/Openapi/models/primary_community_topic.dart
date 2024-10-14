// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'primary_community_topic.g.dart';

@JsonSerializable()
class PrimaryCommunityTopic {
  const PrimaryCommunityTopic({
    required this.topicId,
    required this.topicName,
  });

  factory PrimaryCommunityTopic.fromJson(Map<String, Object?> json) =>
      _$PrimaryCommunityTopicFromJson(json);

  @JsonKey(name: 'topic_id')
  final String? topicId;
  @JsonKey(name: 'topic_name')
  final String? topicName;

  Map<String, Object?> toJson() => _$PrimaryCommunityTopicToJson(this);
}
