// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'rich_text.g.dart';

@JsonSerializable()
class RichText {
  const RichText({
    required this.entities,
    required this.text,
  });

  factory RichText.fromJson(Map<String, Object?> json) =>
      _$RichTextFromJson(json);

  final List<dynamic> entities;
  final String text;

  Map<String, Object?> toJson() => _$RichTextToJson(this);
}
