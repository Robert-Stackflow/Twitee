// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import



import 'tweet.dart';
import 'tweet_tombstone.dart';
import 'tweet_unavailable.dart';
import 'tweet_with_visibility_results.dart';

abstract class TweetUnion {
  const TweetUnion();
  factory TweetUnion.fromJson(Map<String, Object?> json){
      switch(json['__typename']){
        case "Tweet": 
            return Tweet.fromJson(json);
        case "TweetWithVisibilityResults": 
            return TweetWithVisibilityResults.fromJson(json);
        case "TweetTombstone": 
            return TweetTombstone.fromJson(json);
        case "TweetUnavailable": 
            return TweetUnavailable.fromJson(json);
    
        default:
           throw ArgumentError('Unknown TweetUnion: $json');
      }
  }
  Map<String, Object?> toJson() => {};
}
  