// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_view_state.dart';

part 'tweet_view.g.dart';

@JsonSerializable()
class TweetView {
  const TweetView({
    required this.count,
    required this.state,
  });

  factory TweetView.fromJson(Map<String, Object?> json) =>
      _$TweetViewFromJson(json);

  final String? count;
  final TweetViewState state;

  Map<String, Object?> toJson() => _$TweetViewToJson(this);
}
