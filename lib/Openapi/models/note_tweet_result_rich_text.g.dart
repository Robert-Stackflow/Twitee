// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet_result_rich_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteTweetResultRichTextImpl _$$NoteTweetResultRichTextImplFromJson(
        Map<String, dynamic> json) =>
    _$NoteTweetResultRichTextImpl(
      richtextTags: (json['richtext_tags'] as List<dynamic>)
          .map((e) =>
              NoteTweetResultRichTextTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NoteTweetResultRichTextImplToJson(
        _$NoteTweetResultRichTextImpl instance) =>
    <String, dynamic>{
      'richtext_tags': instance.richtextTags,
    };
