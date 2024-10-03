// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'richtext_types_richtext_types.dart';

part 'note_tweet_result_rich_text_tag.g.dart';

@JsonSerializable()
class NoteTweetResultRichTextTag  {
  const NoteTweetResultRichTextTag({
    required this.fromIndex,
    required this.richtextTypes,
    required this.toIndex,
  });
  
  factory NoteTweetResultRichTextTag.fromJson(Map<String, Object?> json) => _$NoteTweetResultRichTextTagFromJson(json);
  
  @JsonKey(name: 'from_index')
  final int? fromIndex;
  @JsonKey(name: 'richtext_types')
  final List<RichtextTypesRichtextTypes?>? richtextTypes;
  @JsonKey(name: 'to_index')
  final int? toIndex;

  Map<String, Object?> toJson() => _$NoteTweetResultRichTextTagToJson(this);
}
