// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_retweet_response_data.dart';

part 'create_retweet_response.g.dart';

@JsonSerializable()
class CreateRetweetResponse  {
  const CreateRetweetResponse({
    required this.data,
  });
  
  factory CreateRetweetResponse.fromJson(Map<String, Object?> json) => _$CreateRetweetResponseFromJson(json);
  
  final CreateRetweetResponseData data;

  Map<String, Object?> toJson() => _$CreateRetweetResponseToJson(this);
}
