// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'note_tweet_result_media_inline_media.dart';

part 'note_tweet_result_media.freezed.dart';
part 'note_tweet_result_media.g.dart';

@Freezed()
class NoteTweetResultMedia with _$NoteTweetResultMedia {
  const factory NoteTweetResultMedia({
    @JsonKey(name: 'inline_media')
    required List<NoteTweetResultMediaInlineMedia> inlineMedia,
  }) = _NoteTweetResultMedia;
  
  factory NoteTweetResultMedia.fromJson(Map<String, Object?> json) => _$NoteTweetResultMediaFromJson(json);
}
