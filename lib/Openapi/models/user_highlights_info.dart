// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'user_highlights_info.g.dart';

@JsonSerializable()
class UserHighlightsInfo {
  const UserHighlightsInfo({
    required this.canHighlightTweets,
    required this.highlightedTweets,
  });

  factory UserHighlightsInfo.fromJson(Map<String, Object?> json) =>
      _$UserHighlightsInfoFromJson(json);

  @JsonKey(name: 'can_highlight_tweets')
  final bool? canHighlightTweets;
  @JsonKey(name: 'highlighted_tweets')
  final String? highlightedTweets;

  Map<String, Object?> toJson() => _$UserHighlightsInfoToJson(this);
}
