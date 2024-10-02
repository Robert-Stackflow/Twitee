// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_tweet_result_media_inline_media.freezed.dart';
part 'note_tweet_result_media_inline_media.g.dart';

@Freezed()
 class NoteTweetResultMediaInlineMedia with _$NoteTweetResultMediaInlineMedia {
  const factory NoteTweetResultMediaInlineMedia({
    required int index,
    @JsonKey(name: 'media_id')
    required String mediaId,
  }) = _NoteTweetResultMediaInlineMedia;
  
  factory NoteTweetResultMediaInlineMedia.fromJson(Map<String, Object?> json) => _$NoteTweetResultMediaInlineMediaFromJson(json);
}
