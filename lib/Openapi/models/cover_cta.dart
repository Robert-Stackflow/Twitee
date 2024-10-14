// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'callback.dart';
import 'cover_cta_button_style.dart';
import 'cta_client_event_info.dart';
import 'timeline_cover_behavior.dart';

part 'cover_cta.g.dart';

@JsonSerializable()
class CoverCta {
  const CoverCta({
    required this.text,
    required this.buttonStyle,
    required this.callbacks,
    required this.clientEventInfo,
    required this.ctaBehavior,
  });

  factory CoverCta.fromJson(Map<String, Object?> json) =>
      _$CoverCtaFromJson(json);

  @JsonKey(name: 'Text')
  final String text;
  final CoverCtaButtonStyle? buttonStyle;
  final List<Callback> callbacks;
  final CtaClientEventInfo clientEventInfo;
  final TimelineCoverBehavior ctaBehavior;

  Map<String, Object?> toJson() => _$CoverCtaToJson(this);
}
