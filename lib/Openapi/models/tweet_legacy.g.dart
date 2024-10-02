// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_legacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TweetLegacyImpl _$$TweetLegacyImplFromJson(Map<String, dynamic> json) =>
    _$TweetLegacyImpl(
      bookmarkCount: (json['bookmark_count'] as num).toInt(),
      bookmarked: json['bookmarked'] as bool,
      conversationControl: json['conversation_control'],
      conversationIdStr: json['conversation_id_str'] as String,
      createdAt: json['created_at'] as String,
      displayTextRange: (json['display_text_range'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      entities: Entities.fromJson(json['entities'] as Map<String, dynamic>),
      extendedEntities: ExtendedEntities.fromJson(
          json['extended_entities'] as Map<String, dynamic>),
      favoriteCount: (json['favorite_count'] as num).toInt(),
      favorited: json['favorited'] as bool,
      fullText: json['full_text'] as String,
      idStr: json['id_str'] as String,
      inReplyToScreenName: json['in_reply_to_screen_name'] as String,
      inReplyToStatusIdStr: json['in_reply_to_status_id_str'] as String,
      inReplyToUserIdStr: json['in_reply_to_user_id_str'] as String,
      isQuoteStatus: json['is_quote_status'] as bool,
      lang: json['lang'] as String,
      limitedActions:
          TweetLegacyLimitedActions.fromJson(json['limited_actions'] as String),
      place: json['place'],
      possiblySensitive: json['possibly_sensitive'] as bool,
      possiblySensitiveEditable: json['possibly_sensitive_editable'] as bool,
      quoteCount: (json['quote_count'] as num).toInt(),
      quotedStatusIdStr: json['quoted_status_id_str'] as String,
      quotedStatusPermalink: QuotedStatusPermalink.fromJson(
          json['quoted_status_permalink'] as Map<String, dynamic>),
      replyCount: (json['reply_count'] as num).toInt(),
      retweetCount: (json['retweet_count'] as num).toInt(),
      retweeted: json['retweeted'] as bool,
      retweetedStatusResult: ItemResult.fromJson(
          json['retweeted_status_result'] as Map<String, dynamic>),
      scopes:
          TweetLegacyScopes.fromJson(json['scopes'] as Map<String, dynamic>),
      selfThread:
          SelfThread.fromJson(json['self_thread'] as Map<String, dynamic>),
      userIdStr: json['user_id_str'] as String,
    );

Map<String, dynamic> _$$TweetLegacyImplToJson(_$TweetLegacyImpl instance) =>
    <String, dynamic>{
      'bookmark_count': instance.bookmarkCount,
      'bookmarked': instance.bookmarked,
      'conversation_control': instance.conversationControl,
      'conversation_id_str': instance.conversationIdStr,
      'created_at': instance.createdAt,
      'display_text_range': instance.displayTextRange,
      'entities': instance.entities,
      'extended_entities': instance.extendedEntities,
      'favorite_count': instance.favoriteCount,
      'favorited': instance.favorited,
      'full_text': instance.fullText,
      'id_str': instance.idStr,
      'in_reply_to_screen_name': instance.inReplyToScreenName,
      'in_reply_to_status_id_str': instance.inReplyToStatusIdStr,
      'in_reply_to_user_id_str': instance.inReplyToUserIdStr,
      'is_quote_status': instance.isQuoteStatus,
      'lang': instance.lang,
      'limited_actions':
          _$TweetLegacyLimitedActionsEnumMap[instance.limitedActions]!,
      'place': instance.place,
      'possibly_sensitive': instance.possiblySensitive,
      'possibly_sensitive_editable': instance.possiblySensitiveEditable,
      'quote_count': instance.quoteCount,
      'quoted_status_id_str': instance.quotedStatusIdStr,
      'quoted_status_permalink': instance.quotedStatusPermalink,
      'reply_count': instance.replyCount,
      'retweet_count': instance.retweetCount,
      'retweeted': instance.retweeted,
      'retweeted_status_result': instance.retweetedStatusResult,
      'scopes': instance.scopes,
      'self_thread': instance.selfThread,
      'user_id_str': instance.userIdStr,
    };

const _$TweetLegacyLimitedActionsEnumMap = {
  TweetLegacyLimitedActions.limitedReplies: 'limited_replies',
  TweetLegacyLimitedActions.nonCompliant: 'non_compliant',
  TweetLegacyLimitedActions.dynamicProductAd: 'dynamic_product_ad',
  TweetLegacyLimitedActions.staleTweet: 'stale_tweet',
  TweetLegacyLimitedActions.communityTweetNonMemberPublicCommunity:
      'community_tweet_non_member_public_community',
  TweetLegacyLimitedActions.communityTweetNonMemberClosedCommunity:
      'community_tweet_non_member_closed_community',
  TweetLegacyLimitedActions.$unknown: r'$unknown',
};
