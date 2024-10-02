// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_union.freezed.dart';
part 'tweet_union.g.dart';

@Freezed(unionKey: "null", unionValueCase: FreezedUnionCase.pascal)
abstract class TweetUnion with _$TweetUnion {
  const factory TweetUnion() = _TweetUnion;
  
  factory TweetUnion.fromJson(Map<String, Object?> json) => _$TweetUnionFromJson(json);
}
