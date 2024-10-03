// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_timeline_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTimelineResponseData _$HomeTimelineResponseDataFromJson(
        Map<String, dynamic> json) =>
    HomeTimelineResponseData(
      home: HomeTimelineHome.fromJson(json['home'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeTimelineResponseDataToJson(
        HomeTimelineResponseData instance) =>
    <String, dynamic>{
      'home': instance.home,
    };
