// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tweet_edit_control_initial.dart';

part 'tweet_edit_control.freezed.dart';
part 'tweet_edit_control.g.dart';

@Freezed()
 class TweetEditControl with _$TweetEditControl {
  const factory TweetEditControl({
    @JsonKey(name: 'edit_control_initial')
    required TweetEditControlInitial editControlInitial,
    @JsonKey(name: 'edit_tweet_ids')
    required List<String> editTweetIds,
    @JsonKey(name: 'editable_until_msecs')
    required String editableUntilMsecs,
    @JsonKey(name: 'edits_remaining')
    required String editsRemaining,
    @JsonKey(name: 'initial_tweet_id')
    required String initialTweetId,
    @JsonKey(name: 'is_edit_eligible')
    required bool isEditEligible,
  }) = _TweetEditControl;
  
  factory TweetEditControl.fromJson(Map<String, Object?> json) => _$TweetEditControlFromJson(json);
}
