// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'additional_media_info_call_to_actions_url.g.dart';

@JsonSerializable()
class AdditionalMediaInfoCallToActionsUrl  {
  const AdditionalMediaInfoCallToActionsUrl({
    required this.url,
  });
  
  factory AdditionalMediaInfoCallToActionsUrl.fromJson(Map<String, Object?> json) => _$AdditionalMediaInfoCallToActionsUrlFromJson(json);
  
  final String url;

  Map<String, Object?> toJson() => _$AdditionalMediaInfoCallToActionsUrlToJson(this);
}
