// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'community_data.dart';

part 'community.freezed.dart';
part 'community.g.dart';

@Freezed()
class Community with _$Community {
  const factory Community({
    required CommunityData result,
  }) = _Community;
  
  factory Community.fromJson(Map<String, Object?> json) => _$CommunityFromJson(json);
}
