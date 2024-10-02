// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'additional_media_info_call_to_actions_url.dart';

part 'additional_media_info_call_to_actions.freezed.dart';
part 'additional_media_info_call_to_actions.g.dart';

@Freezed()
 class AdditionalMediaInfoCallToActions with _$AdditionalMediaInfoCallToActions {
  const factory AdditionalMediaInfoCallToActions({
    @JsonKey(name: 'visit_site')
    required AdditionalMediaInfoCallToActionsUrl visitSite,
    @JsonKey(name: 'watch_now')
    required AdditionalMediaInfoCallToActionsUrl watchNow,
  }) = _AdditionalMediaInfoCallToActions;
  
  factory AdditionalMediaInfoCallToActions.fromJson(Map<String, Object?> json) => _$AdditionalMediaInfoCallToActionsFromJson(json);
}
