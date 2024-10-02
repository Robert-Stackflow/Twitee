// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_bookmark_response_data.freezed.dart';
part 'create_bookmark_response_data.g.dart';

@Freezed()
 class CreateBookmarkResponseData with _$CreateBookmarkResponseData {
  const factory CreateBookmarkResponseData({
    @JsonKey(name: 'tweet_bookmark_put')
    required String tweetBookmarkPut,
  }) = _CreateBookmarkResponseData;
  
  factory CreateBookmarkResponseData.fromJson(Map<String, Object?> json) => _$CreateBookmarkResponseDataFromJson(json);
}
