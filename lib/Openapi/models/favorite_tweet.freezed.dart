// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteTweet _$FavoriteTweetFromJson(Map<String, dynamic> json) {
  return _FavoriteTweet.fromJson(json);
}

/// @nodoc
mixin _$FavoriteTweet {
  @JsonKey(name: 'favorite_tweet')
  String get favoriteTweet => throw _privateConstructorUsedError;

  /// Serializes this FavoriteTweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteTweetCopyWith<FavoriteTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTweetCopyWith<$Res> {
  factory $FavoriteTweetCopyWith(
          FavoriteTweet value, $Res Function(FavoriteTweet) then) =
      _$FavoriteTweetCopyWithImpl<$Res, FavoriteTweet>;
  @useResult
  $Res call({@JsonKey(name: 'favorite_tweet') String favoriteTweet});
}

/// @nodoc
class _$FavoriteTweetCopyWithImpl<$Res, $Val extends FavoriteTweet>
    implements $FavoriteTweetCopyWith<$Res> {
  _$FavoriteTweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteTweet = null,
  }) {
    return _then(_value.copyWith(
      favoriteTweet: null == favoriteTweet
          ? _value.favoriteTweet
          : favoriteTweet // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteTweetImplCopyWith<$Res>
    implements $FavoriteTweetCopyWith<$Res> {
  factory _$$FavoriteTweetImplCopyWith(
          _$FavoriteTweetImpl value, $Res Function(_$FavoriteTweetImpl) then) =
      __$$FavoriteTweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'favorite_tweet') String favoriteTweet});
}

/// @nodoc
class __$$FavoriteTweetImplCopyWithImpl<$Res>
    extends _$FavoriteTweetCopyWithImpl<$Res, _$FavoriteTweetImpl>
    implements _$$FavoriteTweetImplCopyWith<$Res> {
  __$$FavoriteTweetImplCopyWithImpl(
      _$FavoriteTweetImpl _value, $Res Function(_$FavoriteTweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteTweet = null,
  }) {
    return _then(_$FavoriteTweetImpl(
      favoriteTweet: null == favoriteTweet
          ? _value.favoriteTweet
          : favoriteTweet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteTweetImpl implements _FavoriteTweet {
  const _$FavoriteTweetImpl(
      {@JsonKey(name: 'favorite_tweet') required this.favoriteTweet});

  factory _$FavoriteTweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteTweetImplFromJson(json);

  @override
  @JsonKey(name: 'favorite_tweet')
  final String favoriteTweet;

  @override
  String toString() {
    return 'FavoriteTweet(favoriteTweet: $favoriteTweet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteTweetImpl &&
            (identical(other.favoriteTweet, favoriteTweet) ||
                other.favoriteTweet == favoriteTweet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, favoriteTweet);

  /// Create a copy of FavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteTweetImplCopyWith<_$FavoriteTweetImpl> get copyWith =>
      __$$FavoriteTweetImplCopyWithImpl<_$FavoriteTweetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteTweetImplToJson(
      this,
    );
  }
}

abstract class _FavoriteTweet implements FavoriteTweet {
  const factory _FavoriteTweet(
      {@JsonKey(name: 'favorite_tweet')
      required final String favoriteTweet}) = _$FavoriteTweetImpl;

  factory _FavoriteTweet.fromJson(Map<String, dynamic> json) =
      _$FavoriteTweetImpl.fromJson;

  @override
  @JsonKey(name: 'favorite_tweet')
  String get favoriteTweet;

  /// Create a copy of FavoriteTweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteTweetImplCopyWith<_$FavoriteTweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
