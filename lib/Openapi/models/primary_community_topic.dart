// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'primary_community_topic.freezed.dart';
part 'primary_community_topic.g.dart';

@Freezed()
class PrimaryCommunityTopic with _$PrimaryCommunityTopic {
  const factory PrimaryCommunityTopic({
    @JsonKey(name: 'topic_id')
    required String topicId,
    @JsonKey(name: 'topic_name')
    required String topicName,
  }) = _PrimaryCommunityTopic;
  
  factory PrimaryCommunityTopic.fromJson(Map<String, Object?> json) => _$PrimaryCommunityTopicFromJson(json);
}
