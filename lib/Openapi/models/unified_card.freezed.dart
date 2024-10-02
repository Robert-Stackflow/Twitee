// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unified_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnifiedCard _$UnifiedCardFromJson(Map<String, dynamic> json) {
  return _UnifiedCard.fromJson(json);
}

/// @nodoc
mixin _$UnifiedCard {
  @JsonKey(name: 'card_fetch_state')
  UnifiedCardCardFetchState get cardFetchState =>
      throw _privateConstructorUsedError;

  /// Serializes this UnifiedCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnifiedCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnifiedCardCopyWith<UnifiedCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnifiedCardCopyWith<$Res> {
  factory $UnifiedCardCopyWith(
          UnifiedCard value, $Res Function(UnifiedCard) then) =
      _$UnifiedCardCopyWithImpl<$Res, UnifiedCard>;
  @useResult
  $Res call(
      {@JsonKey(name: 'card_fetch_state')
      UnifiedCardCardFetchState cardFetchState});
}

/// @nodoc
class _$UnifiedCardCopyWithImpl<$Res, $Val extends UnifiedCard>
    implements $UnifiedCardCopyWith<$Res> {
  _$UnifiedCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnifiedCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardFetchState = null,
  }) {
    return _then(_value.copyWith(
      cardFetchState: null == cardFetchState
          ? _value.cardFetchState
          : cardFetchState // ignore: cast_nullable_to_non_nullable
              as UnifiedCardCardFetchState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnifiedCardImplCopyWith<$Res>
    implements $UnifiedCardCopyWith<$Res> {
  factory _$$UnifiedCardImplCopyWith(
          _$UnifiedCardImpl value, $Res Function(_$UnifiedCardImpl) then) =
      __$$UnifiedCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'card_fetch_state')
      UnifiedCardCardFetchState cardFetchState});
}

/// @nodoc
class __$$UnifiedCardImplCopyWithImpl<$Res>
    extends _$UnifiedCardCopyWithImpl<$Res, _$UnifiedCardImpl>
    implements _$$UnifiedCardImplCopyWith<$Res> {
  __$$UnifiedCardImplCopyWithImpl(
      _$UnifiedCardImpl _value, $Res Function(_$UnifiedCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnifiedCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardFetchState = null,
  }) {
    return _then(_$UnifiedCardImpl(
      cardFetchState: null == cardFetchState
          ? _value.cardFetchState
          : cardFetchState // ignore: cast_nullable_to_non_nullable
              as UnifiedCardCardFetchState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnifiedCardImpl implements _UnifiedCard {
  const _$UnifiedCardImpl(
      {@JsonKey(name: 'card_fetch_state') required this.cardFetchState});

  factory _$UnifiedCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnifiedCardImplFromJson(json);

  @override
  @JsonKey(name: 'card_fetch_state')
  final UnifiedCardCardFetchState cardFetchState;

  @override
  String toString() {
    return 'UnifiedCard(cardFetchState: $cardFetchState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnifiedCardImpl &&
            (identical(other.cardFetchState, cardFetchState) ||
                other.cardFetchState == cardFetchState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cardFetchState);

  /// Create a copy of UnifiedCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnifiedCardImplCopyWith<_$UnifiedCardImpl> get copyWith =>
      __$$UnifiedCardImplCopyWithImpl<_$UnifiedCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnifiedCardImplToJson(
      this,
    );
  }
}

abstract class _UnifiedCard implements UnifiedCard {
  const factory _UnifiedCard(
          {@JsonKey(name: 'card_fetch_state')
          required final UnifiedCardCardFetchState cardFetchState}) =
      _$UnifiedCardImpl;

  factory _UnifiedCard.fromJson(Map<String, dynamic> json) =
      _$UnifiedCardImpl.fromJson;

  @override
  @JsonKey(name: 'card_fetch_state')
  UnifiedCardCardFetchState get cardFetchState;

  /// Create a copy of UnifiedCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnifiedCardImplCopyWith<_$UnifiedCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
