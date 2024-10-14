// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tweet_edit_prespective.g.dart';

@JsonSerializable()
class TweetEditPrespective {
  const TweetEditPrespective({
    required this.favorited,
    required this.retweeted,
  });

  factory TweetEditPrespective.fromJson(Map<String, Object?> json) =>
      _$TweetEditPrespectiveFromJson(json);

  final bool? favorited;
  final bool? retweeted;

  Map<String, Object?> toJson() => _$TweetEditPrespectiveToJson(this);
}
