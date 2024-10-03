// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'additional_media_info_call_to_actions.dart';
import 'user_result_core.dart';

part 'additional_media_info.g.dart';

@JsonSerializable()
class AdditionalMediaInfo  {
  const AdditionalMediaInfo({
    required this.callToActions,
    required this.description,
    required this.embeddable,
    required this.monetizable,
    required this.sourceUser,
    required this.title,
  });
  
  factory AdditionalMediaInfo.fromJson(Map<String, Object?> json) => _$AdditionalMediaInfoFromJson(json);
  
  @JsonKey(name: 'call_to_actions')
  final AdditionalMediaInfoCallToActions? callToActions;
  final String? description;
  final bool? embeddable;
  final bool monetizable;
  @JsonKey(name: 'source_user')
  final UserResultCore? sourceUser;
  final String? title;

  Map<String, Object?> toJson() => _$AdditionalMediaInfoToJson(this);
}
