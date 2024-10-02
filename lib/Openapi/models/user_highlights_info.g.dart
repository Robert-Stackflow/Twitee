// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_highlights_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserHighlightsInfoImpl _$$UserHighlightsInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserHighlightsInfoImpl(
      canHighlightTweets: json['can_highlight_tweets'] as bool,
      highlightedTweets: json['highlighted_tweets'] as String,
    );

Map<String, dynamic> _$$UserHighlightsInfoImplToJson(
        _$UserHighlightsInfoImpl instance) =>
    <String, dynamic>{
      'can_highlight_tweets': instance.canHighlightTweets,
      'highlighted_tweets': instance.highlightedTweets,
    };
