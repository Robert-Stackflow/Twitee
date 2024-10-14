// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'social_context_landing_url.dart';
import 'social_context_union.dart';
import 'social_context_union_type.dart';
import 'timeline_general_context_context_type.dart';

part 'timeline_general_context.g.dart';

@JsonSerializable()
class TimelineGeneralContext extends SocialContextUnion {
  const TimelineGeneralContext({
    required this.contextType,
    required this.landingUrl,
    required this.text,
    required this.type,
  });

  factory TimelineGeneralContext.fromJson(Map<String, Object?> json) =>
      _$TimelineGeneralContextFromJson(json);

  final TimelineGeneralContextContextType? contextType;
  final SocialContextLandingUrl? landingUrl;
  final String? text;
  final SocialContextUnionType? type;

  Map<String, Object?> toJson() => _$TimelineGeneralContextToJson(this);
}
