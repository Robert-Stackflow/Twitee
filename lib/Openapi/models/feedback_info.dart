// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'feedback_info.g.dart';

@JsonSerializable()
class FeedbackInfo  {
  const FeedbackInfo({
    required this.feedbackKeys,
  });
  
  factory FeedbackInfo.fromJson(Map<String, Object?> json) => _$FeedbackInfoFromJson(json);
  
  final List<String?>? feedbackKeys;

  Map<String, Object?> toJson() => _$FeedbackInfoToJson(this);
}
