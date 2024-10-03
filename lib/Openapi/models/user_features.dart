// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'user_features.g.dart';

@JsonSerializable()
class UserFeatures  {
  const UserFeatures({
    required this.mediatoolStudioLibrary,
  });
  
  factory UserFeatures.fromJson(Map<String, Object?> json) => _$UserFeaturesFromJson(json);
  
  @JsonKey(name: 'mediatool_studio_library')
  final bool? mediatoolStudioLibrary;

  Map<String, Object?> toJson() => _$UserFeaturesToJson(this);
}
