// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_result_by_screen_name.dart';

part 'profile_response_data.g.dart';

@JsonSerializable()
class ProfileResponseData {
  const ProfileResponseData({
    required this.userResultByScreenName,
  });

  factory ProfileResponseData.fromJson(Map<String, Object?> json) =>
      _$ProfileResponseDataFromJson(json);

  @JsonKey(name: 'user_result_by_screen_name')
  final UserResultByScreenName? userResultByScreenName;

  Map<String, Object?> toJson() => _$ProfileResponseDataToJson(this);
}
