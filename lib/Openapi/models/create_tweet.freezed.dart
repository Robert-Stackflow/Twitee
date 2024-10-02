// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTweet _$CreateTweetFromJson(Map<String, dynamic> json) {
  return _CreateTweet.fromJson(json);
}

/// @nodoc
mixin _$CreateTweet {
  Tweet get result => throw _privateConstructorUsedError;

  /// Serializes this CreateTweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTweetCopyWith<CreateTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTweetCopyWith<$Res> {
  factory $CreateTweetCopyWith(
          CreateTweet value, $Res Function(CreateTweet) then) =
      _$CreateTweetCopyWithImpl<$Res, CreateTweet>;
  @useResult
  $Res call({Tweet result});

  $TweetCopyWith<$Res> get result;
}

/// @nodoc
class _$CreateTweetCopyWithImpl<$Res, $Val extends CreateTweet>
    implements $CreateTweetCopyWith<$Res> {
  _$CreateTweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Tweet,
    ) as $Val);
  }

  /// Create a copy of CreateTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetCopyWith<$Res> get result {
    return $TweetCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateTweetImplCopyWith<$Res>
    implements $CreateTweetCopyWith<$Res> {
  factory _$$CreateTweetImplCopyWith(
          _$CreateTweetImpl value, $Res Function(_$CreateTweetImpl) then) =
      __$$CreateTweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tweet result});

  @override
  $TweetCopyWith<$Res> get result;
}

/// @nodoc
class __$$CreateTweetImplCopyWithImpl<$Res>
    extends _$CreateTweetCopyWithImpl<$Res, _$CreateTweetImpl>
    implements _$$CreateTweetImplCopyWith<$Res> {
  __$$CreateTweetImplCopyWithImpl(
      _$CreateTweetImpl _value, $Res Function(_$CreateTweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$CreateTweetImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Tweet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTweetImpl implements _CreateTweet {
  const _$CreateTweetImpl({required this.result});

  factory _$CreateTweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTweetImplFromJson(json);

  @override
  final Tweet result;

  @override
  String toString() {
    return 'CreateTweet(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTweetImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of CreateTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTweetImplCopyWith<_$CreateTweetImpl> get copyWith =>
      __$$CreateTweetImplCopyWithImpl<_$CreateTweetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTweetImplToJson(
      this,
    );
  }
}

abstract class _CreateTweet implements CreateTweet {
  const factory _CreateTweet({required final Tweet result}) = _$CreateTweetImpl;

  factory _CreateTweet.fromJson(Map<String, dynamic> json) =
      _$CreateTweetImpl.fromJson;

  @override
  Tweet get result;

  /// Create a copy of CreateTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTweetImplCopyWith<_$CreateTweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
