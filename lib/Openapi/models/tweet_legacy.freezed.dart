// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_legacy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetLegacy _$TweetLegacyFromJson(Map<String, dynamic> json) {
  return _TweetLegacy.fromJson(json);
}

/// @nodoc
mixin _$TweetLegacy {
  @JsonKey(name: 'bookmark_count')
  int get bookmarkCount => throw _privateConstructorUsedError;
  bool get bookmarked => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversation_control')
  dynamic get conversationControl => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversation_id_str')
  String get conversationIdStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_text_range')
  List<int> get displayTextRange => throw _privateConstructorUsedError;
  Entities get entities => throw _privateConstructorUsedError;
  @JsonKey(name: 'extended_entities')
  ExtendedEntities get extendedEntities => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite_count')
  int get favoriteCount => throw _privateConstructorUsedError;
  bool get favorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_text')
  String get fullText => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_str')
  String get idStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_reply_to_screen_name')
  String get inReplyToScreenName => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_reply_to_status_id_str')
  String get inReplyToStatusIdStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_reply_to_user_id_str')
  String get inReplyToUserIdStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_quote_status')
  bool get isQuoteStatus => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'limited_actions')
  TweetLegacyLimitedActions get limitedActions =>
      throw _privateConstructorUsedError;
  dynamic get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'possibly_sensitive')
  bool get possiblySensitive => throw _privateConstructorUsedError;
  @JsonKey(name: 'possibly_sensitive_editable')
  bool get possiblySensitiveEditable => throw _privateConstructorUsedError;
  @JsonKey(name: 'quote_count')
  int get quoteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'quoted_status_id_str')
  String get quotedStatusIdStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'quoted_status_permalink')
  QuotedStatusPermalink get quotedStatusPermalink =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_count')
  int get replyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'retweet_count')
  int get retweetCount => throw _privateConstructorUsedError;
  bool get retweeted => throw _privateConstructorUsedError;
  @JsonKey(name: 'retweeted_status_result')
  ItemResult get retweetedStatusResult => throw _privateConstructorUsedError;
  TweetLegacyScopes get scopes => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_thread')
  SelfThread get selfThread => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id_str')
  String get userIdStr => throw _privateConstructorUsedError;

  /// Serializes this TweetLegacy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetLegacyCopyWith<TweetLegacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetLegacyCopyWith<$Res> {
  factory $TweetLegacyCopyWith(
          TweetLegacy value, $Res Function(TweetLegacy) then) =
      _$TweetLegacyCopyWithImpl<$Res, TweetLegacy>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bookmark_count') int bookmarkCount,
      bool bookmarked,
      @JsonKey(name: 'conversation_control') dynamic conversationControl,
      @JsonKey(name: 'conversation_id_str') String conversationIdStr,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'display_text_range') List<int> displayTextRange,
      Entities entities,
      @JsonKey(name: 'extended_entities') ExtendedEntities extendedEntities,
      @JsonKey(name: 'favorite_count') int favoriteCount,
      bool favorited,
      @JsonKey(name: 'full_text') String fullText,
      @JsonKey(name: 'id_str') String idStr,
      @JsonKey(name: 'in_reply_to_screen_name') String inReplyToScreenName,
      @JsonKey(name: 'in_reply_to_status_id_str') String inReplyToStatusIdStr,
      @JsonKey(name: 'in_reply_to_user_id_str') String inReplyToUserIdStr,
      @JsonKey(name: 'is_quote_status') bool isQuoteStatus,
      String lang,
      @JsonKey(name: 'limited_actions')
      TweetLegacyLimitedActions limitedActions,
      dynamic place,
      @JsonKey(name: 'possibly_sensitive') bool possiblySensitive,
      @JsonKey(name: 'possibly_sensitive_editable')
      bool possiblySensitiveEditable,
      @JsonKey(name: 'quote_count') int quoteCount,
      @JsonKey(name: 'quoted_status_id_str') String quotedStatusIdStr,
      @JsonKey(name: 'quoted_status_permalink')
      QuotedStatusPermalink quotedStatusPermalink,
      @JsonKey(name: 'reply_count') int replyCount,
      @JsonKey(name: 'retweet_count') int retweetCount,
      bool retweeted,
      @JsonKey(name: 'retweeted_status_result')
      ItemResult retweetedStatusResult,
      TweetLegacyScopes scopes,
      @JsonKey(name: 'self_thread') SelfThread selfThread,
      @JsonKey(name: 'user_id_str') String userIdStr});

  $EntitiesCopyWith<$Res> get entities;
  $ExtendedEntitiesCopyWith<$Res> get extendedEntities;
  $QuotedStatusPermalinkCopyWith<$Res> get quotedStatusPermalink;
  $ItemResultCopyWith<$Res> get retweetedStatusResult;
  $TweetLegacyScopesCopyWith<$Res> get scopes;
  $SelfThreadCopyWith<$Res> get selfThread;
}

