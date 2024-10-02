// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_favoriters_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetFavoritersResponseDataImpl _$$TweetFavoritersResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetFavoritersResponseDataImpl(
      favoritersTimeline: TimelineV.fromJson(
          json['favoriters_timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TweetFavoritersResponseDataImplToJson(
        _$TweetFavoritersResponseDataImpl instance) =>
    <String, dynamic>{
      'favoriters_timeline': instance.favoritersTimeline,
    };
