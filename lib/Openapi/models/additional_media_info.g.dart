// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_media_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdditionalMediaInfoImpl _$$AdditionalMediaInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalMediaInfoImpl(
      callToActions: AdditionalMediaInfoCallToActions.fromJson(
          json['call_to_actions'] as Map<String, dynamic>),
      description: json['description'] as String,
      embeddable: json['embeddable'] as bool,
      monetizable: json['monetizable'] as bool,
      sourceUser:
          UserResultCore.fromJson(json['source_user'] as Map<String, dynamic>),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$AdditionalMediaInfoImplToJson(
        _$AdditionalMediaInfoImpl instance) =>
    <String, dynamic>{
      'call_to_actions': instance.callToActions,
      'description': instance.description,
      'embeddable': instance.embeddable,
      'monetizable': instance.monetizable,
      'source_user': instance.sourceUser,
      'title': instance.title,
    };
