// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_name.dart';

part 'tweet_tombstone.freezed.dart';
part 'tweet_tombstone.g.dart';

@Freezed()
 class TweetTombstone with _$TweetTombstone {
  const factory TweetTombstone({
    @JsonKey(name: '__typename')
    required TypeName privateTypename,
  }) = _TweetTombstone;
  
  factory TweetTombstone.fromJson(Map<String, Object?> json) => _$TweetTombstoneFromJson(json);
}
