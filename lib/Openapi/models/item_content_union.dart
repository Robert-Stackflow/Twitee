// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import



import 'package:twitee/Openapi/export.dart';

import 'timeline_community.dart';
import 'timeline_message_prompt.dart';
import 'timeline_prompt.dart';
import 'timeline_timeline_cursor.dart';
import 'timeline_tweet.dart';
import 'timeline_user.dart';

abstract class ItemContentUnion extends ContentUnion{
  const ItemContentUnion();
  factory ItemContentUnion.fromJson(Map<String, Object?> json){
      switch(json['__typename']){
        case "TimelineTweet": 
            return TimelineTweet.fromJson(json);
        case "TimelineTimelineCursor": 
            return TimelineTimelineCursor.fromJson(json);
        case "TimelineUser": 
            return TimelineUser.fromJson(json);
        case "TimelinePrompt": 
            return TimelinePrompt.fromJson(json);
        case "TimelineMessagePrompt": 
            return TimelineMessagePrompt.fromJson(json);
        case "TimelineCommunity": 
            return TimelineCommunity.fromJson(json);
    
        default:
           throw ArgumentError('Unknown ItemContentUnion: $json');
      }
  }
  Map<String, Object?> toJson() => {};
}
  