// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_media_info_call_to_actions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdditionalMediaInfoCallToActionsImpl
    _$$AdditionalMediaInfoCallToActionsImplFromJson(
            Map<String, dynamic> json) =>
        _$AdditionalMediaInfoCallToActionsImpl(
          visitSite: AdditionalMediaInfoCallToActionsUrl.fromJson(
              json['visit_site'] as Map<String, dynamic>),
          watchNow: AdditionalMediaInfoCallToActionsUrl.fromJson(
              json['watch_now'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AdditionalMediaInfoCallToActionsImplToJson(
        _$AdditionalMediaInfoCallToActionsImpl instance) =>
    <String, dynamic>{
      'visit_site': instance.visitSite,
      'watch_now': instance.watchNow,
    };
