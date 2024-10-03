// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet_result_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteTweetResultMedia _$NoteTweetResultMediaFromJson(
        Map<String, dynamic> json) =>
    NoteTweetResultMedia(
      inlineMedia: (json['inline_media'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : NoteTweetResultMediaInlineMedia.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NoteTweetResultMediaToJson(
        NoteTweetResultMedia instance) =>
    <String, dynamic>{
      'inline_media': instance.inlineMedia,
    };
