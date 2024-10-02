// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'additional_media_info_call_to_actions.dart';
import 'user_result_core.dart';

part 'additional_media_info.freezed.dart';
part 'additional_media_info.g.dart';

@Freezed()
 class AdditionalMediaInfo with _$AdditionalMediaInfo {
  const factory AdditionalMediaInfo({
    @JsonKey(name: 'call_to_actions')
    required AdditionalMediaInfoCallToActions callToActions,
    required String description,
    required bool embeddable,
    required bool monetizable,
    @JsonKey(name: 'source_user')
    required UserResultCore sourceUser,
    required String title,
  }) = _AdditionalMediaInfo;
  
  factory AdditionalMediaInfo.fromJson(Map<String, Object?> json) => _$AdditionalMediaInfoFromJson(json);
}
