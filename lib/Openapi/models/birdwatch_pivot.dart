// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'birdwatch_pivot_call_to_action.dart';
import 'birdwatch_pivot_footer.dart';
import 'birdwatch_pivot_icon_type.dart';
import 'birdwatch_pivot_note.dart';
import 'birdwatch_pivot_subtitle.dart';
import 'birdwatch_pivot_visual_style.dart';

part 'birdwatch_pivot.freezed.dart';
part 'birdwatch_pivot.g.dart';

@Freezed()
class BirdwatchPivot with _$BirdwatchPivot {
  const factory BirdwatchPivot({
    required BirdwatchPivotCallToAction callToAction,
    required String destinationUrl,
    required BirdwatchPivotFooter footer,
    required BirdwatchPivotIconType iconType,
    required BirdwatchPivotNote note,
    required String shorttitle,
    required BirdwatchPivotSubtitle subtitle,
    required String title,
    required BirdwatchPivotVisualStyle visualStyle,
  }) = _BirdwatchPivot;
  
  factory BirdwatchPivot.fromJson(Map<String, Object?> json) => _$BirdwatchPivotFromJson(json);
}
