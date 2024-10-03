// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteTweet _$NoteTweetFromJson(Map<String, dynamic> json) => NoteTweet(
      isExpandable: json['is_expandable'] as bool?,
      noteTweetResults: json['note_tweet_results'] == null
          ? null
          : NoteTweetResult.fromJson(
              json['note_tweet_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteTweetToJson(NoteTweet instance) => <String, dynamic>{
      'is_expandable': instance.isExpandable,
      'note_tweet_results': instance.noteTweetResults,
    };
