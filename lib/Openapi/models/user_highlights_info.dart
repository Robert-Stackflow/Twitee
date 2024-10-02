// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_highlights_info.freezed.dart';
part 'user_highlights_info.g.dart';

@Freezed()
 class UserHighlightsInfo with _$UserHighlightsInfo {
  const factory UserHighlightsInfo({
    @JsonKey(name: 'can_highlight_tweets')
    required bool canHighlightTweets,
    @JsonKey(name: 'highlighted_tweets')
    required String highlightedTweets,
  }) = _UserHighlightsInfo;
  
  factory UserHighlightsInfo.fromJson(Map<String, Object?> json) => _$UserHighlightsInfoFromJson(json);
}
