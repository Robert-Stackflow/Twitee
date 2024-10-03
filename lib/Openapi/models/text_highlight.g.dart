// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_highlight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextHighlight _$TextHighlightFromJson(Map<String, dynamic> json) =>
    TextHighlight(
      endIndex: (json['endIndex'] as num).toInt(),
      startIndex: (json['startIndex'] as num).toInt(),
    );

Map<String, dynamic> _$TextHighlightToJson(TextHighlight instance) =>
    <String, dynamic>{
      'endIndex': instance.endIndex,
      'startIndex': instance.startIndex,
    };
