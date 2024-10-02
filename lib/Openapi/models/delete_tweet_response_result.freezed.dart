// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_tweet_response_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteTweetResponseResult _$DeleteTweetResponseResultFromJson(
    Map<String, dynamic> json) {
  return _DeleteTweetResponseResult.fromJson(json);
}

/// @nodoc
mixin _$DeleteTweetResponseResult {
  @JsonKey(name: 'tweet_results')
  dynamic get tweetResults => throw _privateConstructorUsedError;

  /// Serializes this DeleteTweetResponseResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteTweetResponseResultCopyWith<DeleteTweetResponseResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTweetResponseResultCopyWith<$Res> {
  factory $DeleteTweetResponseResultCopyWith(DeleteTweetResponseResult value,
          $Res Function(DeleteTweetResponseResult) then) =
      _$DeleteTweetResponseResultCopyWithImpl<$Res, DeleteTweetResponseResult>;
  @useResult
  $Res call({@JsonKey(name: 'tweet_results') dynamic tweetResults});
}

/// @nodoc
class _$DeleteTweetResponseResultCopyWithImpl<$Res,
        $Val extends DeleteTweetResponseResult>
    implements $DeleteTweetResponseResultCopyWith<$Res> {
  _$DeleteTweetResponseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetResults = freezed,
  }) {
    return _then(_value.copyWith(
      tweetResults: freezed == tweetResults
          ? _value.tweetResults
          : tweetResults // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteTweetResponseResultImplCopyWith<$Res>
    implements $DeleteTweetResponseResultCopyWith<$Res> {
  factory _$$DeleteTweetResponseResultImplCopyWith(
          _$DeleteTweetResponseResultImpl value,
          $Res Function(_$DeleteTweetResponseResultImpl) then) =
      __$$DeleteTweetResponseResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'tweet_results') dynamic tweetResults});
}

/// @nodoc
class __$$DeleteTweetResponseResultImplCopyWithImpl<$Res>
    extends _$DeleteTweetResponseResultCopyWithImpl<$Res,
        _$DeleteTweetResponseResultImpl>
    implements _$$DeleteTweetResponseResultImplCopyWith<$Res> {
  __$$DeleteTweetResponseResultImplCopyWithImpl(
      _$DeleteTweetResponseResultImpl _value,
      $Res Function(_$DeleteTweetResponseResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetResults = freezed,
  }) {
    return _then(_$DeleteTweetResponseResultImpl(
      tweetResults: freezed == tweetResults
          ? _value.tweetResults
          : tweetResults // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteTweetResponseResultImpl implements _DeleteTweetResponseResult {
  const _$DeleteTweetResponseResultImpl(
      {@JsonKey(name: 'tweet_results') required this.tweetResults});

  factory _$DeleteTweetResponseResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteTweetResponseResultImplFromJson(json);

  @override
  @JsonKey(name: 'tweet_results')
  final dynamic tweetResults;

  @override
  String toString() {
    return 'DeleteTweetResponseResult(tweetResults: $tweetResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTweetResponseResultImpl &&
            const DeepCollectionEquality()
                .equals(other.tweetResults, tweetResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tweetResults));

  /// Create a copy of DeleteTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTweetResponseResultImplCopyWith<_$DeleteTweetResponseResultImpl>
      get copyWith => __$$DeleteTweetResponseResultImplCopyWithImpl<
          _$DeleteTweetResponseResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteTweetResponseResultImplToJson(
      this,
    );
  }
}

abstract class _DeleteTweetResponseResult implements DeleteTweetResponseResult {
  const factory _DeleteTweetResponseResult(
      {@JsonKey(name: 'tweet_results')
      required final dynamic tweetResults}) = _$DeleteTweetResponseResultImpl;

  factory _DeleteTweetResponseResult.fromJson(Map<String, dynamic> json) =
      _$DeleteTweetResponseResultImpl.fromJson;

  @override
  @JsonKey(name: 'tweet_results')
  dynamic get tweetResults;

  /// Create a copy of DeleteTweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTweetResponseResultImplCopyWith<_$DeleteTweetResponseResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
