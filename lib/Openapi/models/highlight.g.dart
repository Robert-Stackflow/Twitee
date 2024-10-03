// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Highlight _$HighlightFromJson(Map<String, dynamic> json) => Highlight(
      textHighlights: (json['textHighlights'] as List<dynamic>)
          .map((e) => TextHighlight.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HighlightToJson(Highlight instance) => <String, dynamic>{
      'textHighlights': instance.textHighlights,
    };
