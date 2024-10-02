// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_card_legacy_binding_value_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetCardLegacyBindingValueData _$TweetCardLegacyBindingValueDataFromJson(
    Map<String, dynamic> json) {
  return _TweetCardLegacyBindingValueData.fromJson(json);
}

/// @nodoc
mixin _$TweetCardLegacyBindingValueData {
  @JsonKey(name: 'boolean_value')
  bool get booleanValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_color_value')
  dynamic get imageColorValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_value')
  TweetCardLegacyBindingValueDataImage get imageValue =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'scribe_key')
  String get scribeKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'string_value')
  String get stringValue => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_value')
  UserValue get userValue => throw _privateConstructorUsedError;

  /// Serializes this TweetCardLegacyBindingValueData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetCardLegacyBindingValueData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetCardLegacyBindingValueDataCopyWith<TweetCardLegacyBindingValueData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCardLegacyBindingValueDataCopyWith<$Res> {
  factory $TweetCardLegacyBindingValueDataCopyWith(
          TweetCardLegacyBindingValueData value,
          $Res Function(TweetCardLegacyBindingValueData) then) =
      _$TweetCardLegacyBindingValueDataCopyWithImpl<$Res,
          TweetCardLegacyBindingValueData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'boolean_value') bool booleanValue,
      @JsonKey(name: 'image_color_value') dynamic imageColorValue,
      @JsonKey(name: 'image_value')
      TweetCardLegacyBindingValueDataImage imageValue,
      @JsonKey(name: 'scribe_key') String scribeKey,
      @JsonKey(name: 'string_value') String stringValue,
      String type,
      @JsonKey(name: 'user_value') UserValue userValue});

  $TweetCardLegacyBindingValueDataImageCopyWith<$Res> get imageValue;
  $UserValueCopyWith<$Res> get userValue;
}

