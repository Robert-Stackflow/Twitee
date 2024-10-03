// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteTweetResultData _$NoteTweetResultDataFromJson(Map<String, dynamic> json) =>
    NoteTweetResultData(
      entitySet: json['entity_set'] == null
          ? null
          : Entities.fromJson(json['entity_set'] as Map<String, dynamic>),
      id: json['id'] as String,
      media: json['media'] == null
          ? null
          : NoteTweetResultMedia.fromJson(
              json['media'] as Map<String, dynamic>),
      richtext: json['richtext'] == null
          ? null
          : NoteTweetResultRichText.fromJson(
              json['richtext'] as Map<String, dynamic>),
      text: json['text'] as String,
    );

Map<String, dynamic> _$NoteTweetResultDataToJson(
        NoteTweetResultData instance) =>
    <String, dynamic>{
      'entity_set': instance.entitySet,
      'id': instance.id,
      'media': instance.media,
      'richtext': instance.richtext,
      'text': instance.text,
    };
