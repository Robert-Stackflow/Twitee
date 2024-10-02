// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tweet _$TweetFromJson(Map<String, dynamic> json) {
  return _Tweet.fromJson(json);
}

/// @nodoc
mixin _$Tweet {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  Article get article => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_community_relationship')
  AuthorCommunityRelationship get authorCommunityRelationship =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'birdwatch_pivot')
  BirdwatchPivot get birdwatchPivot => throw _privateConstructorUsedError;
  TweetCard get card => throw _privateConstructorUsedError;
  @JsonKey(name: 'community_results')
  Community get communityResults => throw _privateConstructorUsedError;
  UserResultCore get core => throw _privateConstructorUsedError;
  @JsonKey(name: 'edit_control')
  TweetEditControl get editControl => throw _privateConstructorUsedError;
  @JsonKey(name: 'edit_prespective')
  TweetEditPrespective get editPrespective =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'has_birdwatch_notes')
  bool get hasBirdwatchNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_translatable')
  bool get isTranslatable => throw _privateConstructorUsedError;
  TweetLegacy get legacy => throw _privateConstructorUsedError;
  @JsonKey(name: 'note_tweet')
  NoteTweet get noteTweet => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_counts')
  TweetPreviousCounts get previousCounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'quick_promote_eligibility')
  dynamic get quickPromoteEligibility => throw _privateConstructorUsedError;
  QuotedRefResult get quotedRefResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'quoted_status_result')
  ItemResult get quotedStatusResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_id')
  String get restId => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  SuperFollowsReplyUserResult get superFollowsReplyUserResult =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'unified_card')
  UnifiedCard get unifiedCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'unmention_data')
  dynamic get unmentionData => throw _privateConstructorUsedError;
  TweetView get views => throw _privateConstructorUsedError;

  /// Serializes this Tweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCopyWith<Tweet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCopyWith<$Res> {
  factory $TweetCopyWith(Tweet value, $Res Function(Tweet) then) =
      _$TweetCopyWithImpl<$Res, Tweet>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      Article article,
      @JsonKey(name: 'author_community_relationship')
      AuthorCommunityRelationship authorCommunityRelationship,
      @JsonKey(name: 'birdwatch_pivot') BirdwatchPivot birdwatchPivot,
      TweetCard card,
      @JsonKey(name: 'community_results') Community communityResults,
      UserResultCore core,
      @JsonKey(name: 'edit_control') TweetEditControl editControl,
      @JsonKey(name: 'edit_prespective') TweetEditPrespective editPrespective,
      @JsonKey(name: 'has_birdwatch_notes') bool hasBirdwatchNotes,
      @JsonKey(name: 'is_translatable') bool isTranslatable,
      TweetLegacy legacy,
      @JsonKey(name: 'note_tweet') NoteTweet noteTweet,
      @JsonKey(name: 'previous_counts') TweetPreviousCounts previousCounts,
      @JsonKey(name: 'quick_promote_eligibility')
      dynamic quickPromoteEligibility,
      QuotedRefResult quotedRefResult,
      @JsonKey(name: 'quoted_status_result') ItemResult quotedStatusResult,
      @JsonKey(name: 'rest_id') String restId,
      String source,
      SuperFollowsReplyUserResult superFollowsReplyUserResult,
      @JsonKey(name: 'unified_card') UnifiedCard unifiedCard,
      @JsonKey(name: 'unmention_data') dynamic unmentionData,
      TweetView views});

  $ArticleCopyWith<$Res> get article;
  $AuthorCommunityRelationshipCopyWith<$Res> get authorCommunityRelationship;
  $BirdwatchPivotCopyWith<$Res> get birdwatchPivot;
  $TweetCardCopyWith<$Res> get card;
  $CommunityCopyWith<$Res> get communityResults;
  $UserResultCoreCopyWith<$Res> get core;
  $TweetEditControlCopyWith<$Res> get editControl;
  $TweetEditPrespectiveCopyWith<$Res> get editPrespective;
  $TweetLegacyCopyWith<$Res> get legacy;
  $NoteTweetCopyWith<$Res> get noteTweet;
  $TweetPreviousCountsCopyWith<$Res> get previousCounts;
  $QuotedRefResultCopyWith<$Res> get quotedRefResult;
  $ItemResultCopyWith<$Res> get quotedStatusResult;
  $SuperFollowsReplyUserResultCopyWith<$Res> get superFollowsReplyUserResult;
  $UnifiedCardCopyWith<$Res> get unifiedCard;
  $TweetViewCopyWith<$Res> get views;
}

