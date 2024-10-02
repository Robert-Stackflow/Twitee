// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineTweet _$TimelineTweetFromJson(Map<String, dynamic> json) {
  return _TimelineTweet.fromJson(json);
}

/// @nodoc
mixin _$TimelineTweet {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  Highlight get highlights => throw _privateConstructorUsedError;
  ContentItemType get itemType => throw _privateConstructorUsedError;
  dynamic get promotedMetadata => throw _privateConstructorUsedError;
  SocialContextUnion get socialContext => throw _privateConstructorUsedError;
  TimelineTweetTweetDisplayType get tweetDisplayType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'tweet_results')
  ItemResult get tweetResults => throw _privateConstructorUsedError;

  /// Serializes this TimelineTweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineTweetCopyWith<TimelineTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineTweetCopyWith<$Res> {
  factory $TimelineTweetCopyWith(
          TimelineTweet value, $Res Function(TimelineTweet) then) =
      _$TimelineTweetCopyWithImpl<$Res, TimelineTweet>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      Highlight highlights,
      ContentItemType itemType,
      dynamic promotedMetadata,
      SocialContextUnion socialContext,
      TimelineTweetTweetDisplayType tweetDisplayType,
      @JsonKey(name: 'tweet_results') ItemResult tweetResults});

  $HighlightCopyWith<$Res> get highlights;
  $SocialContextUnionCopyWith<$Res> get socialContext;
  $ItemResultCopyWith<$Res> get tweetResults;
}

