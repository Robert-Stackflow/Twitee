// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteTweetImpl _$$NoteTweetImplFromJson(Map<String, dynamic> json) =>
    _$NoteTweetImpl(
      isExpandable: json['is_expandable'] as bool,
      noteTweetResults: NoteTweetResult.fromJson(
          json['note_tweet_results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NoteTweetImplToJson(_$NoteTweetImpl instance) =>
    <String, dynamic>{
      'is_expandable': instance.isExpandable,
      'note_tweet_results': instance.noteTweetResults,
    };
