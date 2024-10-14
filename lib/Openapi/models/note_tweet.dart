// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'note_tweet_result.dart';

part 'note_tweet.g.dart';

@JsonSerializable()
class NoteTweet {
  const NoteTweet({
    required this.isExpandable,
    required this.noteTweetResults,
  });

  factory NoteTweet.fromJson(Map<String, Object?> json) =>
      _$NoteTweetFromJson(json);

  @JsonKey(name: 'is_expandable')
  final bool? isExpandable;
  @JsonKey(name: 'note_tweet_results')
  final NoteTweetResult? noteTweetResults;

  Map<String, Object?> toJson() => _$NoteTweetToJson(this);
}
