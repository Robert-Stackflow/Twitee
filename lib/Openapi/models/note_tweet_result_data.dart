// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'entities.dart';
import 'note_tweet_result_media.dart';
import 'note_tweet_result_rich_text.dart';

part 'note_tweet_result_data.g.dart';

@JsonSerializable()
class NoteTweetResultData  {
  const NoteTweetResultData({
    required this.entitySet,
    required this.id,
    required this.media,
    required this.richtext,
    required this.text,
  });
  
  factory NoteTweetResultData.fromJson(Map<String, Object?> json) => _$NoteTweetResultDataFromJson(json);
  
  @JsonKey(name: 'entity_set')
  final Entities? entitySet;
  final String id;
  final NoteTweetResultMedia? media;
  final NoteTweetResultRichText? richtext;
  final String text;

  Map<String, Object?> toJson() => _$NoteTweetResultDataToJson(this);
}
