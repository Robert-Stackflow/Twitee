// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'note_tweet_result_rich_text_tag.dart';

part 'note_tweet_result_rich_text.g.dart';

@JsonSerializable()
class NoteTweetResultRichText {
  const NoteTweetResultRichText({
    required this.richtextTags,
  });

  factory NoteTweetResultRichText.fromJson(Map<String, Object?> json) =>
      _$NoteTweetResultRichTextFromJson(json);

  @JsonKey(name: 'richtext_tags')
  final List<NoteTweetResultRichTextTag?>? richtextTags;

  Map<String, Object?> toJson() => _$NoteTweetResultRichTextToJson(this);
}
