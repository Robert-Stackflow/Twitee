// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'list_tweets_timeline_data.dart';

part 'list_latest_tweets_timeline_response.freezed.dart';
part 'list_latest_tweets_timeline_response.g.dart';

@Freezed()
 class ListLatestTweetsTimelineResponse with _$ListLatestTweetsTimelineResponse {
  const factory ListLatestTweetsTimelineResponse({
    required ListTweetsTimelineData data,
  }) = _ListLatestTweetsTimelineResponse;
  
  factory ListLatestTweetsTimelineResponse.fromJson(Map<String, Object?> json) => _$ListLatestTweetsTimelineResponseFromJson(json);
}
