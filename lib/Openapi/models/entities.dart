// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'hashtag.dart';
import 'media.dart';
import 'symbol.dart';
import 'timestamp.dart';
import 'url.dart';
import 'user_mention.dart';

part 'entities.g.dart';

@JsonSerializable()
class Entities  {
  const Entities({
    required this.hashtags,
    required this.media,
    required this.symbols,
    required this.timestamps,
    required this.urls,
    required this.userMentions,
  });
  
  factory Entities.fromJson(Map<String, Object?> json) => _$EntitiesFromJson(json);

  factory Entities.fromJsonWithoutMedia(Map<String, Object?> json) => _$EntitiesFromJsonWithoutMedia(json);

  final List<Hashtag> hashtags;
  final List<Media?>? media;
  final List<Symbol> symbols;
  final List<Timestamp?>? timestamps;
  final List<Url> urls;
  @JsonKey(name: 'user_mentions')
  final List<UserMention?>? userMentions;

  Map<String, Object?> toJson() => _$EntitiesToJson(this);
}
