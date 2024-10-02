// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_edit_prespective.freezed.dart';
part 'tweet_edit_prespective.g.dart';

@Freezed()
 class TweetEditPrespective with _$TweetEditPrespective {
  const factory TweetEditPrespective({
    required bool favorited,
    required bool retweeted,
  }) = _TweetEditPrespective;
  
  factory TweetEditPrespective.fromJson(Map<String, Object?> json) => _$TweetEditPrespectiveFromJson(json);
}
