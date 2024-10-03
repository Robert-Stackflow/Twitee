// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_media_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalMediaInfo _$AdditionalMediaInfoFromJson(Map<String, dynamic> json) =>
    AdditionalMediaInfo(
      callToActions: json['call_to_actions'] == null
          ? null
          : AdditionalMediaInfoCallToActions.fromJson(
              json['call_to_actions'] as Map<String, dynamic>),
      description: json['description'] as String?,
      embeddable: json['embeddable'] as bool?,
      monetizable: json['monetizable'] as bool,
      sourceUser: json['source_user'] == null
          ? null
          : UserResultCore.fromJson(
              json['source_user'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$AdditionalMediaInfoToJson(
        AdditionalMediaInfo instance) =>
    <String, dynamic>{
      'call_to_actions': instance.callToActions,
      'description': instance.description,
      'embeddable': instance.embeddable,
      'monetizable': instance.monetizable,
      'source_user': instance.sourceUser,
      'title': instance.title,
    };
