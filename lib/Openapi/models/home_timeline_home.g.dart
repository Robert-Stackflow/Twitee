// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_timeline_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTimelineHome _$HomeTimelineHomeFromJson(Map<String, dynamic> json) =>
    HomeTimelineHome(
      homeTimelineUrt: json['home_timeline_urt'] == null
          ? null
          : Timeline.fromJson(
              json['home_timeline_urt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeTimelineHomeToJson(HomeTimelineHome instance) =>
    <String, dynamic>{
      'home_timeline_urt': instance.homeTimelineUrt,
    };
