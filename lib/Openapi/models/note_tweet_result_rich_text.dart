// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'note_tweet_result_rich_text_tag.dart';

part 'note_tweet_result_rich_text.freezed.dart';
part 'note_tweet_result_rich_text.g.dart';

@Freezed()
class NoteTweetResultRichText with _$NoteTweetResultRichText {
  const factory NoteTweetResultRichText({
    @JsonKey(name: 'richtext_tags')
    required List<NoteTweetResultRichTextTag> richtextTags,
  }) = _NoteTweetResultRichText;
  
  factory NoteTweetResultRichText.fromJson(Map<String, Object?> json) => _$NoteTweetResultRichTextFromJson(json);
}
