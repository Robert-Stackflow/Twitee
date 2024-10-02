// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'richtext_types_richtext_types.dart';

part 'note_tweet_result_rich_text_tag.freezed.dart';
part 'note_tweet_result_rich_text_tag.g.dart';

@Freezed()
 class NoteTweetResultRichTextTag with _$NoteTweetResultRichTextTag {
  const factory NoteTweetResultRichTextTag({
    @JsonKey(name: 'from_index')
    required int fromIndex,
    @JsonKey(name: 'richtext_types')
    required List<RichtextTypesRichtextTypes> richtextTypes,
    @JsonKey(name: 'to_index')
    required int toIndex,
  }) = _NoteTweetResultRichTextTag;
  
  factory NoteTweetResultRichTextTag.fromJson(Map<String, Object?> json) => _$NoteTweetResultRichTextTagFromJson(json);
}
