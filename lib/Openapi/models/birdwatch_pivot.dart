// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'birdwatch_pivot_call_to_action.dart';
import 'birdwatch_pivot_footer.dart';
import 'birdwatch_pivot_icon_type.dart';
import 'birdwatch_pivot_note.dart';
import 'birdwatch_pivot_subtitle.dart';
import 'birdwatch_pivot_visual_style.dart';

part 'birdwatch_pivot.g.dart';

@JsonSerializable()
class BirdwatchPivot {
  const BirdwatchPivot({
    required this.callToAction,
    required this.destinationUrl,
    required this.footer,
    required this.iconType,
    required this.note,
    required this.shorttitle,
    required this.subtitle,
    required this.title,
    required this.visualStyle,
  });

  factory BirdwatchPivot.fromJson(Map<String, Object?> json) =>
      _$BirdwatchPivotFromJson(json);

  final BirdwatchPivotCallToAction? callToAction;
  final String destinationUrl;
  final BirdwatchPivotFooter footer;
  final BirdwatchPivotIconType iconType;
  final BirdwatchPivotNote note;
  final String shorttitle;
  final BirdwatchPivotSubtitle subtitle;
  final String title;
  final BirdwatchPivotVisualStyle? visualStyle;

  Map<String, Object?> toJson() => _$BirdwatchPivotToJson(this);
}
