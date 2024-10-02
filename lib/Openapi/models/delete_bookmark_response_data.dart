// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_bookmark_response_data.freezed.dart';
part 'delete_bookmark_response_data.g.dart';

@Freezed()
class DeleteBookmarkResponseData with _$DeleteBookmarkResponseData {
  const factory DeleteBookmarkResponseData({
    @JsonKey(name: 'tweet_bookmark_delete')
    required String tweetBookmarkDelete,
  }) = _DeleteBookmarkResponseData;
  
  factory DeleteBookmarkResponseData.fromJson(Map<String, Object?> json) => _$DeleteBookmarkResponseDataFromJson(json);
}
