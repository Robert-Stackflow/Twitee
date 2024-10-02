// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'hashtag.dart';
import 'media.dart';
import 'symbol.dart';
import 'timestamp.dart';
import 'url.dart';
import 'user_mention.dart';

part 'entities.freezed.dart';
part 'entities.g.dart';

@Freezed()
class Entities with _$Entities {
  const factory Entities({
    required List<Hashtag> hashtags,
    required List<Media> media,
    required List<Symbol> symbols,
    required List<Timestamp> timestamps,
    required List<Url> urls,
    @JsonKey(name: 'user_mentions')
    required List<UserMention> userMentions,
  }) = _Entities;
  
  factory Entities.fromJson(Map<String, Object?> json) => _$EntitiesFromJson(json);
}
