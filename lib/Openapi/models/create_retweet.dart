// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'retweet.dart';

part 'create_retweet.freezed.dart';
part 'create_retweet.g.dart';

@Freezed()
 class CreateRetweet with _$CreateRetweet {
  const factory CreateRetweet({
    required Retweet result,
  }) = _CreateRetweet;
  
  factory CreateRetweet.fromJson(Map<String, Object?> json) => _$CreateRetweetFromJson(json);
}
