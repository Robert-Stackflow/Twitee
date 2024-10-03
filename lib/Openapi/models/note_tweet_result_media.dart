// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'note_tweet_result_media_inline_media.dart';

part 'note_tweet_result_media.g.dart';

@JsonSerializable()
class NoteTweetResultMedia  {
  const NoteTweetResultMedia({
    required this.inlineMedia,
  });
  
  factory NoteTweetResultMedia.fromJson(Map<String, Object?> json) => _$NoteTweetResultMediaFromJson(json);
  
  @JsonKey(name: 'inline_media')
  final List<NoteTweetResultMediaInlineMedia?>? inlineMedia;

  Map<String, Object?> toJson() => _$NoteTweetResultMediaToJson(this);
}