/// @nodoc
class _$TweetLegacyCopyWithImpl<$Res, $Val extends TweetLegacy>
    implements $TweetLegacyCopyWith<$Res> {
  _$TweetLegacyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkCount = null,
    Object? bookmarked = null,
    Object? conversationControl = freezed,
    Object? conversationIdStr = null,
    Object? createdAt = null,
    Object? displayTextRange = null,
    Object? entities = null,
    Object? extendedEntities = null,
    Object? favoriteCount = null,
    Object? favorited = null,
    Object? fullText = null,
    Object? idStr = null,
    Object? inReplyToScreenName = null,
    Object? inReplyToStatusIdStr = null,
    Object? inReplyToUserIdStr = null,
    Object? isQuoteStatus = null,
    Object? lang = null,
    Object? limitedActions = null,
    Object? place = freezed,
    Object? possiblySensitive = null,
    Object? possiblySensitiveEditable = null,
    Object? quoteCount = null,
    Object? quotedStatusIdStr = null,
    Object? quotedStatusPermalink = null,
    Object? replyCount = null,
    Object? retweetCount = null,
    Object? retweeted = null,
    Object? retweetedStatusResult = null,
    Object? scopes = null,
    Object? selfThread = null,
    Object? userIdStr = null,
  }) {
    return _then(_value.copyWith(
      bookmarkCount: null == bookmarkCount
          ? _value.bookmarkCount
          : bookmarkCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookmarked: null == bookmarked
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      conversationControl: freezed == conversationControl
          ? _value.conversationControl
          : conversationControl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      conversationIdStr: null == conversationIdStr
          ? _value.conversationIdStr
          : conversationIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      displayTextRange: null == displayTextRange
          ? _value.displayTextRange
          : displayTextRange // ignore: cast_nullable_to_non_nullable
              as List<int>,
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as Entities,
      extendedEntities: null == extendedEntities
          ? _value.extendedEntities
          : extendedEntities // ignore: cast_nullable_to_non_nullable
              as ExtendedEntities,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      favorited: null == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool,
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
      inReplyToScreenName: null == inReplyToScreenName
          ? _value.inReplyToScreenName
          : inReplyToScreenName // ignore: cast_nullable_to_non_nullable
              as String,
      inReplyToStatusIdStr: null == inReplyToStatusIdStr
          ? _value.inReplyToStatusIdStr
          : inReplyToStatusIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      inReplyToUserIdStr: null == inReplyToUserIdStr
          ? _value.inReplyToUserIdStr
          : inReplyToUserIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      isQuoteStatus: null == isQuoteStatus
          ? _value.isQuoteStatus
          : isQuoteStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      limitedActions: null == limitedActions
          ? _value.limitedActions
          : limitedActions // ignore: cast_nullable_to_non_nullable
              as TweetLegacyLimitedActions,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as dynamic,
      possiblySensitive: null == possiblySensitive
          ? _value.possiblySensitive
          : possiblySensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      possiblySensitiveEditable: null == possiblySensitiveEditable
          ? _value.possiblySensitiveEditable
          : possiblySensitiveEditable // ignore: cast_nullable_to_non_nullable
              as bool,
      quoteCount: null == quoteCount
          ? _value.quoteCount
          : quoteCount // ignore: cast_nullable_to_non_nullable
              as int,
      quotedStatusIdStr: null == quotedStatusIdStr
          ? _value.quotedStatusIdStr
          : quotedStatusIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      quotedStatusPermalink: null == quotedStatusPermalink
          ? _value.quotedStatusPermalink
          : quotedStatusPermalink // ignore: cast_nullable_to_non_nullable
              as QuotedStatusPermalink,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      retweetCount: null == retweetCount
          ? _value.retweetCount
          : retweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      retweeted: null == retweeted
          ? _value.retweeted
          : retweeted // ignore: cast_nullable_to_non_nullable
              as bool,
      retweetedStatusResult: null == retweetedStatusResult
          ? _value.retweetedStatusResult
          : retweetedStatusResult // ignore: cast_nullable_to_non_nullable
              as ItemResult,
      scopes: null == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as TweetLegacyScopes,
      selfThread: null == selfThread
          ? _value.selfThread
          : selfThread // ignore: cast_nullable_to_non_nullable
              as SelfThread,
      userIdStr: null == userIdStr
          ? _value.userIdStr
          : userIdStr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntitiesCopyWith<$Res> get entities {
    return $EntitiesCopyWith<$Res>(_value.entities, (value) {
      return _then(_value.copyWith(entities: value) as $Val);
    });
  }

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtendedEntitiesCopyWith<$Res> get extendedEntities {
    return $ExtendedEntitiesCopyWith<$Res>(_value.extendedEntities, (value) {
      return _then(_value.copyWith(extendedEntities: value) as $Val);
    });
  }

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuotedStatusPermalinkCopyWith<$Res> get quotedStatusPermalink {
    return $QuotedStatusPermalinkCopyWith<$Res>(_value.quotedStatusPermalink,
        (value) {
      return _then(_value.copyWith(quotedStatusPermalink: value) as $Val);
    });
  }

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemResultCopyWith<$Res> get retweetedStatusResult {
    return $ItemResultCopyWith<$Res>(_value.retweetedStatusResult, (value) {
      return _then(_value.copyWith(retweetedStatusResult: value) as $Val);
    });
  }

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetLegacyScopesCopyWith<$Res> get scopes {
    return $TweetLegacyScopesCopyWith<$Res>(_value.scopes, (value) {
      return _then(_value.copyWith(scopes: value) as $Val);
    });
  }

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelfThreadCopyWith<$Res> get selfThread {
    return $SelfThreadCopyWith<$Res>(_value.selfThread, (value) {
      return _then(_value.copyWith(selfThread: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetLegacyImplCopyWith<$Res>
    implements $TweetLegacyCopyWith<$Res> {
  factory _$$TweetLegacyImplCopyWith(
          _$TweetLegacyImpl value, $Res Function(_$TweetLegacyImpl) then) =
      __$$TweetLegacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bookmark_count') int bookmarkCount,
      bool bookmarked,
      @JsonKey(name: 'conversation_control') dynamic conversationControl,
      @JsonKey(name: 'conversation_id_str') String conversationIdStr,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'display_text_range') List<int> displayTextRange,
      Entities entities,
      @JsonKey(name: 'extended_entities') ExtendedEntities extendedEntities,
      @JsonKey(name: 'favorite_count') int favoriteCount,
      bool favorited,
      @JsonKey(name: 'full_text') String fullText,
      @JsonKey(name: 'id_str') String idStr,
      @JsonKey(name: 'in_reply_to_screen_name') String inReplyToScreenName,
      @JsonKey(name: 'in_reply_to_status_id_str') String inReplyToStatusIdStr,
      @JsonKey(name: 'in_reply_to_user_id_str') String inReplyToUserIdStr,
      @JsonKey(name: 'is_quote_status') bool isQuoteStatus,
      String lang,
      @JsonKey(name: 'limited_actions')
      TweetLegacyLimitedActions limitedActions,
      dynamic place,
      @JsonKey(name: 'possibly_sensitive') bool possiblySensitive,
      @JsonKey(name: 'possibly_sensitive_editable')
      bool possiblySensitiveEditable,
      @JsonKey(name: 'quote_count') int quoteCount,
      @JsonKey(name: 'quoted_status_id_str') String quotedStatusIdStr,
      @JsonKey(name: 'quoted_status_permalink')
      QuotedStatusPermalink quotedStatusPermalink,
      @JsonKey(name: 'reply_count') int replyCount,
      @JsonKey(name: 'retweet_count') int retweetCount,
      bool retweeted,
      @JsonKey(name: 'retweeted_status_result')
      ItemResult retweetedStatusResult,
      TweetLegacyScopes scopes,
      @JsonKey(name: 'self_thread') SelfThread selfThread,
      @JsonKey(name: 'user_id_str') String userIdStr});

  @override
  $EntitiesCopyWith<$Res> get entities;
  @override
  $ExtendedEntitiesCopyWith<$Res> get extendedEntities;
  @override
  $QuotedStatusPermalinkCopyWith<$Res> get quotedStatusPermalink;
  @override
  $ItemResultCopyWith<$Res> get retweetedStatusResult;
  @override
  $TweetLegacyScopesCopyWith<$Res> get scopes;
  @override
  $SelfThreadCopyWith<$Res> get selfThread;
}

/// @nodoc
class __$$TweetLegacyImplCopyWithImpl<$Res>
    extends _$TweetLegacyCopyWithImpl<$Res, _$TweetLegacyImpl>
    implements _$$TweetLegacyImplCopyWith<$Res> {
  __$$TweetLegacyImplCopyWithImpl(
      _$TweetLegacyImpl _value, $Res Function(_$TweetLegacyImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkCount = null,
    Object? bookmarked = null,
    Object? conversationControl = freezed,
    Object? conversationIdStr = null,
    Object? createdAt = null,
    Object? displayTextRange = null,
    Object? entities = null,
    Object? extendedEntities = null,
    Object? favoriteCount = null,
    Object? favorited = null,
    Object? fullText = null,
    Object? idStr = null,
    Object? inReplyToScreenName = null,
    Object? inReplyToStatusIdStr = null,
    Object? inReplyToUserIdStr = null,
    Object? isQuoteStatus = null,
    Object? lang = null,
    Object? limitedActions = null,
    Object? place = freezed,
    Object? possiblySensitive = null,
    Object? possiblySensitiveEditable = null,
    Object? quoteCount = null,
    Object? quotedStatusIdStr = null,
    Object? quotedStatusPermalink = null,
    Object? replyCount = null,
    Object? retweetCount = null,
    Object? retweeted = null,
    Object? retweetedStatusResult = null,
    Object? scopes = null,
    Object? selfThread = null,
    Object? userIdStr = null,
  }) {
    return _then(_$TweetLegacyImpl(
      bookmarkCount: null == bookmarkCount
          ? _value.bookmarkCount
          : bookmarkCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookmarked: null == bookmarked
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      conversationControl: freezed == conversationControl
          ? _value.conversationControl
          : conversationControl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      conversationIdStr: null == conversationIdStr
          ? _value.conversationIdStr
          : conversationIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      displayTextRange: null == displayTextRange
          ? _value._displayTextRange
          : displayTextRange // ignore: cast_nullable_to_non_nullable
              as List<int>,
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as Entities,
      extendedEntities: null == extendedEntities
          ? _value.extendedEntities
          : extendedEntities // ignore: cast_nullable_to_non_nullable
              as ExtendedEntities,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      favorited: null == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool,
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
      inReplyToScreenName: null == inReplyToScreenName
          ? _value.inReplyToScreenName
          : inReplyToScreenName // ignore: cast_nullable_to_non_nullable
              as String,
      inReplyToStatusIdStr: null == inReplyToStatusIdStr
          ? _value.inReplyToStatusIdStr
          : inReplyToStatusIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      inReplyToUserIdStr: null == inReplyToUserIdStr
          ? _value.inReplyToUserIdStr
          : inReplyToUserIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      isQuoteStatus: null == isQuoteStatus
          ? _value.isQuoteStatus
          : isQuoteStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      limitedActions: null == limitedActions
          ? _value.limitedActions
          : limitedActions // ignore: cast_nullable_to_non_nullable
              as TweetLegacyLimitedActions,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as dynamic,
      possiblySensitive: null == possiblySensitive
          ? _value.possiblySensitive
          : possiblySensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      possiblySensitiveEditable: null == possiblySensitiveEditable
          ? _value.possiblySensitiveEditable
          : possiblySensitiveEditable // ignore: cast_nullable_to_non_nullable
              as bool,
      quoteCount: null == quoteCount
          ? _value.quoteCount
          : quoteCount // ignore: cast_nullable_to_non_nullable
              as int,
      quotedStatusIdStr: null == quotedStatusIdStr
          ? _value.quotedStatusIdStr
          : quotedStatusIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      quotedStatusPermalink: null == quotedStatusPermalink
          ? _value.quotedStatusPermalink
          : quotedStatusPermalink // ignore: cast_nullable_to_non_nullable
              as QuotedStatusPermalink,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      retweetCount: null == retweetCount
          ? _value.retweetCount
          : retweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      retweeted: null == retweeted
          ? _value.retweeted
          : retweeted // ignore: cast_nullable_to_non_nullable
              as bool,
      retweetedStatusResult: null == retweetedStatusResult
          ? _value.retweetedStatusResult
          : retweetedStatusResult // ignore: cast_nullable_to_non_nullable
              as ItemResult,
      scopes: null == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as TweetLegacyScopes,
      selfThread: null == selfThread
          ? _value.selfThread
          : selfThread // ignore: cast_nullable_to_non_nullable
              as SelfThread,
      userIdStr: null == userIdStr
          ? _value.userIdStr
          : userIdStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetLegacyImpl implements _TweetLegacy {
  const _$TweetLegacyImpl(
      {@JsonKey(name: 'bookmark_count') required this.bookmarkCount,
      required this.bookmarked,
      @JsonKey(name: 'conversation_control') required this.conversationControl,
      @JsonKey(name: 'conversation_id_str') required this.conversationIdStr,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'display_text_range')
      required final List<int> displayTextRange,
      required this.entities,
      @JsonKey(name: 'extended_entities') required this.extendedEntities,
      @JsonKey(name: 'favorite_count') required this.favoriteCount,
      required this.favorited,
      @JsonKey(name: 'full_text') required this.fullText,
      @JsonKey(name: 'id_str') required this.idStr,
      @JsonKey(name: 'in_reply_to_screen_name')
      required this.inReplyToScreenName,
      @JsonKey(name: 'in_reply_to_status_id_str')
      required this.inReplyToStatusIdStr,
      @JsonKey(name: 'in_reply_to_user_id_str')
      required this.inReplyToUserIdStr,
      @JsonKey(name: 'is_quote_status') required this.isQuoteStatus,
      required this.lang,
      @JsonKey(name: 'limited_actions') required this.limitedActions,
      required this.place,
      @JsonKey(name: 'possibly_sensitive') required this.possiblySensitive,
      @JsonKey(name: 'possibly_sensitive_editable')
      required this.possiblySensitiveEditable,
      @JsonKey(name: 'quote_count') required this.quoteCount,
      @JsonKey(name: 'quoted_status_id_str') required this.quotedStatusIdStr,
      @JsonKey(name: 'quoted_status_permalink')
      required this.quotedStatusPermalink,
      @JsonKey(name: 'reply_count') required this.replyCount,
      @JsonKey(name: 'retweet_count') required this.retweetCount,
      required this.retweeted,
      @JsonKey(name: 'retweeted_status_result')
      required this.retweetedStatusResult,
      required this.scopes,
      @JsonKey(name: 'self_thread') required this.selfThread,
      @JsonKey(name: 'user_id_str') required this.userIdStr})
      : _displayTextRange = displayTextRange;

  factory _$TweetLegacyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetLegacyImplFromJson(json);

  @override
  @JsonKey(name: 'bookmark_count')
  final int bookmarkCount;
  @override
  final bool bookmarked;
  @override
  @JsonKey(name: 'conversation_control')
  final dynamic conversationControl;
  @override
  @JsonKey(name: 'conversation_id_str')
  final String conversationIdStr;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  final List<int> _displayTextRange;
  @override
  @JsonKey(name: 'display_text_range')
  List<int> get displayTextRange {
    if (_displayTextRange is EqualUnmodifiableListView)
      return _displayTextRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayTextRange);
  }

  @override
  final Entities entities;
  @override
  @JsonKey(name: 'extended_entities')
  final ExtendedEntities extendedEntities;
  @override
  @JsonKey(name: 'favorite_count')
  final int favoriteCount;
  @override
  final bool favorited;
  @override
  @JsonKey(name: 'full_text')
  final String fullText;
  @override
  @JsonKey(name: 'id_str')
  final String idStr;
  @override
  @JsonKey(name: 'in_reply_to_screen_name')
  final String inReplyToScreenName;
  @override
  @JsonKey(name: 'in_reply_to_status_id_str')
  final String inReplyToStatusIdStr;
  @override
  @JsonKey(name: 'in_reply_to_user_id_str')
  final String inReplyToUserIdStr;
  @override
  @JsonKey(name: 'is_quote_status')
  final bool isQuoteStatus;
  @override
  final String lang;
  @override
  @JsonKey(name: 'limited_actions')
  final TweetLegacyLimitedActions limitedActions;
  @override
  final dynamic place;
  @override
  @JsonKey(name: 'possibly_sensitive')
  final bool possiblySensitive;
  @override
  @JsonKey(name: 'possibly_sensitive_editable')
  final bool possiblySensitiveEditable;
  @override
  @JsonKey(name: 'quote_count')
  final int quoteCount;
  @override
  @JsonKey(name: 'quoted_status_id_str')
  final String quotedStatusIdStr;
  @override
  @JsonKey(name: 'quoted_status_permalink')
  final QuotedStatusPermalink quotedStatusPermalink;
  @override
  @JsonKey(name: 'reply_count')
  final int replyCount;
  @override
  @JsonKey(name: 'retweet_count')
  final int retweetCount;
  @override
  final bool retweeted;
  @override
  @JsonKey(name: 'retweeted_status_result')
  final ItemResult retweetedStatusResult;
  @override
  final TweetLegacyScopes scopes;
  @override
  @JsonKey(name: 'self_thread')
  final SelfThread selfThread;
  @override
  @JsonKey(name: 'user_id_str')
  final String userIdStr;

  @override
  String toString() {
    return 'TweetLegacy(bookmarkCount: $bookmarkCount, bookmarked: $bookmarked, conversationControl: $conversationControl, conversationIdStr: $conversationIdStr, createdAt: $createdAt, displayTextRange: $displayTextRange, entities: $entities, extendedEntities: $extendedEntities, favoriteCount: $favoriteCount, favorited: $favorited, fullText: $fullText, idStr: $idStr, inReplyToScreenName: $inReplyToScreenName, inReplyToStatusIdStr: $inReplyToStatusIdStr, inReplyToUserIdStr: $inReplyToUserIdStr, isQuoteStatus: $isQuoteStatus, lang: $lang, limitedActions: $limitedActions, place: $place, possiblySensitive: $possiblySensitive, possiblySensitiveEditable: $possiblySensitiveEditable, quoteCount: $quoteCount, quotedStatusIdStr: $quotedStatusIdStr, quotedStatusPermalink: $quotedStatusPermalink, replyCount: $replyCount, retweetCount: $retweetCount, retweeted: $retweeted, retweetedStatusResult: $retweetedStatusResult, scopes: $scopes, selfThread: $selfThread, userIdStr: $userIdStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetLegacyImpl &&
            (identical(other.bookmarkCount, bookmarkCount) ||
                other.bookmarkCount == bookmarkCount) &&
            (identical(other.bookmarked, bookmarked) ||
                other.bookmarked == bookmarked) &&
            const DeepCollectionEquality()
                .equals(other.conversationControl, conversationControl) &&
            (identical(other.conversationIdStr, conversationIdStr) ||
                other.conversationIdStr == conversationIdStr) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._displayTextRange, _displayTextRange) &&
            (identical(other.entities, entities) ||
                other.entities == entities) &&
            (identical(other.extendedEntities, extendedEntities) ||
                other.extendedEntities == extendedEntities) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.favorited, favorited) ||
                other.favorited == favorited) &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText) &&
            (identical(other.idStr, idStr) || other.idStr == idStr) &&
            (identical(other.inReplyToScreenName, inReplyToScreenName) ||
                other.inReplyToScreenName == inReplyToScreenName) &&
            (identical(other.inReplyToStatusIdStr, inReplyToStatusIdStr) ||
                other.inReplyToStatusIdStr == inReplyToStatusIdStr) &&
            (identical(other.inReplyToUserIdStr, inReplyToUserIdStr) ||
                other.inReplyToUserIdStr == inReplyToUserIdStr) &&
            (identical(other.isQuoteStatus, isQuoteStatus) ||
                other.isQuoteStatus == isQuoteStatus) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.limitedActions, limitedActions) ||
                other.limitedActions == limitedActions) &&
            const DeepCollectionEquality().equals(other.place, place) &&
            (identical(other.possiblySensitive, possiblySensitive) ||
                other.possiblySensitive == possiblySensitive) &&
            (identical(other.possiblySensitiveEditable,
                    possiblySensitiveEditable) ||
                other.possiblySensitiveEditable == possiblySensitiveEditable) &&
            (identical(other.quoteCount, quoteCount) ||
                other.quoteCount == quoteCount) &&
            (identical(other.quotedStatusIdStr, quotedStatusIdStr) ||
                other.quotedStatusIdStr == quotedStatusIdStr) &&
            (identical(other.quotedStatusPermalink, quotedStatusPermalink) ||
                other.quotedStatusPermalink == quotedStatusPermalink) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.retweetCount, retweetCount) ||
                other.retweetCount == retweetCount) &&
            (identical(other.retweeted, retweeted) ||
                other.retweeted == retweeted) &&
            (identical(other.retweetedStatusResult, retweetedStatusResult) ||
                other.retweetedStatusResult == retweetedStatusResult) &&
            (identical(other.scopes, scopes) || other.scopes == scopes) &&
            (identical(other.selfThread, selfThread) ||
                other.selfThread == selfThread) &&
            (identical(other.userIdStr, userIdStr) ||
                other.userIdStr == userIdStr));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        bookmarkCount,
        bookmarked,
        const DeepCollectionEquality().hash(conversationControl),
        conversationIdStr,
        createdAt,
        const DeepCollectionEquality().hash(_displayTextRange),
        entities,
        extendedEntities,
        favoriteCount,
        favorited,
        fullText,
        idStr,
        inReplyToScreenName,
        inReplyToStatusIdStr,
        inReplyToUserIdStr,
        isQuoteStatus,
        lang,
        limitedActions,
        const DeepCollectionEquality().hash(place),
        possiblySensitive,
        possiblySensitiveEditable,
        quoteCount,
        quotedStatusIdStr,
        quotedStatusPermalink,
        replyCount,
        retweetCount,
        retweeted,
        retweetedStatusResult,
        scopes,
        selfThread,
        userIdStr
      ]);

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetLegacyImplCopyWith<_$TweetLegacyImpl> get copyWith =>
      __$$TweetLegacyImplCopyWithImpl<_$TweetLegacyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetLegacyImplToJson(
      this,
    );
  }
}

