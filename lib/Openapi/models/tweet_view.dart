// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_view_state.dart';

part 'tweet_view.freezed.dart';
part 'tweet_view.g.dart';

@Freezed()
 class TweetView with _$TweetView {
  const factory TweetView({
    required String count,
    required TweetViewState state,
  }) = _TweetView;
  
  factory TweetView.fromJson(Map<String, Object?> json) => _$TweetViewFromJson(json);
}
