// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'note_tweet_result_media_inline_media.g.dart';

@JsonSerializable()
class NoteTweetResultMediaInlineMedia  {
  const NoteTweetResultMediaInlineMedia({
    required this.index,
    required this.mediaId,
  });
  
  factory NoteTweetResultMediaInlineMedia.fromJson(Map<String, Object?> json) => _$NoteTweetResultMediaInlineMediaFromJson(json);
  
  final int index;
  @JsonKey(name: 'media_id')
  final String? mediaId;

  Map<String, Object?> toJson() => _$NoteTweetResultMediaInlineMediaToJson(this);
}
