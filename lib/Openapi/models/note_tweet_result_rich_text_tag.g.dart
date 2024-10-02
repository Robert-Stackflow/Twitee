// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet_result_rich_text_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteTweetResultRichTextTagImpl _$$NoteTweetResultRichTextTagImplFromJson(
        Map<String, dynamic> json) =>
    _$NoteTweetResultRichTextTagImpl(
      fromIndex: (json['from_index'] as num).toInt(),
      richtextTypes: (json['richtext_types'] as List<dynamic>)
          .map((e) => RichtextTypesRichtextTypes.fromJson(e as String))
          .toList(),
      toIndex: (json['to_index'] as num).toInt(),
    );

Map<String, dynamic> _$$NoteTweetResultRichTextTagImplToJson(
        _$NoteTweetResultRichTextTagImpl instance) =>
    <String, dynamic>{
      'from_index': instance.fromIndex,
      'richtext_types': instance.richtextTypes
          .map((e) => _$RichtextTypesRichtextTypesEnumMap[e]!)
          .toList(),
      'to_index': instance.toIndex,
    };

const _$RichtextTypesRichtextTypesEnumMap = {
  RichtextTypesRichtextTypes.bold: 'Bold',
  RichtextTypesRichtextTypes.italic: 'Italic',
  RichtextTypesRichtextTypes.$unknown: r'$unknown',
};
