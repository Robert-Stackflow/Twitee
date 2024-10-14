// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'delete_tweet_response_data.dart';

part 'delete_tweet_response.g.dart';

@JsonSerializable()
class DeleteTweetResponse {
  const DeleteTweetResponse({
    required this.data,
  });

  factory DeleteTweetResponse.fromJson(Map<String, Object?> json) =>
      _$DeleteTweetResponseFromJson(json);

  final DeleteTweetResponseData data;

  Map<String, Object?> toJson() => _$DeleteTweetResponseToJson(this);
}
