// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet_result_rich_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteTweetResultRichText _$NoteTweetResultRichTextFromJson(
        Map<String, dynamic> json) =>
    NoteTweetResultRichText(
      richtextTags: (json['richtext_tags'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : NoteTweetResultRichTextTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NoteTweetResultRichTextToJson(
        NoteTweetResultRichText instance) =>
    <String, dynamic>{
      'richtext_tags': instance.richtextTags,
    };
