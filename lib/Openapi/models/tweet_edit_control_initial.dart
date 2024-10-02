// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_edit_control_initial.freezed.dart';
part 'tweet_edit_control_initial.g.dart';

@Freezed()
 class TweetEditControlInitial with _$TweetEditControlInitial {
  const factory TweetEditControlInitial({
    @JsonKey(name: 'edit_tweet_ids')
    required List<String> editTweetIds,
    @JsonKey(name: 'editable_until_msecs')
    required String editableUntilMsecs,
    @JsonKey(name: 'edits_remaining')
    required String editsRemaining,
    @JsonKey(name: 'is_edit_eligible')
    required bool isEditEligible,
  }) = _TweetEditControlInitial;
  
  factory TweetEditControlInitial.fromJson(Map<String, Object?> json) => _$TweetEditControlInitialFromJson(json);
}
