// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_highlights_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserHighlightsInfo _$UserHighlightsInfoFromJson(Map<String, dynamic> json) =>
    UserHighlightsInfo(
      canHighlightTweets: json['can_highlight_tweets'] as bool?,
      highlightedTweets: json['highlighted_tweets'] as String?,
    );

Map<String, dynamic> _$UserHighlightsInfoToJson(UserHighlightsInfo instance) =>
    <String, dynamic>{
      'can_highlight_tweets': instance.canHighlightTweets,
      'highlighted_tweets': instance.highlightedTweets,
    };
