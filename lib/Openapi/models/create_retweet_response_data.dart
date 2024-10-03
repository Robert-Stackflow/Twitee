// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_retweet_response_result.dart';

part 'create_retweet_response_data.g.dart';

@JsonSerializable()
class CreateRetweetResponseData  {
  const CreateRetweetResponseData({
    required this.createRetweet,
  });
  
  factory CreateRetweetResponseData.fromJson(Map<String, Object?> json) => _$CreateRetweetResponseDataFromJson(json);
  
  @JsonKey(name: 'create_retweet')
  final CreateRetweetResponseResult? createRetweet;

  Map<String, Object?> toJson() => _$CreateRetweetResponseDataToJson(this);
}
