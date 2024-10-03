// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'entities.dart';
import 'extended_entities.dart';
import 'item_result.dart';
import 'quoted_status_permalink.dart';
import 'self_thread.dart';
import 'tweet_legacy_limited_actions.dart';
import 'tweet_legacy_scopes.dart';
import 'twitter_time_format.dart';

part 'tweet_legacy.g.dart';

@JsonSerializable()
class TweetLegacy {
  TweetLegacy({
    required this.bookmarkCount,
    required this.bookmarked,
    required this.conversationControl,
    required this.conversationIdStr,
    required this.createdAt,
    required this.displayTextRange,
    required this.entities,
    required this.extendedEntities,
    required this.favoriteCount,
    required this.favorited,
    required this.fullText,
    required this.idStr,
    required this.inReplyToScreenName,
    required this.inReplyToStatusIdStr,
    required this.inReplyToUserIdStr,
    required this.isQuoteStatus,
    required this.lang,
    required this.limitedActions,
    required this.place,
    required this.possiblySensitive,
    required this.possiblySensitiveEditable,
    required this.quoteCount,
    required this.quotedStatusIdStr,
    required this.quotedStatusPermalink,
    required this.replyCount,
    required this.retweetCount,
    required this.retweeted,
    required this.retweetedStatusResult,
    required this.scopes,
    required this.selfThread,
    required this.userIdStr,
  });

  factory TweetLegacy.fromJson(Map<String, Object?> json) =>
      _$TweetLegacyFromJson(json);

  @JsonKey(name: 'bookmark_count')
  int? bookmarkCount;
  bool bookmarked;
  @JsonKey(name: 'conversation_control')
  final dynamic conversationControl;
  @JsonKey(name: 'conversation_id_str')
  final String? conversationIdStr;
  @JsonKey(name: 'created_at')
  final TwitterTimeFormat? createdAt;
  @JsonKey(name: 'display_text_range')
  final List<int?>? displayTextRange;
  final Entities entities;
  @JsonKey(name: 'extended_entities')
  final ExtendedEntities? extendedEntities;
  @JsonKey(name: 'favorite_count')
  int? favoriteCount;
  bool favorited;
  @JsonKey(name: 'full_text')
  final String? fullText;
  @JsonKey(name: 'id_str')
  final String? idStr;
  @JsonKey(name: 'in_reply_to_screen_name')
  final String? inReplyToScreenName;
  @JsonKey(name: 'in_reply_to_status_id_str')
  final String? inReplyToStatusIdStr;
  @JsonKey(name: 'in_reply_to_user_id_str')
  final String? inReplyToUserIdStr;
  @JsonKey(name: 'is_quote_status')
  final bool? isQuoteStatus;
  final String lang;
  @JsonKey(name: 'limited_actions')
  final TweetLegacyLimitedActions? limitedActions;
  final dynamic place;
  @JsonKey(name: 'possibly_sensitive')
  final bool? possiblySensitive;
  @JsonKey(name: 'possibly_sensitive_editable')
  final bool? possiblySensitiveEditable;
  @JsonKey(name: 'quote_count')
  final int? quoteCount;
  @JsonKey(name: 'quoted_status_id_str')
  final String? quotedStatusIdStr;
  @JsonKey(name: 'quoted_status_permalink')
  final QuotedStatusPermalink? quotedStatusPermalink;
  @JsonKey(name: 'reply_count')
  final int? replyCount;
  @JsonKey(name: 'retweet_count')
  int? retweetCount;
  bool retweeted;
  @JsonKey(name: 'retweeted_status_result')
  final ItemResult? retweetedStatusResult;
  final TweetLegacyScopes? scopes;
  @JsonKey(name: 'self_thread')
  final SelfThread? selfThread;
  @JsonKey(name: 'user_id_str')
  final String? userIdStr;

  Map<String, Object?> toJson() => _$TweetLegacyToJson(this);
}
