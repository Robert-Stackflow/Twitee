// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet_result_rich_text_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteTweetResultRichTextTag _$NoteTweetResultRichTextTagFromJson(
        Map<String, dynamic> json) =>
    NoteTweetResultRichTextTag(
      fromIndex: (json['from_index'] as num?)?.toInt(),
      richtextTypes: (json['richtext_types'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : RichtextTypesRichtextTypes.fromJson(e as String))
          .toList(),
      toIndex: (json['to_index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NoteTweetResultRichTextTagToJson(
        NoteTweetResultRichTextTag instance) =>
    <String, dynamic>{
      'from_index': instance.fromIndex,
      'richtext_types': instance.richtextTypes
          ?.map((e) => _$RichtextTypesRichtextTypesEnumMap[e])
          .toList(),
      'to_index': instance.toIndex,
    };

const _$RichtextTypesRichtextTypesEnumMap = {
  RichtextTypesRichtextTypes.bold: 'Bold',
  RichtextTypesRichtextTypes.italic: 'Italic',
  RichtextTypesRichtextTypes.$unknown: r'$unknown',
};