/// @nodoc
class _$TimelineTweetCopyWithImpl<$Res, $Val extends TimelineTweet>
    implements $TimelineTweetCopyWith<$Res> {
  _$TimelineTweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? highlights = null,
    Object? itemType = null,
    Object? promotedMetadata = freezed,
    Object? socialContext = null,
    Object? tweetDisplayType = null,
    Object? tweetResults = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as Highlight,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as ContentItemType,
      promotedMetadata: freezed == promotedMetadata
          ? _value.promotedMetadata
          : promotedMetadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      socialContext: null == socialContext
          ? _value.socialContext
          : socialContext // ignore: cast_nullable_to_non_nullable
              as SocialContextUnion,
      tweetDisplayType: null == tweetDisplayType
          ? _value.tweetDisplayType
          : tweetDisplayType // ignore: cast_nullable_to_non_nullable
              as TimelineTweetTweetDisplayType,
      tweetResults: null == tweetResults
          ? _value.tweetResults
          : tweetResults // ignore: cast_nullable_to_non_nullable
              as ItemResult,
    ) as $Val);
  }

  /// Create a copy of TimelineTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HighlightCopyWith<$Res> get highlights {
    return $HighlightCopyWith<$Res>(_value.highlights, (value) {
      return _then(_value.copyWith(highlights: value) as $Val);
    });
  }

  /// Create a copy of TimelineTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialContextUnionCopyWith<$Res> get socialContext {
    return $SocialContextUnionCopyWith<$Res>(_value.socialContext, (value) {
      return _then(_value.copyWith(socialContext: value) as $Val);
    });
  }

  /// Create a copy of TimelineTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemResultCopyWith<$Res> get tweetResults {
    return $ItemResultCopyWith<$Res>(_value.tweetResults, (value) {
      return _then(_value.copyWith(tweetResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineTweetImplCopyWith<$Res>
    implements $TimelineTweetCopyWith<$Res> {
  factory _$$TimelineTweetImplCopyWith(
          _$TimelineTweetImpl value, $Res Function(_$TimelineTweetImpl) then) =
      __$$TimelineTweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      Highlight highlights,
      ContentItemType itemType,
      dynamic promotedMetadata,
      SocialContextUnion socialContext,
      TimelineTweetTweetDisplayType tweetDisplayType,
      @JsonKey(name: 'tweet_results') ItemResult tweetResults});

  @override
  $HighlightCopyWith<$Res> get highlights;
  @override
  $SocialContextUnionCopyWith<$Res> get socialContext;
  @override
  $ItemResultCopyWith<$Res> get tweetResults;
}

/// @nodoc
class __$$TimelineTweetImplCopyWithImpl<$Res>
    extends _$TimelineTweetCopyWithImpl<$Res, _$TimelineTweetImpl>
    implements _$$TimelineTweetImplCopyWith<$Res> {
  __$$TimelineTweetImplCopyWithImpl(
      _$TimelineTweetImpl _value, $Res Function(_$TimelineTweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? highlights = null,
    Object? itemType = null,
    Object? promotedMetadata = freezed,
    Object? socialContext = null,
    Object? tweetDisplayType = null,
    Object? tweetResults = null,
  }) {
    return _then(_$TimelineTweetImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as Highlight,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as ContentItemType,
      promotedMetadata: freezed == promotedMetadata
          ? _value.promotedMetadata
          : promotedMetadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      socialContext: null == socialContext
          ? _value.socialContext
          : socialContext // ignore: cast_nullable_to_non_nullable
              as SocialContextUnion,
      tweetDisplayType: null == tweetDisplayType
          ? _value.tweetDisplayType
          : tweetDisplayType // ignore: cast_nullable_to_non_nullable
              as TimelineTweetTweetDisplayType,
      tweetResults: null == tweetResults
          ? _value.tweetResults
          : tweetResults // ignore: cast_nullable_to_non_nullable
              as ItemResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineTweetImpl implements _TimelineTweet {
  const _$TimelineTweetImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.highlights,
      required this.itemType,
      required this.promotedMetadata,
      required this.socialContext,
      required this.tweetDisplayType,
      @JsonKey(name: 'tweet_results') required this.tweetResults});

  factory _$TimelineTweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineTweetImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final Highlight highlights;
  @override
  final ContentItemType itemType;
  @override
  final dynamic promotedMetadata;
  @override
  final SocialContextUnion socialContext;
  @override
  final TimelineTweetTweetDisplayType tweetDisplayType;
  @override
  @JsonKey(name: 'tweet_results')
  final ItemResult tweetResults;

  @override
  String toString() {
    return 'TimelineTweet(privateTypename: $privateTypename, highlights: $highlights, itemType: $itemType, promotedMetadata: $promotedMetadata, socialContext: $socialContext, tweetDisplayType: $tweetDisplayType, tweetResults: $tweetResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineTweetImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.highlights, highlights) ||
                other.highlights == highlights) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            const DeepCollectionEquality()
                .equals(other.promotedMetadata, promotedMetadata) &&
            (identical(other.socialContext, socialContext) ||
                other.socialContext == socialContext) &&
            (identical(other.tweetDisplayType, tweetDisplayType) ||
                other.tweetDisplayType == tweetDisplayType) &&
            (identical(other.tweetResults, tweetResults) ||
                other.tweetResults == tweetResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      privateTypename,
      highlights,
      itemType,
      const DeepCollectionEquality().hash(promotedMetadata),
      socialContext,
      tweetDisplayType,
      tweetResults);

  /// Create a copy of TimelineTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineTweetImplCopyWith<_$TimelineTweetImpl> get copyWith =>
      __$$TimelineTweetImplCopyWithImpl<_$TimelineTweetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineTweetImplToJson(
      this,
    );
  }
}

abstract class _TimelineTweet implements TimelineTweet {
  const factory _TimelineTweet(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      required final Highlight highlights,
      required final ContentItemType itemType,
      required final dynamic promotedMetadata,
      required final SocialContextUnion socialContext,
      required final TimelineTweetTweetDisplayType tweetDisplayType,
      @JsonKey(name: 'tweet_results')
      required final ItemResult tweetResults}) = _$TimelineTweetImpl;

  factory _TimelineTweet.fromJson(Map<String, dynamic> json) =
      _$TimelineTweetImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  Highlight get highlights;
  @override
  ContentItemType get itemType;
  @override
  dynamic get promotedMetadata;
  @override
  SocialContextUnion get socialContext;
  @override
  TimelineTweetTweetDisplayType get tweetDisplayType;
  @override
  @JsonKey(name: 'tweet_results')
  ItemResult get tweetResults;

  /// Create a copy of TimelineTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineTweetImplCopyWith<_$TimelineTweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
