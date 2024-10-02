// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_legacy_scopes.freezed.dart';
part 'tweet_legacy_scopes.g.dart';

@Freezed()
class TweetLegacyScopes with _$TweetLegacyScopes {
  const factory TweetLegacyScopes({
    required bool followers,
  }) = _TweetLegacyScopes;
  
  factory TweetLegacyScopes.fromJson(Map<String, Object?> json) => _$TweetLegacyScopesFromJson(json);
}
