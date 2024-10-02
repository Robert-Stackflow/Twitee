// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'list_tweets_timeline_list.dart';

part 'list_tweets_timeline_data.freezed.dart';
part 'list_tweets_timeline_data.g.dart';

@Freezed()
class ListTweetsTimelineData with _$ListTweetsTimelineData {
  const factory ListTweetsTimelineData({
    required ListTweetsTimelineList list,
  }) = _ListTweetsTimelineData;
  
  factory ListTweetsTimelineData.fromJson(Map<String, Object?> json) => _$ListTweetsTimelineDataFromJson(json);
}
