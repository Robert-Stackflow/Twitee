// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetViewImpl _$$TweetViewImplFromJson(Map<String, dynamic> json) =>
    _$TweetViewImpl(
      count: json['count'] as String,
      state: TweetViewState.fromJson(json['state'] as String),
    );

Map<String, dynamic> _$$TweetViewImplToJson(_$TweetViewImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'state': _$TweetViewStateEnumMap[instance.state]!,
    };

const _$TweetViewStateEnumMap = {
  TweetViewState.enabled: 'Enabled',
  TweetViewState.enabledWithCount: 'EnabledWithCount',
  TweetViewState.$unknown: r'$unknown',
};
