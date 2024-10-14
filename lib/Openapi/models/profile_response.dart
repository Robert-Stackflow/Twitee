// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'profile_response_data.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  const ProfileResponse({
    required this.data,
  });

  factory ProfileResponse.fromJson(Map<String, Object?> json) =>
      _$ProfileResponseFromJson(json);

  final ProfileResponseData data;

  Map<String, Object?> toJson() => _$ProfileResponseToJson(this);
}
