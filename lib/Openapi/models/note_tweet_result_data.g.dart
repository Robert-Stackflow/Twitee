// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteTweetResultDataImpl _$$NoteTweetResultDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NoteTweetResultDataImpl(
      entitySet: Entities.fromJson(json['entity_set'] as Map<String, dynamic>),
      id: json['id'] as String,
      media:
          NoteTweetResultMedia.fromJson(json['media'] as Map<String, dynamic>),
      richtext: NoteTweetResultRichText.fromJson(
          json['richtext'] as Map<String, dynamic>),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$NoteTweetResultDataImplToJson(
        _$NoteTweetResultDataImpl instance) =>
    <String, dynamic>{
      'entity_set': instance.entitySet,
      'id': instance.id,
      'media': instance.media,
      'richtext': instance.richtext,
      'text': instance.text,
    };
