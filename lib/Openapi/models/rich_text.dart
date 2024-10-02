// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rich_text.freezed.dart';
part 'rich_text.g.dart';

@Freezed()
 class RichText with _$RichText {
  const factory RichText({
    required List<dynamic> entities,
    required String text,
  }) = _RichText;
  
  factory RichText.fromJson(Map<String, Object?> json) => _$RichTextFromJson(json);
}
