// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'list_tweets_timeline_data.dart';

part 'list_latest_tweets_timeline_response.g.dart';

@JsonSerializable()
class ListLatestTweetsTimelineResponse  {
  const ListLatestTweetsTimelineResponse({
    required this.data,
  });
  
  factory ListLatestTweetsTimelineResponse.fromJson(Map<String, Object?> json) => _$ListLatestTweetsTimelineResponseFromJson(json);
  
  final ListTweetsTimelineData data;

  Map<String, Object?> toJson() => _$ListLatestTweetsTimelineResponseToJson(this);
}
