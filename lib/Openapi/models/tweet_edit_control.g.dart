// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_edit_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetEditControlImpl _$$TweetEditControlImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetEditControlImpl(
      editControlInitial: TweetEditControlInitial.fromJson(
          json['edit_control_initial'] as Map<String, dynamic>),
      editTweetIds: (json['edit_tweet_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      editableUntilMsecs: json['editable_until_msecs'] as String,
      editsRemaining: json['edits_remaining'] as String,
      initialTweetId: json['initial_tweet_id'] as String,
      isEditEligible: json['is_edit_eligible'] as bool,
    );

Map<String, dynamic> _$$TweetEditControlImplToJson(
        _$TweetEditControlImpl instance) =>
    <String, dynamic>{
      'edit_control_initial': instance.editControlInitial,
      'edit_tweet_ids': instance.editTweetIds,
      'editable_until_msecs': instance.editableUntilMsecs,
      'edits_remaining': instance.editsRemaining,
      'initial_tweet_id': instance.initialTweetId,
      'is_edit_eligible': instance.isEditEligible,
    };
