// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_retweet_response_result.dart';

part 'delete_retweet_response_data.g.dart';

@JsonSerializable()
class DeleteRetweetResponseData {
  const DeleteRetweetResponseData({
    required this.createRetweet,
  });

  factory DeleteRetweetResponseData.fromJson(Map<String, Object?> json) =>
      _$DeleteRetweetResponseDataFromJson(json);

  @JsonKey(name: 'create_retweet')
  final CreateRetweetResponseResult? createRetweet;

  Map<String, Object?> toJson() => _$DeleteRetweetResponseDataToJson(this);
}
