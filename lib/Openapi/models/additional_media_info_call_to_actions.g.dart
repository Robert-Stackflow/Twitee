// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_media_info_call_to_actions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalMediaInfoCallToActions _$AdditionalMediaInfoCallToActionsFromJson(
        Map<String, dynamic> json) =>
    AdditionalMediaInfoCallToActions(
      visitSite: json['visit_site'] == null
          ? null
          : AdditionalMediaInfoCallToActionsUrl.fromJson(
              json['visit_site'] as Map<String, dynamic>),
      watchNow: json['watch_now'] == null
          ? null
          : AdditionalMediaInfoCallToActionsUrl.fromJson(
              json['watch_now'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdditionalMediaInfoCallToActionsToJson(
        AdditionalMediaInfoCallToActions instance) =>
    <String, dynamic>{
      'visit_site': instance.visitSite,
      'watch_now': instance.watchNow,
    };
