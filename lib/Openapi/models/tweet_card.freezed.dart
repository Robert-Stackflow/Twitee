// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetCard _$TweetCardFromJson(Map<String, dynamic> json) {
  return _TweetCard.fromJson(json);
}

/// @nodoc
mixin _$TweetCard {
  TweetCardLegacy get legacy => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_id')
  String get restId => throw _privateConstructorUsedError;

  /// Serializes this TweetCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCardCopyWith<TweetCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCardCopyWith<$Res> {
  factory $TweetCardCopyWith(TweetCard value, $Res Function(TweetCard) then) =
      _$TweetCardCopyWithImpl<$Res, TweetCard>;
  @useResult
  $Res call({TweetCardLegacy legacy, @JsonKey(name: 'rest_id') String restId});

  $TweetCardLegacyCopyWith<$Res> get legacy;
}

/// @nodoc
class _$TweetCardCopyWithImpl<$Res, $Val extends TweetCard>
    implements $TweetCardCopyWith<$Res> {
  _$TweetCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetCard
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
              as TweetCardLegacy,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TweetCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetCardLegacyCopyWith<$Res> get legacy {
    return $TweetCardLegacyCopyWith<$Res>(_value.legacy, (value) {
      return _then(_value.copyWith(legacy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetCardImplCopyWith<$Res>
    implements $TweetCardCopyWith<$Res> {
  factory _$$TweetCardImplCopyWith(
          _$TweetCardImpl value, $Res Function(_$TweetCardImpl) then) =
      __$$TweetCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TweetCardLegacy legacy, @JsonKey(name: 'rest_id') String restId});

  @override
  $TweetCardLegacyCopyWith<$Res> get legacy;
}

/// @nodoc
class __$$TweetCardImplCopyWithImpl<$Res>
    extends _$TweetCardCopyWithImpl<$Res, _$TweetCardImpl>
    implements _$$TweetCardImplCopyWith<$Res> {
  __$$TweetCardImplCopyWithImpl(
      _$TweetCardImpl _value, $Res Function(_$TweetCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legacy = null,
    Object? restId = null,
  }) {
    return _then(_$TweetCardImpl(
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as TweetCardLegacy,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetCardImpl implements _TweetCard {
  const _$TweetCardImpl(
      {required this.legacy, @JsonKey(name: 'rest_id') required this.restId});

  factory _$TweetCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetCardImplFromJson(json);

  @override
  final TweetCardLegacy legacy;
  @override
  @JsonKey(name: 'rest_id')
  final String restId;

  @override
  String toString() {
    return 'TweetCard(legacy: $legacy, restId: $restId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetCardImpl &&
            (identical(other.legacy, legacy) || other.legacy == legacy) &&
            (identical(other.restId, restId) || other.restId == restId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, legacy, restId);

  /// Create a copy of TweetCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetCardImplCopyWith<_$TweetCardImpl> get copyWith =>
      __$$TweetCardImplCopyWithImpl<_$TweetCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetCardImplToJson(
      this,
    );
  }
}

abstract class _TweetCard implements TweetCard {
  const factory _TweetCard(
          {required final TweetCardLegacy legacy,
          @JsonKey(name: 'rest_id') required final String restId}) =
      _$TweetCardImpl;

  factory _TweetCard.fromJson(Map<String, dynamic> json) =
      _$TweetCardImpl.fromJson;

  @override
  TweetCardLegacy get legacy;
  @override
  @JsonKey(name: 'rest_id')
  String get restId;

  /// Create a copy of TweetCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetCardImplCopyWith<_$TweetCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
