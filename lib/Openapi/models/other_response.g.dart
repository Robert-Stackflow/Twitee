// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtherResponse _$OtherResponseFromJson(Map<String, dynamic> json) =>
    OtherResponse(
      session: json['Session'] == null
          ? null
          : Session.fromJson(json['Session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtherResponseToJson(OtherResponse instance) =>
    <String, dynamic>{
      'Session': instance.session,
    };
