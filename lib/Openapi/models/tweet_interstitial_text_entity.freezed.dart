// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_interstitial_text_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetInterstitialTextEntity _$TweetInterstitialTextEntityFromJson(
    Map<String, dynamic> json) {
  return _TweetInterstitialTextEntity.fromJson(json);
}

/// @nodoc
mixin _$TweetInterstitialTextEntity {
  int get fromIndex => throw _privateConstructorUsedError;
  TweetInterstitialTextEntityRef get ref => throw _privateConstructorUsedError;
  int get toIndex => throw _privateConstructorUsedError;

  /// Serializes this TweetInterstitialTextEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetInterstitialTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetInterstitialTextEntityCopyWith<TweetInterstitialTextEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetInterstitialTextEntityCopyWith<$Res> {
  factory $TweetInterstitialTextEntityCopyWith(
          TweetInterstitialTextEntity value,
          $Res Function(TweetInterstitialTextEntity) then) =
      _$TweetInterstitialTextEntityCopyWithImpl<$Res,
          TweetInterstitialTextEntity>;
  @useResult
  $Res call({int fromIndex, TweetInterstitialTextEntityRef ref, int toIndex});

  $TweetInterstitialTextEntityRefCopyWith<$Res> get ref;
}

/// @nodoc
class _$TweetInterstitialTextEntityCopyWithImpl<$Res,
        $Val extends TweetInterstitialTextEntity>
    implements $TweetInterstitialTextEntityCopyWith<$Res> {
  _$TweetInterstitialTextEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetInterstitialTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromIndex = null,
    Object? ref = null,
    Object? toIndex = null,
  }) {
    return _then(_value.copyWith(
      fromIndex: null == fromIndex
          ? _value.fromIndex
          : fromIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as TweetInterstitialTextEntityRef,
      toIndex: null == toIndex
          ? _value.toIndex
          : toIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TweetInterstitialTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetInterstitialTextEntityRefCopyWith<$Res> get ref {
    return $TweetInterstitialTextEntityRefCopyWith<$Res>(_value.ref, (value) {
      return _then(_value.copyWith(ref: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetInterstitialTextEntityImplCopyWith<$Res>
    implements $TweetInterstitialTextEntityCopyWith<$Res> {
  factory _$$TweetInterstitialTextEntityImplCopyWith(
          _$TweetInterstitialTextEntityImpl value,
          $Res Function(_$TweetInterstitialTextEntityImpl) then) =
      __$$TweetInterstitialTextEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fromIndex, TweetInterstitialTextEntityRef ref, int toIndex});

  @override
  $TweetInterstitialTextEntityRefCopyWith<$Res> get ref;
}

/// @nodoc
class __$$TweetInterstitialTextEntityImplCopyWithImpl<$Res>
    extends _$TweetInterstitialTextEntityCopyWithImpl<$Res,
        _$TweetInterstitialTextEntityImpl>
    implements _$$TweetInterstitialTextEntityImplCopyWith<$Res> {
  __$$TweetInterstitialTextEntityImplCopyWithImpl(
      _$TweetInterstitialTextEntityImpl _value,
      $Res Function(_$TweetInterstitialTextEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetInterstitialTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromIndex = null,
    Object? ref = null,
    Object? toIndex = null,
  }) {
    return _then(_$TweetInterstitialTextEntityImpl(
      fromIndex: null == fromIndex
          ? _value.fromIndex
          : fromIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as TweetInterstitialTextEntityRef,
      toIndex: null == toIndex
          ? _value.toIndex
          : toIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetInterstitialTextEntityImpl
    implements _TweetInterstitialTextEntity {
  const _$TweetInterstitialTextEntityImpl(
      {required this.fromIndex, required this.ref, required this.toIndex});

  factory _$TweetInterstitialTextEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TweetInterstitialTextEntityImplFromJson(json);

  @override
  final int fromIndex;
  @override
  final TweetInterstitialTextEntityRef ref;
  @override
  final int toIndex;

  @override
  String toString() {
    return 'TweetInterstitialTextEntity(fromIndex: $fromIndex, ref: $ref, toIndex: $toIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetInterstitialTextEntityImpl &&
            (identical(other.fromIndex, fromIndex) ||
                other.fromIndex == fromIndex) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.toIndex, toIndex) || other.toIndex == toIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fromIndex, ref, toIndex);

  /// Create a copy of TweetInterstitialTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetInterstitialTextEntityImplCopyWith<_$TweetInterstitialTextEntityImpl>
      get copyWith => __$$TweetInterstitialTextEntityImplCopyWithImpl<
          _$TweetInterstitialTextEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetInterstitialTextEntityImplToJson(
      this,
    );
  }
}

abstract class _TweetInterstitialTextEntity
    implements TweetInterstitialTextEntity {
  const factory _TweetInterstitialTextEntity(
      {required final int fromIndex,
      required final TweetInterstitialTextEntityRef ref,
      required final int toIndex}) = _$TweetInterstitialTextEntityImpl;

  factory _TweetInterstitialTextEntity.fromJson(Map<String, dynamic> json) =
      _$TweetInterstitialTextEntityImpl.fromJson;

  @override
  int get fromIndex;
  @override
  TweetInterstitialTextEntityRef get ref;
  @override
  int get toIndex;

  /// Create a copy of TweetInterstitialTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetInterstitialTextEntityImplCopyWith<_$TweetInterstitialTextEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
