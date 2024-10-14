// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'delete_bookmark_response_data.g.dart';

@JsonSerializable()
class DeleteBookmarkResponseData {
  const DeleteBookmarkResponseData({
    required this.tweetBookmarkDelete,
  });

  factory DeleteBookmarkResponseData.fromJson(Map<String, Object?> json) =>
      _$DeleteBookmarkResponseDataFromJson(json);

  @JsonKey(name: 'tweet_bookmark_delete')
  final String? tweetBookmarkDelete;

  Map<String, Object?> toJson() => _$DeleteBookmarkResponseDataToJson(this);
}
