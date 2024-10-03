// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersResponseData _$UsersResponseDataFromJson(Map<String, dynamic> json) =>
    UsersResponseData(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsersResponseDataToJson(UsersResponseData instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
