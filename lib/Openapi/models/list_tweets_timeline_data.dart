// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'list_tweets_timeline_list.dart';

part 'list_tweets_timeline_data.g.dart';

@JsonSerializable()
class ListTweetsTimelineData  {
  const ListTweetsTimelineData({
    required this.list,
  });
  
  factory ListTweetsTimelineData.fromJson(Map<String, Object?> json) => _$ListTweetsTimelineDataFromJson(json);
  
  final ListTweetsTimelineList list;

  Map<String, Object?> toJson() => _$ListTweetsTimelineDataToJson(this);
}
