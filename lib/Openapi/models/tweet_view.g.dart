// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetView _$TweetViewFromJson(Map<String, dynamic> json) => TweetView(
      count: json['count'] as String?,
      state: TweetViewState.fromJson(json['state'] as String),
    );

Map<String, dynamic> _$TweetViewToJson(TweetView instance) => <String, dynamic>{
      'count': instance.count,
      'state': _$TweetViewStateEnumMap[instance.state]!,
    };

const _$TweetViewStateEnumMap = {
  TweetViewState.enabled: 'Enabled',
  TweetViewState.enabledWithCount: 'EnabledWithCount',
  TweetViewState.$unknown: r'$unknown',
};
