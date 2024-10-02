// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_edit_control_initial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetEditControlInitialImpl _$$TweetEditControlInitialImplFromJson(
        Map<String, dynamic> json) =>
    _$TweetEditControlInitialImpl(
      editTweetIds: (json['edit_tweet_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      editableUntilMsecs: json['editable_until_msecs'] as String,
      editsRemaining: json['edits_remaining'] as String,
      isEditEligible: json['is_edit_eligible'] as bool,
    );

Map<String, dynamic> _$$TweetEditControlInitialImplToJson(
        _$TweetEditControlInitialImpl instance) =>
    <String, dynamic>{
      'edit_tweet_ids': instance.editTweetIds,
      'editable_until_msecs': instance.editableUntilMsecs,
      'edits_remaining': instance.editsRemaining,
      'is_edit_eligible': instance.isEditEligible,
    };
