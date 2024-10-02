// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_features.freezed.dart';
part 'user_features.g.dart';

@Freezed()
 class UserFeatures with _$UserFeatures {
  const factory UserFeatures({
    @JsonKey(name: 'mediatool_studio_library')
    required bool mediatoolStudioLibrary,
  }) = _UserFeatures;
  
  factory UserFeatures.fromJson(Map<String, Object?> json) => _$UserFeaturesFromJson(json);
}
