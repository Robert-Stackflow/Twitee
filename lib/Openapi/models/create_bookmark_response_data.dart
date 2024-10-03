// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'create_bookmark_response_data.g.dart';

@JsonSerializable()
class CreateBookmarkResponseData  {
  const CreateBookmarkResponseData({
    required this.tweetBookmarkPut,
  });
  
  factory CreateBookmarkResponseData.fromJson(Map<String, Object?> json) => _$CreateBookmarkResponseDataFromJson(json);
  
  @JsonKey(name: 'tweet_bookmark_put')
  final String? tweetBookmarkPut;

  Map<String, Object?> toJson() => _$CreateBookmarkResponseDataToJson(this);
}
