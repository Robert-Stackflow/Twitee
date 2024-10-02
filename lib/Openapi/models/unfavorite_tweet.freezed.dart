// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unfavorite_tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnfavoriteTweet _$UnfavoriteTweetFromJson(Map<String, dynamic> json) {
  return _UnfavoriteTweet.fromJson(json);
}

/// @nodoc
mixin _$UnfavoriteTweet {
  @JsonKey(name: 'unfavorite_tweet')
  String get unfavoriteTweet => throw _privateConstructorUsedError;

  /// Serializes this UnfavoriteTweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnfavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnfavoriteTweetCopyWith<UnfavoriteTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnfavoriteTweetCopyWith<$Res> {
  factory $UnfavoriteTweetCopyWith(
          UnfavoriteTweet value, $Res Function(UnfavoriteTweet) then) =
      _$UnfavoriteTweetCopyWithImpl<$Res, UnfavoriteTweet>;
  @useResult
  $Res call({@JsonKey(name: 'unfavorite_tweet') String unfavoriteTweet});
}

/// @nodoc
class _$UnfavoriteTweetCopyWithImpl<$Res, $Val extends UnfavoriteTweet>
    implements $UnfavoriteTweetCopyWith<$Res> {
  _$UnfavoriteTweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnfavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unfavoriteTweet = null,
  }) {
    return _then(_value.copyWith(
      unfavoriteTweet: null == unfavoriteTweet
          ? _value.unfavoriteTweet
          : unfavoriteTweet // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnfavoriteTweetImplCopyWith<$Res>
    implements $UnfavoriteTweetCopyWith<$Res> {
  factory _$$UnfavoriteTweetImplCopyWith(_$UnfavoriteTweetImpl value,
          $Res Function(_$UnfavoriteTweetImpl) then) =
      __$$UnfavoriteTweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'unfavorite_tweet') String unfavoriteTweet});
}

/// @nodoc
class __$$UnfavoriteTweetImplCopyWithImpl<$Res>
    extends _$UnfavoriteTweetCopyWithImpl<$Res, _$UnfavoriteTweetImpl>
    implements _$$UnfavoriteTweetImplCopyWith<$Res> {
  __$$UnfavoriteTweetImplCopyWithImpl(
      _$UnfavoriteTweetImpl _value, $Res Function(_$UnfavoriteTweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnfavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unfavoriteTweet = null,
  }) {
    return _then(_$UnfavoriteTweetImpl(
      unfavoriteTweet: null == unfavoriteTweet
          ? _value.unfavoriteTweet
          : unfavoriteTweet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnfavoriteTweetImpl implements _UnfavoriteTweet {
  const _$UnfavoriteTweetImpl(
      {@JsonKey(name: 'unfavorite_tweet') required this.unfavoriteTweet});

  factory _$UnfavoriteTweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnfavoriteTweetImplFromJson(json);

  @override
  @JsonKey(name: 'unfavorite_tweet')
  final String unfavoriteTweet;

  @override
  String toString() {
    return 'UnfavoriteTweet(unfavoriteTweet: $unfavoriteTweet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnfavoriteTweetImpl &&
            (identical(other.unfavoriteTweet, unfavoriteTweet) ||
                other.unfavoriteTweet == unfavoriteTweet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unfavoriteTweet);

  /// Create a copy of UnfavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnfavoriteTweetImplCopyWith<_$UnfavoriteTweetImpl> get copyWith =>
      __$$UnfavoriteTweetImplCopyWithImpl<_$UnfavoriteTweetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnfavoriteTweetImplToJson(
      this,
    );
  }
}

abstract class _UnfavoriteTweet implements UnfavoriteTweet {
  const factory _UnfavoriteTweet(
      {@JsonKey(name: 'unfavorite_tweet')
      required final String unfavoriteTweet}) = _$UnfavoriteTweetImpl;

  factory _UnfavoriteTweet.fromJson(Map<String, dynamic> json) =
      _$UnfavoriteTweetImpl.fromJson;

  @override
  @JsonKey(name: 'unfavorite_tweet')
  String get unfavoriteTweet;

  /// Create a copy of UnfavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnfavoriteTweetImplCopyWith<_$UnfavoriteTweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
