// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'callback.dart';
import 'cover_cta.dart';
import 'text.dart';
import 'timeline_half_cover_half_cover_display_type.dart';
import 'timeline_half_cover_type.dart';

part 'timeline_half_cover.freezed.dart';
part 'timeline_half_cover.g.dart';

@Freezed()
class TimelineHalfCover with _$TimelineHalfCover {
  const factory TimelineHalfCover({
    required bool dismissible,
    required TimelineHalfCoverHalfCoverDisplayType halfCoverDisplayType,
    required List<Callback> impressionCallbacks,
    required CoverCta primaryCoverCta,
    required Text primaryText,
    required Text secondaryText,
    required TimelineHalfCoverType type,
  }) = _TimelineHalfCover;
  
  factory TimelineHalfCover.fromJson(Map<String, Object?> json) => _$TimelineHalfCoverFromJson(json);
}
