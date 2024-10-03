// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'delete_retweet_response_data.dart';

part 'delete_retweet_response.g.dart';

@JsonSerializable()
class DeleteRetweetResponse  {
  const DeleteRetweetResponse({
    required this.data,
  });
  
  factory DeleteRetweetResponse.fromJson(Map<String, Object?> json) => _$DeleteRetweetResponseFromJson(json);
  
  final DeleteRetweetResponseData data;

  Map<String, Object?> toJson() => _$DeleteRetweetResponseToJson(this);
}
