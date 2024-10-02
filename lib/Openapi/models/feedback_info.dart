// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_info.freezed.dart';
part 'feedback_info.g.dart';

@Freezed()
class FeedbackInfo with _$FeedbackInfo {
  const factory FeedbackInfo({
    required List<String> feedbackKeys,
  }) = _FeedbackInfo;
  
  factory FeedbackInfo.fromJson(Map<String, Object?> json) => _$FeedbackInfoFromJson(json);
}
