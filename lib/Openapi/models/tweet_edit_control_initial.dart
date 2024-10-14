// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tweet_edit_control_initial.g.dart';

@JsonSerializable()
class TweetEditControlInitial {
  const TweetEditControlInitial({
    required this.editTweetIds,
    required this.editableUntilMsecs,
    required this.editsRemaining,
    required this.isEditEligible,
  });

  factory TweetEditControlInitial.fromJson(Map<String, Object?> json) =>
      _$TweetEditControlInitialFromJson(json);

  @JsonKey(name: 'edit_tweet_ids')
  final List<String?>? editTweetIds;
  @JsonKey(name: 'editable_until_msecs')
  final String? editableUntilMsecs;
  @JsonKey(name: 'edits_remaining')
  final String? editsRemaining;
  @JsonKey(name: 'is_edit_eligible')
  final bool? isEditEligible;

  Map<String, Object?> toJson() => _$TweetEditControlInitialToJson(this);
}
