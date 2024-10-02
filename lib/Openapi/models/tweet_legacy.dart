// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';
import 'extended_entities.dart';
import 'item_result.dart';
import 'quoted_status_permalink.dart';
import 'self_thread.dart';
import 'tweet_legacy_limited_actions.dart';
import 'tweet_legacy_scopes.dart';
import 'twitter_time_format.dart';

part 'tweet_legacy.freezed.dart';
part 'tweet_legacy.g.dart';

@Freezed()
 class TweetLegacy with _$TweetLegacy {
  const factory TweetLegacy({
    @JsonKey(name: 'bookmark_count')
    required int bookmarkCount,
    required bool bookmarked,
    @JsonKey(name: 'conversation_control')
    required dynamic conversationControl,
    @JsonKey(name: 'conversation_id_str')
    required String conversationIdStr,
    @JsonKey(name: 'created_at')
    required TwitterTimeFormat createdAt,
    @JsonKey(name: 'display_text_range')
    required List<int> displayTextRange,
    required Entities entities,
    @JsonKey(name: 'extended_entities')
    required ExtendedEntities extendedEntities,
    @JsonKey(name: 'favorite_count')
    required int favoriteCount,
    required bool favorited,
    @JsonKey(name: 'full_text')
    required String fullText,
    @JsonKey(name: 'id_str')
    required String idStr,
    @JsonKey(name: 'in_reply_to_screen_name')
    required String inReplyToScreenName,
    @JsonKey(name: 'in_reply_to_status_id_str')
    required String inReplyToStatusIdStr,
    @JsonKey(name: 'in_reply_to_user_id_str')
    required String inReplyToUserIdStr,
    @JsonKey(name: 'is_quote_status')
    required bool isQuoteStatus,
    required String lang,
    @JsonKey(name: 'limited_actions')
    required TweetLegacyLimitedActions limitedActions,
    required dynamic place,
    @JsonKey(name: 'possibly_sensitive')
    required bool possiblySensitive,
    @JsonKey(name: 'possibly_sensitive_editable')
    required bool possiblySensitiveEditable,
    @JsonKey(name: 'quote_count')
    required int quoteCount,
    @JsonKey(name: 'quoted_status_id_str')
    required String quotedStatusIdStr,
    @JsonKey(name: 'quoted_status_permalink')
    required QuotedStatusPermalink quotedStatusPermalink,
    @JsonKey(name: 'reply_count')
    required int replyCount,
    @JsonKey(name: 'retweet_count')
    required int retweetCount,
    required bool retweeted,
    @JsonKey(name: 'retweeted_status_result')
    required ItemResult retweetedStatusResult,
    required TweetLegacyScopes scopes,
    @JsonKey(name: 'self_thread')
    required SelfThread selfThread,
    @JsonKey(name: 'user_id_str')
    required String userIdStr,
  }) = _TweetLegacy;
  
  factory TweetLegacy.fromJson(Map<String, Object?> json) => _$TweetLegacyFromJson(json);
}
