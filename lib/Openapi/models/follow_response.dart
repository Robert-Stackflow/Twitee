// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'follow_response_data.dart';

part 'follow_response.g.dart';

@JsonSerializable()
class FollowResponse {
  const FollowResponse({
    required this.data,
  });

  factory FollowResponse.fromJson(Map<String, Object?> json) =>
      _$FollowResponseFromJson(json);

  final FollowResponseData data;

  Map<String, Object?> toJson() => _$FollowResponseToJson(this);
}
