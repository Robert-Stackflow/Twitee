// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'social_context_landing_url.dart';
import 'social_context_union_type.dart';
import 'timeline_general_context_context_type.dart';

part 'timeline_general_context.freezed.dart';
part 'timeline_general_context.g.dart';

@Freezed()
 class TimelineGeneralContext with _$TimelineGeneralContext {
  const factory TimelineGeneralContext({
    required TimelineGeneralContextContextType contextType,
    required SocialContextLandingUrl landingUrl,
    required String text,
    required SocialContextUnionType type,
  }) = _TimelineGeneralContext;
  
  factory TimelineGeneralContext.fromJson(Map<String, Object?> json) => _$TimelineGeneralContextFromJson(json);
}
