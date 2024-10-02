// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';

part 'tweet_unavailable.freezed.dart';
part 'tweet_unavailable.g.dart';

@Freezed()
class TweetUnavailable with _$TweetUnavailable {
  const factory TweetUnavailable({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
    required String reason,
  }) = _TweetUnavailable;
  
  factory TweetUnavailable.fromJson(Map<String, Object?> json) => _$TweetUnavailableFromJson(json);
}
