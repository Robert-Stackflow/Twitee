// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_highlights_tweets_data.dart';

part 'user_highlights_tweets_response.g.dart';

@JsonSerializable()
class UserHighlightsTweetsResponse  {
  const UserHighlightsTweetsResponse({
    required this.data,
  });
  
  factory UserHighlightsTweetsResponse.fromJson(Map<String, Object?> json) => _$UserHighlightsTweetsResponseFromJson(json);
  
  final UserHighlightsTweetsData data;

  Map<String, Object?> toJson() => _$UserHighlightsTweetsResponseToJson(this);
}
