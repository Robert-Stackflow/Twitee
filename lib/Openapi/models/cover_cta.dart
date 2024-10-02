// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'callback.dart';
import 'cover_cta_button_style.dart';
import 'cta_client_event_info.dart';
import 'timeline_cover_behavior.dart';

part 'cover_cta.freezed.dart';
part 'cover_cta.g.dart';

@Freezed()
class CoverCta with _$CoverCta {
  const factory CoverCta({
    @JsonKey(name: 'Text')
    required String text,
    required CoverCtaButtonStyle buttonStyle,
    required List<Callback> callbacks,
    required CtaClientEventInfo clientEventInfo,
    required TimelineCoverBehavior ctaBehavior,
  }) = _CoverCta;
  
  factory CoverCta.fromJson(Map<String, Object?> json) => _$CoverCtaFromJson(json);
}
