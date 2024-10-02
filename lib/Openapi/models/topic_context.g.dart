// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicContextImpl _$$TopicContextImplFromJson(Map<String, dynamic> json) =>
    _$TopicContextImpl(
      description: json['description'] as String,
      following: json['following'] as bool,
      iconUrl: json['icon_url'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      notInterested: json['not_interested'] as bool,
      topicId: json['topic_id'] as String,
    );

Map<String, dynamic> _$$TopicContextImplToJson(_$TopicContextImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'following': instance.following,
      'icon_url': instance.iconUrl,
      'id': instance.id,
      'name': instance.name,
      'not_interested': instance.notInterested,
      'topic_id': instance.topicId,
    };
