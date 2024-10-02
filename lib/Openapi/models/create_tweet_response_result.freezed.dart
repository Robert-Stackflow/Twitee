// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tweet_response_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTweetResponseResult _$CreateTweetResponseResultFromJson(
    Map<String, dynamic> json) {
  return _CreateTweetResponseResult.fromJson(json);
}

/// @nodoc
mixin _$CreateTweetResponseResult {
  @JsonKey(name: 'tweet_results')
  CreateTweet get tweetResults => throw _privateConstructorUsedError;

  /// Serializes this CreateTweetResponseResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTweetResponseResultCopyWith<CreateTweetResponseResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTweetResponseResultCopyWith<$Res> {
  factory $CreateTweetResponseResultCopyWith(CreateTweetResponseResult value,
          $Res Function(CreateTweetResponseResult) then) =
      _$CreateTweetResponseResultCopyWithImpl<$Res, CreateTweetResponseResult>;
  @useResult
  $Res call({@JsonKey(name: 'tweet_results') CreateTweet tweetResults});

  $CreateTweetCopyWith<$Res> get tweetResults;
}

/// @nodoc
class _$CreateTweetResponseResultCopyWithImpl<$Res,
        $Val extends CreateTweetResponseResult>
    implements $CreateTweetResponseResultCopyWith<$Res> {
  _$CreateTweetResponseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetResults = null,
  }) {
    return _then(_value.copyWith(
      tweetResults: null == tweetResults
          ? _value.tweetResults
          : tweetResults // ignore: cast_nullable_to_non_nullable
              as CreateTweet,
    ) as $Val);
  }

  /// Create a copy of CreateTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateTweetCopyWith<$Res> get tweetResults {
    return $CreateTweetCopyWith<$Res>(_value.tweetResults, (value) {
      return _then(_value.copyWith(tweetResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateTweetResponseResultImplCopyWith<$Res>
    implements $CreateTweetResponseResultCopyWith<$Res> {
  factory _$$CreateTweetResponseResultImplCopyWith(
          _$CreateTweetResponseResultImpl value,
          $Res Function(_$CreateTweetResponseResultImpl) then) =
      __$$CreateTweetResponseResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'tweet_results') CreateTweet tweetResults});

  @override
  $CreateTweetCopyWith<$Res> get tweetResults;
}

/// @nodoc
class __$$CreateTweetResponseResultImplCopyWithImpl<$Res>
    extends _$CreateTweetResponseResultCopyWithImpl<$Res,
        _$CreateTweetResponseResultImpl>
    implements _$$CreateTweetResponseResultImplCopyWith<$Res> {
  __$$CreateTweetResponseResultImplCopyWithImpl(
      _$CreateTweetResponseResultImpl _value,
      $Res Function(_$CreateTweetResponseResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetResults = null,
  }) {
    return _then(_$CreateTweetResponseResultImpl(
      tweetResults: null == tweetResults
          ? _value.tweetResults
          : tweetResults // ignore: cast_nullable_to_non_nullable
              as CreateTweet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTweetResponseResultImpl implements _CreateTweetResponseResult {
  const _$CreateTweetResponseResultImpl(
      {@JsonKey(name: 'tweet_results') required this.tweetResults});

  factory _$CreateTweetResponseResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTweetResponseResultImplFromJson(json);

  @override
  @JsonKey(name: 'tweet_results')
  final CreateTweet tweetResults;

  @override
  String toString() {
    return 'CreateTweetResponseResult(tweetResults: $tweetResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTweetResponseResultImpl &&
            (identical(other.tweetResults, tweetResults) ||
                other.tweetResults == tweetResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tweetResults);

  /// Create a copy of CreateTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTweetResponseResultImplCopyWith<_$CreateTweetResponseResultImpl>
      get copyWith => __$$CreateTweetResponseResultImplCopyWithImpl<
          _$CreateTweetResponseResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTweetResponseResultImplToJson(
      this,
    );
  }
}

abstract class _CreateTweetResponseResult implements CreateTweetResponseResult {
  const factory _CreateTweetResponseResult(
          {@JsonKey(name: 'tweet_results')
          required final CreateTweet tweetResults}) =
      _$CreateTweetResponseResultImpl;

  factory _CreateTweetResponseResult.fromJson(Map<String, dynamic> json) =
      _$CreateTweetResponseResultImpl.fromJson;

  @override
  @JsonKey(name: 'tweet_results')
  CreateTweet get tweetResults;

  /// Create a copy of CreateTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTweetResponseResultImplCopyWith<_$CreateTweetResponseResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
