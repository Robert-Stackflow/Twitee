// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersResponseDataImpl _$$UsersResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersResponseDataImpl(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UsersResponseDataImplToJson(
        _$UsersResponseDataImpl instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
