// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet_result_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteTweetResultMediaImpl _$$NoteTweetResultMediaImplFromJson(
        Map<String, dynamic> json) =>
    _$NoteTweetResultMediaImpl(
      inlineMedia: (json['inline_media'] as List<dynamic>)
          .map((e) => NoteTweetResultMediaInlineMedia.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NoteTweetResultMediaImplToJson(
        _$NoteTweetResultMediaImpl instance) =>
    <String, dynamic>{
      'inline_media': instance.inlineMedia,
    };
