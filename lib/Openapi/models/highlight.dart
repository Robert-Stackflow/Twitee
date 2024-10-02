// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'text_highlight.dart';

part 'highlight.freezed.dart';
part 'highlight.g.dart';

@Freezed()
 class Highlight with _$Highlight {
  const factory Highlight({
    required List<TextHighlight> textHighlights,
  }) = _Highlight;
  
  factory Highlight.fromJson(Map<String, Object?> json) => _$HighlightFromJson(json);
}
