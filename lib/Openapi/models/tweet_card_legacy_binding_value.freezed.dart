// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_card_legacy_binding_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetCardLegacyBindingValue _$TweetCardLegacyBindingValueFromJson(
    Map<String, dynamic> json) {
  return _TweetCardLegacyBindingValue.fromJson(json);
}

/// @nodoc
mixin _$TweetCardLegacyBindingValue {
  String get key => throw _privateConstructorUsedError;
  TweetCardLegacyBindingValueData get value =>
      throw _privateConstructorUsedError;

  /// Serializes this TweetCardLegacyBindingValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetCardLegacyBindingValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCardLegacyBindingValueCopyWith<TweetCardLegacyBindingValue>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCardLegacyBindingValueCopyWith<$Res> {
  factory $TweetCardLegacyBindingValueCopyWith(
          TweetCardLegacyBindingValue value,
          $Res Function(TweetCardLegacyBindingValue) then) =
      _$TweetCardLegacyBindingValueCopyWithImpl<$Res,
          TweetCardLegacyBindingValue>;
  @useResult
  $Res call({String key, TweetCardLegacyBindingValueData value});

  $TweetCardLegacyBindingValueDataCopyWith<$Res> get value;
}

/// @nodoc
class _$TweetCardLegacyBindingValueCopyWithImpl<$Res,
        $Val extends TweetCardLegacyBindingValue>
    implements $TweetCardLegacyBindingValueCopyWith<$Res> {
  _$TweetCardLegacyBindingValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetCardLegacyBindingValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TweetCardLegacyBindingValueData,
    ) as $Val);
  }

  /// Create a copy of TweetCardLegacyBindingValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetCardLegacyBindingValueDataCopyWith<$Res> get value {
    return $TweetCardLegacyBindingValueDataCopyWith<$Res>(_value.value,
        (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetCardLegacyBindingValueImplCopyWith<$Res>
    implements $TweetCardLegacyBindingValueCopyWith<$Res> {
  factory _$$TweetCardLegacyBindingValueImplCopyWith(
          _$TweetCardLegacyBindingValueImpl value,
          $Res Function(_$TweetCardLegacyBindingValueImpl) then) =
      __$$TweetCardLegacyBindingValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, TweetCardLegacyBindingValueData value});

  @override
  $TweetCardLegacyBindingValueDataCopyWith<$Res> get value;
}

/// @nodoc
class __$$TweetCardLegacyBindingValueImplCopyWithImpl<$Res>
    extends _$TweetCardLegacyBindingValueCopyWithImpl<$Res,
        _$TweetCardLegacyBindingValueImpl>
    implements _$$TweetCardLegacyBindingValueImplCopyWith<$Res> {
  __$$TweetCardLegacyBindingValueImplCopyWithImpl(
      _$TweetCardLegacyBindingValueImpl _value,
      $Res Function(_$TweetCardLegacyBindingValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetCardLegacyBindingValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$TweetCardLegacyBindingValueImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TweetCardLegacyBindingValueData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetCardLegacyBindingValueImpl
    implements _TweetCardLegacyBindingValue {
  const _$TweetCardLegacyBindingValueImpl(
      {required this.key, required this.value});

  factory _$TweetCardLegacyBindingValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TweetCardLegacyBindingValueImplFromJson(json);

  @override
  final String key;
  @override
  final TweetCardLegacyBindingValueData value;

  @override
  String toString() {
    return 'TweetCardLegacyBindingValue(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetCardLegacyBindingValueImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  /// Create a copy of TweetCardLegacyBindingValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetCardLegacyBindingValueImplCopyWith<_$TweetCardLegacyBindingValueImpl>
      get copyWith => __$$TweetCardLegacyBindingValueImplCopyWithImpl<
          _$TweetCardLegacyBindingValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetCardLegacyBindingValueImplToJson(
      this,
    );
  }
}

abstract class _TweetCardLegacyBindingValue
    implements TweetCardLegacyBindingValue {
  const factory _TweetCardLegacyBindingValue(
          {required final String key,
          required final TweetCardLegacyBindingValueData value}) =
      _$TweetCardLegacyBindingValueImpl;

  factory _TweetCardLegacyBindingValue.fromJson(Map<String, dynamic> json) =
      _$TweetCardLegacyBindingValueImpl.fromJson;

  @override
  String get key;
  @override
  TweetCardLegacyBindingValueData get value;

  /// Create a copy of TweetCardLegacyBindingValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetCardLegacyBindingValueImplCopyWith<_$TweetCardLegacyBindingValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}
