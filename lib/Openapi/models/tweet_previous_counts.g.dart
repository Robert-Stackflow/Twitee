// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_previous_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetPreviousCountsImpl _$$TweetPreviousCountsImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetPreviousCountsImpl(
      bookmarkCount: (json['bookmark_count'] as num).toInt(),
      favoriteCount: (json['favorite_count'] as num).toInt(),
      quoteCount: (json['quote_count'] as num).toInt(),
      replyCount: (json['reply_count'] as num).toInt(),
      retweetCount: (json['retweet_count'] as num).toInt(),
    );

Map<String, dynamic> _$$TweetPreviousCountsImplToJson(
        _$TweetPreviousCountsImpl instance) =>
    <String, dynamic>{
      'bookmark_count': instance.bookmarkCount,
      'favorite_count': instance.favoriteCount,
      'quote_count': instance.quoteCount,
      'reply_count': instance.replyCount,
      'retweet_count': instance.retweetCount,
    };
