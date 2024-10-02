// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'legacy.dart';

part 'retweet.freezed.dart';
part 'retweet.g.dart';

@Freezed()
class Retweet with _$Retweet {
  const factory Retweet({
    required Legacy legacy,
    @JsonKey(name: 'rest_id')
    required String restId,
  }) = _Retweet;
  
  factory Retweet.fromJson(Map<String, Object?> json) => _$RetweetFromJson(json);
}
