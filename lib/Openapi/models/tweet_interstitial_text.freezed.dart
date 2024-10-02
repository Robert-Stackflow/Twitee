// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_interstitial_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetInterstitialText _$TweetInterstitialTextFromJson(
    Map<String, dynamic> json) {
  return _TweetInterstitialText.fromJson(json);
}

/// @nodoc
mixin _$TweetInterstitialText {
  List<TweetInterstitialTextEntity> get entities =>
      throw _privateConstructorUsedError;
  bool get rtl => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this TweetInterstitialText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetInterstitialText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetInterstitialTextCopyWith<TweetInterstitialText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetInterstitialTextCopyWith<$Res> {
  factory $TweetInterstitialTextCopyWith(TweetInterstitialText value,
          $Res Function(TweetInterstitialText) then) =
      _$TweetInterstitialTextCopyWithImpl<$Res, TweetInterstitialText>;
  @useResult
  $Res call(
      {List<TweetInterstitialTextEntity> entities, bool rtl, String text});
}

/// @nodoc
class _$TweetInterstitialTextCopyWithImpl<$Res,
        $Val extends TweetInterstitialText>
    implements $TweetInterstitialTextCopyWith<$Res> {
  _$TweetInterstitialTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetInterstitialText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? rtl = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<TweetInterstitialTextEntity>,
      rtl: null == rtl
          ? _value.rtl
          : rtl // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetInterstitialTextImplCopyWith<$Res>
    implements $TweetInterstitialTextCopyWith<$Res> {
  factory _$$TweetInterstitialTextImplCopyWith(
          _$TweetInterstitialTextImpl value,
          $Res Function(_$TweetInterstitialTextImpl) then) =
      __$$TweetInterstitialTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TweetInterstitialTextEntity> entities, bool rtl, String text});
}

/// @nodoc
class __$$TweetInterstitialTextImplCopyWithImpl<$Res>
    extends _$TweetInterstitialTextCopyWithImpl<$Res,
        _$TweetInterstitialTextImpl>
    implements _$$TweetInterstitialTextImplCopyWith<$Res> {
  __$$TweetInterstitialTextImplCopyWithImpl(_$TweetInterstitialTextImpl _value,
      $Res Function(_$TweetInterstitialTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetInterstitialText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? rtl = null,
    Object? text = null,
  }) {
    return _then(_$TweetInterstitialTextImpl(
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<TweetInterstitialTextEntity>,
      rtl: null == rtl
          ? _value.rtl
          : rtl // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetInterstitialTextImpl implements _TweetInterstitialText {
  const _$TweetInterstitialTextImpl(
      {required final List<TweetInterstitialTextEntity> entities,
      required this.rtl,
      required this.text})
      : _entities = entities;

  factory _$TweetInterstitialTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetInterstitialTextImplFromJson(json);

  final List<TweetInterstitialTextEntity> _entities;
  @override
  List<TweetInterstitialTextEntity> get entities {
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  final bool rtl;
  @override
  final String text;

  @override
  String toString() {
    return 'TweetInterstitialText(entities: $entities, rtl: $rtl, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetInterstitialTextImpl &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(other.rtl, rtl) || other.rtl == rtl) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entities), rtl, text);

  /// Create a copy of TweetInterstitialText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetInterstitialTextImplCopyWith<_$TweetInterstitialTextImpl>
      get copyWith => __$$TweetInterstitialTextImplCopyWithImpl<
          _$TweetInterstitialTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetInterstitialTextImplToJson(
      this,
    );
  }
}

abstract class _TweetInterstitialText implements TweetInterstitialText {
  const factory _TweetInterstitialText(
      {required final List<TweetInterstitialTextEntity> entities,
      required final bool rtl,
      required final String text}) = _$TweetInterstitialTextImpl;

  factory _TweetInterstitialText.fromJson(Map<String, dynamic> json) =
      _$TweetInterstitialTextImpl.fromJson;

  @override
  List<TweetInterstitialTextEntity> get entities;
  @override
  bool get rtl;
  @override
  String get text;

  /// Create a copy of TweetInterstitialText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetInterstitialTextImplCopyWith<_$TweetInterstitialTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}
