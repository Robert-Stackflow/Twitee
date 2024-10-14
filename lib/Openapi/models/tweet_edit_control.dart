// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tweet_edit_control_initial.dart';

part 'tweet_edit_control.g.dart';

@JsonSerializable()
class TweetEditControl {
  const TweetEditControl({
    required this.editControlInitial,
    required this.editTweetIds,
    required this.editableUntilMsecs,
    required this.editsRemaining,
    required this.initialTweetId,
    required this.isEditEligible,
  });

  factory TweetEditControl.fromJson(Map<String, Object?> json) =>
      _$TweetEditControlFromJson(json);

  @JsonKey(name: 'edit_control_initial')
  final TweetEditControlInitial? editControlInitial;
  @JsonKey(name: 'edit_tweet_ids')
  final List<String?>? editTweetIds;
  @JsonKey(name: 'editable_until_msecs')
  final String? editableUntilMsecs;
  @JsonKey(name: 'edits_remaining')
  final String? editsRemaining;
  @JsonKey(name: 'initial_tweet_id')
  final String? initialTweetId;
  @JsonKey(name: 'is_edit_eligible')
  final bool? isEditEligible;

  Map<String, Object?> toJson() => _$TweetEditControlToJson(this);
}
