// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';
import 'note_tweet_result_media.dart';
import 'note_tweet_result_rich_text.dart';

part 'note_tweet_result_data.freezed.dart';
part 'note_tweet_result_data.g.dart';

@Freezed()
class NoteTweetResultData with _$NoteTweetResultData {
  const factory NoteTweetResultData({
    @JsonKey(name: 'entity_set')
    required Entities entitySet,
    required String id,
    required NoteTweetResultMedia media,
    required NoteTweetResultRichText richtext,
    required String text,
  }) = _NoteTweetResultData;
  
  factory NoteTweetResultData.fromJson(Map<String, Object?> json) => _$NoteTweetResultDataFromJson(json);
}
