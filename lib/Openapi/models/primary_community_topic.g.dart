// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primary_community_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrimaryCommunityTopic _$PrimaryCommunityTopicFromJson(
        Map<String, dynamic> json) =>
    PrimaryCommunityTopic(
      topicId: json['topic_id'] as String?,
      topicName: json['topic_name'] as String?,
    );

Map<String, dynamic> _$PrimaryCommunityTopicToJson(
        PrimaryCommunityTopic instance) =>
    <String, dynamic>{
      'topic_id': instance.topicId,
      'topic_name': instance.topicName,
    };
