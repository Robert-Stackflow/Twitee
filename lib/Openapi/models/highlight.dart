// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'text_highlight.dart';

part 'highlight.g.dart';

@JsonSerializable()
class Highlight  {
  const Highlight({
    required this.textHighlights,
  });
  
  factory Highlight.fromJson(Map<String, Object?> json) => _$HighlightFromJson(json);
  
  final List<TextHighlight> textHighlights;

  Map<String, Object?> toJson() => _$HighlightToJson(this);
}
