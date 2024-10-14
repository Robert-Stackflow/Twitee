// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'callback.dart';
import 'cover_cta.dart';
import 'text.dart';
import 'timeline_half_cover_half_cover_display_type.dart';
import 'timeline_half_cover_type.dart';

part 'timeline_half_cover.g.dart';

@JsonSerializable()
class TimelineHalfCover {
  const TimelineHalfCover({
    required this.dismissible,
    required this.halfCoverDisplayType,
    required this.impressionCallbacks,
    required this.primaryCoverCta,
    required this.primaryText,
    required this.secondaryText,
    required this.type,
  });

  factory TimelineHalfCover.fromJson(Map<String, Object?> json) =>
      _$TimelineHalfCoverFromJson(json);

  final bool dismissible;
  final TimelineHalfCoverHalfCoverDisplayType halfCoverDisplayType;
  final List<Callback> impressionCallbacks;
  final CoverCta primaryCoverCta;
  final TextItem primaryText;
  final TextItem secondaryText;
  final TimelineHalfCoverType type;

  Map<String, Object?> toJson() => _$TimelineHalfCoverToJson(this);
}