abstract class _TweetLegacy implements TweetLegacy {
  const factory _TweetLegacy(
          {@JsonKey(name: 'bookmark_count') required final int bookmarkCount,
          required final bool bookmarked,
          @JsonKey(name: 'conversation_control')
          required final dynamic conversationControl,
          @JsonKey(name: 'conversation_id_str')
          required final String conversationIdStr,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'display_text_range')
          required final List<int> displayTextRange,
          required final Entities entities,
          @JsonKey(name: 'extended_entities')
          required final ExtendedEntities extendedEntities,
          @JsonKey(name: 'favorite_count') required final int favoriteCount,
          required final bool favorited,
          @JsonKey(name: 'full_text') required final String fullText,
          @JsonKey(name: 'id_str') required final String idStr,
          @JsonKey(name: 'in_reply_to_screen_name')
          required final String inReplyToScreenName,
          @JsonKey(name: 'in_reply_to_status_id_str')
          required final String inReplyToStatusIdStr,
          @JsonKey(name: 'in_reply_to_user_id_str')
          required final String inReplyToUserIdStr,
          @JsonKey(name: 'is_quote_status') required final bool isQuoteStatus,
          required final String lang,
          @JsonKey(name: 'limited_actions')
          required final TweetLegacyLimitedActions limitedActions,
          required final dynamic place,
          @JsonKey(name: 'possibly_sensitive')
          required final bool possiblySensitive,
          @JsonKey(name: 'possibly_sensitive_editable')
          required final bool possiblySensitiveEditable,
          @JsonKey(name: 'quote_count') required final int quoteCount,
          @JsonKey(name: 'quoted_status_id_str')
          required final String quotedStatusIdStr,
          @JsonKey(name: 'quoted_status_permalink')
          required final QuotedStatusPermalink quotedStatusPermalink,
          @JsonKey(name: 'reply_count') required final int replyCount,
          @JsonKey(name: 'retweet_count') required final int retweetCount,
          required final bool retweeted,
          @JsonKey(name: 'retweeted_status_result')
          required final ItemResult retweetedStatusResult,
          required final TweetLegacyScopes scopes,
          @JsonKey(name: 'self_thread') required final SelfThread selfThread,
          @JsonKey(name: 'user_id_str') required final String userIdStr}) =
      _$TweetLegacyImpl;

  factory _TweetLegacy.fromJson(Map<String, dynamic> json) =
      _$TweetLegacyImpl.fromJson;

  @override
  @JsonKey(name: 'bookmark_count')
  int get bookmarkCount;
  @override
  bool get bookmarked;
  @override
  @JsonKey(name: 'conversation_control')
  dynamic get conversationControl;
  @override
  @JsonKey(name: 'conversation_id_str')
  String get conversationIdStr;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'display_text_range')
  List<int> get displayTextRange;
  @override
  Entities get entities;
  @override
  @JsonKey(name: 'extended_entities')
  ExtendedEntities get extendedEntities;
  @override
  @JsonKey(name: 'favorite_count')
  int get favoriteCount;
  @override
  bool get favorited;
  @override
  @JsonKey(name: 'full_text')
  String get fullText;
  @override
  @JsonKey(name: 'id_str')
  String get idStr;
  @override
  @JsonKey(name: 'in_reply_to_screen_name')
  String get inReplyToScreenName;
  @override
  @JsonKey(name: 'in_reply_to_status_id_str')
  String get inReplyToStatusIdStr;
  @override
  @JsonKey(name: 'in_reply_to_user_id_str')
  String get inReplyToUserIdStr;
  @override
  @JsonKey(name: 'is_quote_status')
  bool get isQuoteStatus;
  @override
  String get lang;
  @override
  @JsonKey(name: 'limited_actions')
  TweetLegacyLimitedActions get limitedActions;
  @override
  dynamic get place;
  @override
  @JsonKey(name: 'possibly_sensitive')
  bool get possiblySensitive;
  @override
  @JsonKey(name: 'possibly_sensitive_editable')
  bool get possiblySensitiveEditable;
  @override
  @JsonKey(name: 'quote_count')
  int get quoteCount;
  @override
  @JsonKey(name: 'quoted_status_id_str')
  String get quotedStatusIdStr;
  @override
  @JsonKey(name: 'quoted_status_permalink')
  QuotedStatusPermalink get quotedStatusPermalink;
  @override
  @JsonKey(name: 'reply_count')
  int get replyCount;
  @override
  @JsonKey(name: 'retweet_count')
  int get retweetCount;
  @override
  bool get retweeted;
  @override
  @JsonKey(name: 'retweeted_status_result')
  ItemResult get retweetedStatusResult;
  @override
  TweetLegacyScopes get scopes;
  @override
  @JsonKey(name: 'self_thread')
  SelfThread get selfThread;
  @override
  @JsonKey(name: 'user_id_str')
  String get userIdStr;

  /// Create a copy of TweetLegacy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetLegacyImplCopyWith<_$TweetLegacyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