/// @nodoc
class _$TweetCardLegacyBindingValueDataCopyWithImpl<$Res,
        $Val extends TweetCardLegacyBindingValueData>
    implements $TweetCardLegacyBindingValueDataCopyWith<$Res> {
  _$TweetCardLegacyBindingValueDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetCardLegacyBindingValueData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booleanValue = null,
    Object? imageColorValue = freezed,
    Object? imageValue = null,
    Object? scribeKey = null,
    Object? stringValue = null,
    Object? type = null,
    Object? userValue = null,
  }) {
    return _then(_value.copyWith(
      booleanValue: null == booleanValue
          ? _value.booleanValue
          : booleanValue // ignore: cast_nullable_to_non_nullable
              as bool,
      imageColorValue: freezed == imageColorValue
          ? _value.imageColorValue
          : imageColorValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imageValue: null == imageValue
          ? _value.imageValue
          : imageValue // ignore: cast_nullable_to_non_nullable
              as TweetCardLegacyBindingValueDataImage,
      scribeKey: null == scribeKey
          ? _value.scribeKey
          : scribeKey // ignore: cast_nullable_to_non_nullable
              as String,
      stringValue: null == stringValue
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userValue: null == userValue
          ? _value.userValue
          : userValue // ignore: cast_nullable_to_non_nullable
              as UserValue,
    ) as $Val);
  }

  /// Create a copy of TweetCardLegacyBindingValueData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetCardLegacyBindingValueDataImageCopyWith<$Res> get imageValue {
    return $TweetCardLegacyBindingValueDataImageCopyWith<$Res>(
        _value.imageValue, (value) {
      return _then(_value.copyWith(imageValue: value) as $Val);
    });
  }

  /// Create a copy of TweetCardLegacyBindingValueData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserValueCopyWith<$Res> get userValue {
    return $UserValueCopyWith<$Res>(_value.userValue, (value) {
      return _then(_value.copyWith(userValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TweetCardLegacyBindingValueDataImplCopyWith<$Res>
    implements $TweetCardLegacyBindingValueDataCopyWith<$Res> {
  factory _$$TweetCardLegacyBindingValueDataImplCopyWith(
          _$TweetCardLegacyBindingValueDataImpl value,
          $Res Function(_$TweetCardLegacyBindingValueDataImpl) then) =
      __$$TweetCardLegacyBindingValueDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'boolean_value') bool booleanValue,
      @JsonKey(name: 'image_color_value') dynamic imageColorValue,
      @JsonKey(name: 'image_value')
      TweetCardLegacyBindingValueDataImage imageValue,
      @JsonKey(name: 'scribe_key') String scribeKey,
      @JsonKey(name: 'string_value') String stringValue,
      String type,
      @JsonKey(name: 'user_value') UserValue userValue});

  @override
  $TweetCardLegacyBindingValueDataImageCopyWith<$Res> get imageValue;
  @override
  $UserValueCopyWith<$Res> get userValue;
}

/// @nodoc
class __$$TweetCardLegacyBindingValueDataImplCopyWithImpl<$Res>
    extends _$TweetCardLegacyBindingValueDataCopyWithImpl<$Res,
        _$TweetCardLegacyBindingValueDataImpl>
    implements _$$TweetCardLegacyBindingValueDataImplCopyWith<$Res> {
  __$$TweetCardLegacyBindingValueDataImplCopyWithImpl(
      _$TweetCardLegacyBindingValueDataImpl _value,
      $Res Function(_$TweetCardLegacyBindingValueDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetCardLegacyBindingValueData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booleanValue = null,
    Object? imageColorValue = freezed,
    Object? imageValue = null,
    Object? scribeKey = null,
    Object? stringValue = null,
    Object? type = null,
    Object? userValue = null,
  }) {
    return _then(_$TweetCardLegacyBindingValueDataImpl(
      booleanValue: null == booleanValue
          ? _value.booleanValue
          : booleanValue // ignore: cast_nullable_to_non_nullable
              as bool,
      imageColorValue: freezed == imageColorValue
          ? _value.imageColorValue
          : imageColorValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imageValue: null == imageValue
          ? _value.imageValue
          : imageValue // ignore: cast_nullable_to_non_nullable
              as TweetCardLegacyBindingValueDataImage,
      scribeKey: null == scribeKey
          ? _value.scribeKey
          : scribeKey // ignore: cast_nullable_to_non_nullable
              as String,
      stringValue: null == stringValue
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userValue: null == userValue
          ? _value.userValue
          : userValue // ignore: cast_nullable_to_non_nullable
              as UserValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetCardLegacyBindingValueDataImpl
    implements _TweetCardLegacyBindingValueData {
  const _$TweetCardLegacyBindingValueDataImpl(
      {@JsonKey(name: 'boolean_value') required this.booleanValue,
      @JsonKey(name: 'image_color_value') required this.imageColorValue,
      @JsonKey(name: 'image_value') required this.imageValue,
      @JsonKey(name: 'scribe_key') required this.scribeKey,
      @JsonKey(name: 'string_value') required this.stringValue,
      required this.type,
      @JsonKey(name: 'user_value') required this.userValue});

  factory _$TweetCardLegacyBindingValueDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TweetCardLegacyBindingValueDataImplFromJson(json);

  @override
  @JsonKey(name: 'boolean_value')
  final bool booleanValue;
  @override
  @JsonKey(name: 'image_color_value')
  final dynamic imageColorValue;
  @override
  @JsonKey(name: 'image_value')
  final TweetCardLegacyBindingValueDataImage imageValue;
  @override
  @JsonKey(name: 'scribe_key')
  final String scribeKey;
  @override
  @JsonKey(name: 'string_value')
  final String stringValue;
  @override
  final String type;
  @override
  @JsonKey(name: 'user_value')
  final UserValue userValue;

  @override
  String toString() {
    return 'TweetCardLegacyBindingValueData(booleanValue: $booleanValue, imageColorValue: $imageColorValue, imageValue: $imageValue, scribeKey: $scribeKey, stringValue: $stringValue, type: $type, userValue: $userValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetCardLegacyBindingValueDataImpl &&
            (identical(other.booleanValue, booleanValue) ||
                other.booleanValue == booleanValue) &&
            const DeepCollectionEquality()
                .equals(other.imageColorValue, imageColorValue) &&
            (identical(other.imageValue, imageValue) ||
                other.imageValue == imageValue) &&
            (identical(other.scribeKey, scribeKey) ||
                other.scribeKey == scribeKey) &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userValue, userValue) ||
                other.userValue == userValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      booleanValue,
      const DeepCollectionEquality().hash(imageColorValue),
      imageValue,
      scribeKey,
      stringValue,
      type,
      userValue);

  /// Create a copy of TweetCardLegacyBindingValueData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetCardLegacyBindingValueDataImplCopyWith<
          _$TweetCardLegacyBindingValueDataImpl>
      get copyWith => __$$TweetCardLegacyBindingValueDataImplCopyWithImpl<
          _$TweetCardLegacyBindingValueDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetCardLegacyBindingValueDataImplToJson(
      this,
    );
  }
}

abstract class _TweetCardLegacyBindingValueData
    implements TweetCardLegacyBindingValueData {
  const factory _TweetCardLegacyBindingValueData(
          {@JsonKey(name: 'boolean_value') required final bool booleanValue,
          @JsonKey(name: 'image_color_value')
          required final dynamic imageColorValue,
          @JsonKey(name: 'image_value')
          required final TweetCardLegacyBindingValueDataImage imageValue,
          @JsonKey(name: 'scribe_key') required final String scribeKey,
          @JsonKey(name: 'string_value') required final String stringValue,
          required final String type,
          @JsonKey(name: 'user_value') required final UserValue userValue}) =
      _$TweetCardLegacyBindingValueDataImpl;

  factory _TweetCardLegacyBindingValueData.fromJson(Map<String, dynamic> json) =
      _$TweetCardLegacyBindingValueDataImpl.fromJson;

  @override
  @JsonKey(name: 'boolean_value')
  bool get booleanValue;
  @override
  @JsonKey(name: 'image_color_value')
  dynamic get imageColorValue;
  @override
  @JsonKey(name: 'image_value')
  TweetCardLegacyBindingValueDataImage get imageValue;
  @override
  @JsonKey(name: 'scribe_key')
  String get scribeKey;
  @override
  @JsonKey(name: 'string_value')
  String get stringValue;
  @override
  String get type;
  @override
  @JsonKey(name: 'user_value')
  UserValue get userValue;

  /// Create a copy of TweetCardLegacyBindingValueData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetCardLegacyBindingValueDataImplCopyWith<
          _$TweetCardLegacyBindingValueDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