/// @nodoc
class _$TweetCopyWithImpl<$Res, $Val extends Tweet>
    implements $TweetCopyWith<$Res> {
  _$TweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? article = null,
    Object? authorCommunityRelationship = null,
    Object? birdwatchPivot = null,
    Object? card = null,
    Object? communityResults = null,
    Object? core = null,
    Object? editControl = null,
    Object? editPrespective = null,
    Object? hasBirdwatchNotes = null,
    Object? isTranslatable = null,
    Object? legacy = null,
    Object? noteTweet = null,
    Object? previousCounts = null,
    Object? quickPromoteEligibility = freezed,
    Object? quotedRefResult = null,
    Object? quotedStatusResult = null,
    Object? restId = null,
    Object? source = null,
    Object? superFollowsReplyUserResult = null,
    Object? unifiedCard = null,
    Object? unmentionData = freezed,
    Object? views = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
      authorCommunityRelationship: null == authorCommunityRelationship
          ? _value.authorCommunityRelationship
          : authorCommunityRelationship // ignore: cast_nullable_to_non_nullable
              as AuthorCommunityRelationship,
      birdwatchPivot: null == birdwatchPivot
          ? _value.birdwatchPivot
          : birdwatchPivot // ignore: cast_nullable_to_non_nullable
              as BirdwatchPivot,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as TweetCard,
      communityResults: null == communityResults
          ? _value.communityResults
          : communityResults // ignore: cast_nullable_to_non_nullable
              as Community,
      core: null == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as UserResultCore,
      editControl: null == editControl
          ? _value.editControl
          : editControl // ignore: cast_nullable_to_non_nullable
              as TweetEditControl,
      editPrespective: null == editPrespective
          ? _value.editPrespective
          : editPrespective // ignore: cast_nullable_to_non_nullable
              as TweetEditPrespective,
      hasBirdwatchNotes: null == hasBirdwatchNotes
          ? _value.hasBirdwatchNotes
          : hasBirdwatchNotes // ignore: cast_nullable_to_non_nullable
              as bool,
      isTranslatable: null == isTranslatable
          ? _value.isTranslatable
          : isTranslatable // ignore: cast_nullable_to_non_nullable
              as bool,
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as TweetLegacy,
      noteTweet: null == noteTweet
          ? _value.noteTweet
          : noteTweet // ignore: cast_nullable_to_non_nullable
              as NoteTweet,
      previousCounts: null == previousCounts
          ? _value.previousCounts
          : previousCounts // ignore: cast_nullable_to_non_nullable
              as TweetPreviousCounts,
      quickPromoteEligibility: freezed == quickPromoteEligibility
          ? _value.quickPromoteEligibility
          : quickPromoteEligibility // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quotedRefResult: null == quotedRefResult
          ? _value.quotedRefResult
          : quotedRefResult // ignore: cast_nullable_to_non_nullable
              as QuotedRefResult,
      quotedStatusResult: null == quotedStatusResult
          ? _value.quotedStatusResult
          : quotedStatusResult // ignore: cast_nullable_to_non_nullable
              as ItemResult,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      superFollowsReplyUserResult: null == superFollowsReplyUserResult
          ? _value.superFollowsReplyUserResult
          : superFollowsReplyUserResult // ignore: cast_nullable_to_non_nullable
              as SuperFollowsReplyUserResult,
      unifiedCard: null == unifiedCard
          ? _value.unifiedCard
          : unifiedCard // ignore: cast_nullable_to_non_nullable
              as UnifiedCard,
      unmentionData: freezed == unmentionData
          ? _value.unmentionData
          : unmentionData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as TweetView,
    ) as $Val);
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCommunityRelationshipCopyWith<$Res> get authorCommunityRelationship {
    return $AuthorCommunityRelationshipCopyWith<$Res>(
        _value.authorCommunityRelationship, (value) {
      return _then(_value.copyWith(authorCommunityRelationship: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdwatchPivotCopyWith<$Res> get birdwatchPivot {
    return $BirdwatchPivotCopyWith<$Res>(_value.birdwatchPivot, (value) {
      return _then(_value.copyWith(birdwatchPivot: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetCardCopyWith<$Res> get card {
    return $TweetCardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<$Res> get communityResults {
    return $CommunityCopyWith<$Res>(_value.communityResults, (value) {
      return _then(_value.copyWith(communityResults: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResultCoreCopyWith<$Res> get core {
    return $UserResultCoreCopyWith<$Res>(_value.core, (value) {
      return _then(_value.copyWith(core: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetEditControlCopyWith<$Res> get editControl {
    return $TweetEditControlCopyWith<$Res>(_value.editControl, (value) {
      return _then(_value.copyWith(editControl: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetEditPrespectiveCopyWith<$Res> get editPrespective {
    return $TweetEditPrespectiveCopyWith<$Res>(_value.editPrespective, (value) {
      return _then(_value.copyWith(editPrespective: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetLegacyCopyWith<$Res> get legacy {
    return $TweetLegacyCopyWith<$Res>(_value.legacy, (value) {
      return _then(_value.copyWith(legacy: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteTweetCopyWith<$Res> get noteTweet {
    return $NoteTweetCopyWith<$Res>(_value.noteTweet, (value) {
      return _then(_value.copyWith(noteTweet: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetPreviousCountsCopyWith<$Res> get previousCounts {
    return $TweetPreviousCountsCopyWith<$Res>(_value.previousCounts, (value) {
      return _then(_value.copyWith(previousCounts: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuotedRefResultCopyWith<$Res> get quotedRefResult {
    return $QuotedRefResultCopyWith<$Res>(_value.quotedRefResult, (value) {
      return _then(_value.copyWith(quotedRefResult: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemResultCopyWith<$Res> get quotedStatusResult {
    return $ItemResultCopyWith<$Res>(_value.quotedStatusResult, (value) {
      return _then(_value.copyWith(quotedStatusResult: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuperFollowsReplyUserResultCopyWith<$Res> get superFollowsReplyUserResult {
    return $SuperFollowsReplyUserResultCopyWith<$Res>(
        _value.superFollowsReplyUserResult, (value) {
      return _then(_value.copyWith(superFollowsReplyUserResult: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnifiedCardCopyWith<$Res> get unifiedCard {
    return $UnifiedCardCopyWith<$Res>(_value.unifiedCard, (value) {
      return _then(_value.copyWith(unifiedCard: value) as $Val);
    });
  }

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetViewCopyWith<$Res> get views {
    return $TweetViewCopyWith<$Res>(_value.views, (value) {
      return _then(_value.copyWith(views: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetImplCopyWith<$Res> implements $TweetCopyWith<$Res> {
  factory _$$TweetImplCopyWith(
          _$TweetImpl value, $Res Function(_$TweetImpl) then) =
      __$$TweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      Article article,
      @JsonKey(name: 'author_community_relationship')
      AuthorCommunityRelationship authorCommunityRelationship,
      @JsonKey(name: 'birdwatch_pivot') BirdwatchPivot birdwatchPivot,
      TweetCard card,
      @JsonKey(name: 'community_results') Community communityResults,
      UserResultCore core,
      @JsonKey(name: 'edit_control') TweetEditControl editControl,
      @JsonKey(name: 'edit_prespective') TweetEditPrespective editPrespective,
      @JsonKey(name: 'has_birdwatch_notes') bool hasBirdwatchNotes,
      @JsonKey(name: 'is_translatable') bool isTranslatable,
      TweetLegacy legacy,
      @JsonKey(name: 'note_tweet') NoteTweet noteTweet,
      @JsonKey(name: 'previous_counts') TweetPreviousCounts previousCounts,
      @JsonKey(name: 'quick_promote_eligibility')
      dynamic quickPromoteEligibility,
      QuotedRefResult quotedRefResult,
      @JsonKey(name: 'quoted_status_result') ItemResult quotedStatusResult,
      @JsonKey(name: 'rest_id') String restId,
      String source,
      SuperFollowsReplyUserResult superFollowsReplyUserResult,
      @JsonKey(name: 'unified_card') UnifiedCard unifiedCard,
      @JsonKey(name: 'unmention_data') dynamic unmentionData,
      TweetView views});

  @override
  $ArticleCopyWith<$Res> get article;
  @override
  $AuthorCommunityRelationshipCopyWith<$Res> get authorCommunityRelationship;
  @override
  $BirdwatchPivotCopyWith<$Res> get birdwatchPivot;
  @override
  $TweetCardCopyWith<$Res> get card;
  @override
  $CommunityCopyWith<$Res> get communityResults;
  @override
  $UserResultCoreCopyWith<$Res> get core;
  @override
  $TweetEditControlCopyWith<$Res> get editControl;
  @override
  $TweetEditPrespectiveCopyWith<$Res> get editPrespective;
  @override
  $TweetLegacyCopyWith<$Res> get legacy;
  @override
  $NoteTweetCopyWith<$Res> get noteTweet;
  @override
  $TweetPreviousCountsCopyWith<$Res> get previousCounts;
  @override
  $QuotedRefResultCopyWith<$Res> get quotedRefResult;
  @override
  $ItemResultCopyWith<$Res> get quotedStatusResult;
  @override
  $SuperFollowsReplyUserResultCopyWith<$Res> get superFollowsReplyUserResult;
  @override
  $UnifiedCardCopyWith<$Res> get unifiedCard;
  @override
  $TweetViewCopyWith<$Res> get views;
}

/// @nodoc
class __$$TweetImplCopyWithImpl<$Res>
    extends _$TweetCopyWithImpl<$Res, _$TweetImpl>
    implements _$$TweetImplCopyWith<$Res> {
  __$$TweetImplCopyWithImpl(
      _$TweetImpl _value, $Res Function(_$TweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? article = null,
    Object? authorCommunityRelationship = null,
    Object? birdwatchPivot = null,
    Object? card = null,
    Object? communityResults = null,
    Object? core = null,
    Object? editControl = null,
    Object? editPrespective = null,
    Object? hasBirdwatchNotes = null,
    Object? isTranslatable = null,
    Object? legacy = null,
    Object? noteTweet = null,
    Object? previousCounts = null,
    Object? quickPromoteEligibility = freezed,
    Object? quotedRefResult = null,
    Object? quotedStatusResult = null,
    Object? restId = null,
    Object? source = null,
    Object? superFollowsReplyUserResult = null,
    Object? unifiedCard = null,
    Object? unmentionData = freezed,
    Object? views = null,
  }) {
    return _then(_$TweetImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
      authorCommunityRelationship: null == authorCommunityRelationship
          ? _value.authorCommunityRelationship
          : authorCommunityRelationship // ignore: cast_nullable_to_non_nullable
              as AuthorCommunityRelationship,
      birdwatchPivot: null == birdwatchPivot
          ? _value.birdwatchPivot
          : birdwatchPivot // ignore: cast_nullable_to_non_nullable
              as BirdwatchPivot,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as TweetCard,
      communityResults: null == communityResults
          ? _value.communityResults
          : communityResults // ignore: cast_nullable_to_non_nullable
              as Community,
      core: null == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as UserResultCore,
      editControl: null == editControl
          ? _value.editControl
          : editControl // ignore: cast_nullable_to_non_nullable
              as TweetEditControl,
      editPrespective: null == editPrespective
          ? _value.editPrespective
          : editPrespective // ignore: cast_nullable_to_non_nullable
              as TweetEditPrespective,
      hasBirdwatchNotes: null == hasBirdwatchNotes
          ? _value.hasBirdwatchNotes
          : hasBirdwatchNotes // ignore: cast_nullable_to_non_nullable
              as bool,
      isTranslatable: null == isTranslatable
          ? _value.isTranslatable
          : isTranslatable // ignore: cast_nullable_to_non_nullable
              as bool,
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as TweetLegacy,
      noteTweet: null == noteTweet
          ? _value.noteTweet
          : noteTweet // ignore: cast_nullable_to_non_nullable
              as NoteTweet,
      previousCounts: null == previousCounts
          ? _value.previousCounts
          : previousCounts // ignore: cast_nullable_to_non_nullable
              as TweetPreviousCounts,
      quickPromoteEligibility: freezed == quickPromoteEligibility
          ? _value.quickPromoteEligibility
          : quickPromoteEligibility // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quotedRefResult: null == quotedRefResult
          ? _value.quotedRefResult
          : quotedRefResult // ignore: cast_nullable_to_non_nullable
              as QuotedRefResult,
      quotedStatusResult: null == quotedStatusResult
          ? _value.quotedStatusResult
          : quotedStatusResult // ignore: cast_nullable_to_non_nullable
              as ItemResult,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      superFollowsReplyUserResult: null == superFollowsReplyUserResult
          ? _value.superFollowsReplyUserResult
          : superFollowsReplyUserResult // ignore: cast_nullable_to_non_nullable
              as SuperFollowsReplyUserResult,
      unifiedCard: null == unifiedCard
          ? _value.unifiedCard
          : unifiedCard // ignore: cast_nullable_to_non_nullable
              as UnifiedCard,
      unmentionData: freezed == unmentionData
          ? _value.unmentionData
          : unmentionData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as TweetView,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetImpl implements _Tweet {
  const _$TweetImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.article,
      @JsonKey(name: 'author_community_relationship')
      required this.authorCommunityRelationship,
      @JsonKey(name: 'birdwatch_pivot') required this.birdwatchPivot,
      required this.card,
      @JsonKey(name: 'community_results') required this.communityResults,
      required this.core,
      @JsonKey(name: 'edit_control') required this.editControl,
      @JsonKey(name: 'edit_prespective') required this.editPrespective,
      @JsonKey(name: 'has_birdwatch_notes') required this.hasBirdwatchNotes,
      @JsonKey(name: 'is_translatable') required this.isTranslatable,
      required this.legacy,
      @JsonKey(name: 'note_tweet') required this.noteTweet,
      @JsonKey(name: 'previous_counts') required this.previousCounts,
      @JsonKey(name: 'quick_promote_eligibility')
      required this.quickPromoteEligibility,
      required this.quotedRefResult,
      @JsonKey(name: 'quoted_status_result') required this.quotedStatusResult,
      @JsonKey(name: 'rest_id') required this.restId,
      required this.source,
      required this.superFollowsReplyUserResult,
      @JsonKey(name: 'unified_card') required this.unifiedCard,
      @JsonKey(name: 'unmention_data') required this.unmentionData,
      required this.views});

  factory _$TweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final Article article;
  @override
  @JsonKey(name: 'author_community_relationship')
  final AuthorCommunityRelationship authorCommunityRelationship;
  @override
  @JsonKey(name: 'birdwatch_pivot')
  final BirdwatchPivot birdwatchPivot;
  @override
  final TweetCard card;
  @override
  @JsonKey(name: 'community_results')
  final Community communityResults;
  @override
  final UserResultCore core;
  @override
  @JsonKey(name: 'edit_control')
  final TweetEditControl editControl;
  @override
  @JsonKey(name: 'edit_prespective')
  final TweetEditPrespective editPrespective;
  @override
  @JsonKey(name: 'has_birdwatch_notes')
  final bool hasBirdwatchNotes;
  @override
  @JsonKey(name: 'is_translatable')
  final bool isTranslatable;
  @override
  final TweetLegacy legacy;
  @override
  @JsonKey(name: 'note_tweet')
  final NoteTweet noteTweet;
  @override
  @JsonKey(name: 'previous_counts')
  final TweetPreviousCounts previousCounts;
  @override
  @JsonKey(name: 'quick_promote_eligibility')
  final dynamic quickPromoteEligibility;
  @override
  final QuotedRefResult quotedRefResult;
  @override
  @JsonKey(name: 'quoted_status_result')
  final ItemResult quotedStatusResult;
  @override
  @JsonKey(name: 'rest_id')
  final String restId;
  @override
  final String source;
  @override
  final SuperFollowsReplyUserResult superFollowsReplyUserResult;
  @override
  @JsonKey(name: 'unified_card')
  final UnifiedCard unifiedCard;
  @override
  @JsonKey(name: 'unmention_data')
  final dynamic unmentionData;
  @override
  final TweetView views;

  @override
  String toString() {
    return 'Tweet(privateTypename: $privateTypename, article: $article, authorCommunityRelationship: $authorCommunityRelationship, birdwatchPivot: $birdwatchPivot, card: $card, communityResults: $communityResults, core: $core, editControl: $editControl, editPrespective: $editPrespective, hasBirdwatchNotes: $hasBirdwatchNotes, isTranslatable: $isTranslatable, legacy: $legacy, noteTweet: $noteTweet, previousCounts: $previousCounts, quickPromoteEligibility: $quickPromoteEligibility, quotedRefResult: $quotedRefResult, quotedStatusResult: $quotedStatusResult, restId: $restId, source: $source, superFollowsReplyUserResult: $superFollowsReplyUserResult, unifiedCard: $unifiedCard, unmentionData: $unmentionData, views: $views)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.authorCommunityRelationship,
                    authorCommunityRelationship) ||
                other.authorCommunityRelationship ==
                    authorCommunityRelationship) &&
            (identical(other.birdwatchPivot, birdwatchPivot) ||
                other.birdwatchPivot == birdwatchPivot) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.communityResults, communityResults) ||
                other.communityResults == communityResults) &&
            (identical(other.core, core) || other.core == core) &&
            (identical(other.editControl, editControl) ||
                other.editControl == editControl) &&
            (identical(other.editPrespective, editPrespective) ||
                other.editPrespective == editPrespective) &&
            (identical(other.hasBirdwatchNotes, hasBirdwatchNotes) ||
                other.hasBirdwatchNotes == hasBirdwatchNotes) &&
            (identical(other.isTranslatable, isTranslatable) ||
                other.isTranslatable == isTranslatable) &&
            (identical(other.legacy, legacy) || other.legacy == legacy) &&
            (identical(other.noteTweet, noteTweet) ||
                other.noteTweet == noteTweet) &&
            (identical(other.previousCounts, previousCounts) ||
                other.previousCounts == previousCounts) &&
            const DeepCollectionEquality().equals(
                other.quickPromoteEligibility, quickPromoteEligibility) &&
            (identical(other.quotedRefResult, quotedRefResult) ||
                other.quotedRefResult == quotedRefResult) &&
            (identical(other.quotedStatusResult, quotedStatusResult) ||
                other.quotedStatusResult == quotedStatusResult) &&
            (identical(other.restId, restId) || other.restId == restId) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.superFollowsReplyUserResult,
                    superFollowsReplyUserResult) ||
                other.superFollowsReplyUserResult ==
                    superFollowsReplyUserResult) &&
            (identical(other.unifiedCard, unifiedCard) ||
                other.unifiedCard == unifiedCard) &&
            const DeepCollectionEquality()
                .equals(other.unmentionData, unmentionData) &&
            (identical(other.views, views) || other.views == views));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        privateTypename,
        article,
        authorCommunityRelationship,
        birdwatchPivot,
        card,
        communityResults,
        core,
        editControl,
        editPrespective,
        hasBirdwatchNotes,
        isTranslatable,
        legacy,
        noteTweet,
        previousCounts,
        const DeepCollectionEquality().hash(quickPromoteEligibility),
        quotedRefResult,
        quotedStatusResult,
        restId,
        source,
        superFollowsReplyUserResult,
        unifiedCard,
        const DeepCollectionEquality().hash(unmentionData),
        views
      ]);

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetImplCopyWith<_$TweetImpl> get copyWith =>
      __$$TweetImplCopyWithImpl<_$TweetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetImplToJson(
      this,
    );
  }
}

abstract class _Tweet implements Tweet {
  const factory _Tweet(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      required final Article article,
      @JsonKey(name: 'author_community_relationship')
      required final AuthorCommunityRelationship authorCommunityRelationship,
      @JsonKey(name: 'birdwatch_pivot')
      required final BirdwatchPivot birdwatchPivot,
      required final TweetCard card,
      @JsonKey(name: 'community_results')
      required final Community communityResults,
      required final UserResultCore core,
      @JsonKey(name: 'edit_control')
      required final TweetEditControl editControl,
      @JsonKey(name: 'edit_prespective')
      required final TweetEditPrespective editPrespective,
      @JsonKey(name: 'has_birdwatch_notes')
      required final bool hasBirdwatchNotes,
      @JsonKey(name: 'is_translatable') required final bool isTranslatable,
      required final TweetLegacy legacy,
      @JsonKey(name: 'note_tweet') required final NoteTweet noteTweet,
      @JsonKey(name: 'previous_counts')
      required final TweetPreviousCounts previousCounts,
      @JsonKey(name: 'quick_promote_eligibility')
      required final dynamic quickPromoteEligibility,
      required final QuotedRefResult quotedRefResult,
      @JsonKey(name: 'quoted_status_result')
      required final ItemResult quotedStatusResult,
      @JsonKey(name: 'rest_id') required final String restId,
      required final String source,
      required final SuperFollowsReplyUserResult superFollowsReplyUserResult,
      @JsonKey(name: 'unified_card') required final UnifiedCard unifiedCard,
      @JsonKey(name: 'unmention_data') required final dynamic unmentionData,
      required final TweetView views}) = _$TweetImpl;

  factory _Tweet.fromJson(Map<String, dynamic> json) = _$TweetImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  Article get article;
  @override
  @JsonKey(name: 'author_community_relationship')
  AuthorCommunityRelationship get authorCommunityRelationship;
  @override
  @JsonKey(name: 'birdwatch_pivot')
  BirdwatchPivot get birdwatchPivot;
  @override
  TweetCard get card;
  @override
  @JsonKey(name: 'community_results')
  Community get communityResults;
  @override
  UserResultCore get core;
  @override
  @JsonKey(name: 'edit_control')
  TweetEditControl get editControl;
  @override
  @JsonKey(name: 'edit_prespective')
  TweetEditPrespective get editPrespective;
  @override
  @JsonKey(name: 'has_birdwatch_notes')
  bool get hasBirdwatchNotes;
  @override
  @JsonKey(name: 'is_translatable')
  bool get isTranslatable;
  @override
  TweetLegacy get legacy;
  @override
  @JsonKey(name: 'note_tweet')
  NoteTweet get noteTweet;
  @override
  @JsonKey(name: 'previous_counts')
  TweetPreviousCounts get previousCounts;
  @override
  @JsonKey(name: 'quick_promote_eligibility')
  dynamic get quickPromoteEligibility;
  @override
  QuotedRefResult get quotedRefResult;
  @override
  @JsonKey(name: 'quoted_status_result')
  ItemResult get quotedStatusResult;
  @override
  @JsonKey(name: 'rest_id')
  String get restId;
  @override
  String get source;
  @override
  SuperFollowsReplyUserResult get superFollowsReplyUserResult;
  @override
  @JsonKey(name: 'unified_card')
  UnifiedCard get unifiedCard;
  @override
  @JsonKey(name: 'unmention_data')
  dynamic get unmentionData;
  @override
  TweetView get views;

  /// Create a copy of Tweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetImplCopyWith<_$TweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
