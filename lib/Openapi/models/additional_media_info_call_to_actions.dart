// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'additional_media_info_call_to_actions_url.dart';

part 'additional_media_info_call_to_actions.g.dart';

@JsonSerializable()
class AdditionalMediaInfoCallToActions  {
  const AdditionalMediaInfoCallToActions({
    required this.visitSite,
    required this.watchNow,
  });
  
  factory AdditionalMediaInfoCallToActions.fromJson(Map<String, Object?> json) => _$AdditionalMediaInfoCallToActionsFromJson(json);
  
  @JsonKey(name: 'visit_site')
  final AdditionalMediaInfoCallToActionsUrl? visitSite;
  @JsonKey(name: 'watch_now')
  final AdditionalMediaInfoCallToActionsUrl? watchNow;

  Map<String, Object?> toJson() => _$AdditionalMediaInfoCallToActionsToJson(this);
}
