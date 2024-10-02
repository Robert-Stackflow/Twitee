// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_highlight.freezed.dart';
part 'text_highlight.g.dart';

@Freezed()
 class TextHighlight with _$TextHighlight {
  const factory TextHighlight({
    required int endIndex,
    required int startIndex,
  }) = _TextHighlight;
  
  factory TextHighlight.fromJson(Map<String, Object?> json) => _$TextHighlightFromJson(json);
}
