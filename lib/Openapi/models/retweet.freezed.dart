// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Retweet _$RetweetFromJson(Map<String, dynamic> json) {
  return _Retweet.fromJson(json);
}

/// @nodoc
mixin _$Retweet {
  Legacy get legacy => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_id')
  String get restId => throw _privateConstructorUsedError;

  /// Serializes this Retweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Retweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetweetCopyWith<Retweet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetweetCopyWith<$Res> {
  factory $RetweetCopyWith(Retweet value, $Res Function(Retweet) then) =
      _$RetweetCopyWithImpl<$Res, Retweet>;
  @useResult
  $Res call({Legacy legacy, @JsonKey(name: 'rest_id') String restId});

  $LegacyCopyWith<$Res> get legacy;
}

/// @nodoc
class _$RetweetCopyWithImpl<$Res, $Val extends Retweet>
    implements $RetweetCopyWith<$Res> {
  _$RetweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Retweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legacy = null,
    Object? restId = null,
  }) {
    return _then(_value.copyWith(
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as Legacy,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Retweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LegacyCopyWith<$Res> get legacy {
    return $LegacyCopyWith<$Res>(_value.legacy, (value) {
      return _then(_value.copyWith(legacy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RetweetImplCopyWith<$Res> implements $RetweetCopyWith<$Res> {
  factory _$$RetweetImplCopyWith(
          _$RetweetImpl value, $Res Function(_$RetweetImpl) then) =
      __$$RetweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Legacy legacy, @JsonKey(name: 'rest_id') String restId});

  @override
  $LegacyCopyWith<$Res> get legacy;
}

/// @nodoc
class __$$RetweetImplCopyWithImpl<$Res>
    extends _$RetweetCopyWithImpl<$Res, _$RetweetImpl>
    implements _$$RetweetImplCopyWith<$Res> {
  __$$RetweetImplCopyWithImpl(
      _$RetweetImpl _value, $Res Function(_$RetweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Retweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legacy = null,
    Object? restId = null,
  }) {
    return _then(_$RetweetImpl(
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as Legacy,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetweetImpl implements _Retweet {
  const _$RetweetImpl(
      {required this.legacy, @JsonKey(name: 'rest_id') required this.restId});

  factory _$RetweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetweetImplFromJson(json);

  @override
  final Legacy legacy;
  @override
  @JsonKey(name: 'rest_id')
  final String restId;

  @override
  String toString() {
    return 'Retweet(legacy: $legacy, restId: $restId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetweetImpl &&
            (identical(other.legacy, legacy) || other.legacy == legacy) &&
            (identical(other.restId, restId) || other.restId == restId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, legacy, restId);

  /// Create a copy of Retweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetweetImplCopyWith<_$RetweetImpl> get copyWith =>
      __$$RetweetImplCopyWithImpl<_$RetweetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetweetImplToJson(
      this,
    );
  }
}

abstract class _Retweet implements Retweet {
  const factory _Retweet(
      {required final Legacy legacy,
      @JsonKey(name: 'rest_id') required final String restId}) = _$RetweetImpl;

  factory _Retweet.fromJson(Map<String, dynamic> json) = _$RetweetImpl.fromJson;

  @override
  Legacy get legacy;
  @override
  @JsonKey(name: 'rest_id')
  String get restId;

  /// Create a copy of Retweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetweetImplCopyWith<_$RetweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
