// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'text_highlight.g.dart';

@JsonSerializable()
class TextHighlight {
  const TextHighlight({
    required this.endIndex,
    required this.startIndex,
  });

  factory TextHighlight.fromJson(Map<String, Object?> json) =>
      _$TextHighlightFromJson(json);

  final int endIndex;
  final int startIndex;

  Map<String, Object?> toJson() => _$TextHighlightToJson(this);
}
