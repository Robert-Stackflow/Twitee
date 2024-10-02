// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_interstitial_reveal_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetInterstitialRevealText _$TweetInterstitialRevealTextFromJson(
    Map<String, dynamic> json) {
  return _TweetInterstitialRevealText.fromJson(json);
}

/// @nodoc
mixin _$TweetInterstitialRevealText {
  List<TweetInterstitialTextEntity> get entities =>
      throw _privateConstructorUsedError;
  bool get rtl => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this TweetInterstitialRevealText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetInterstitialRevealText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetInterstitialRevealTextCopyWith<TweetInterstitialRevealText>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetInterstitialRevealTextCopyWith<$Res> {
  factory $TweetInterstitialRevealTextCopyWith(
          TweetInterstitialRevealText value,
          $Res Function(TweetInterstitialRevealText) then) =
      _$TweetInterstitialRevealTextCopyWithImpl<$Res,
          TweetInterstitialRevealText>;
  @useResult
  $Res call(
      {List<TweetInterstitialTextEntity> entities, bool rtl, String text});
}

/// @nodoc
class _$TweetInterstitialRevealTextCopyWithImpl<$Res,
        $Val extends TweetInterstitialRevealText>
    implements $TweetInterstitialRevealTextCopyWith<$Res> {
  _$TweetInterstitialRevealTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetInterstitialRevealText
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
abstract class _$$TweetInterstitialRevealTextImplCopyWith<$Res>
    implements $TweetInterstitialRevealTextCopyWith<$Res> {
  factory _$$TweetInterstitialRevealTextImplCopyWith(
          _$TweetInterstitialRevealTextImpl value,
          $Res Function(_$TweetInterstitialRevealTextImpl) then) =
      __$$TweetInterstitialRevealTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TweetInterstitialTextEntity> entities, bool rtl, String text});
}

/// @nodoc
class __$$TweetInterstitialRevealTextImplCopyWithImpl<$Res>
    extends _$TweetInterstitialRevealTextCopyWithImpl<$Res,
        _$TweetInterstitialRevealTextImpl>
    implements _$$TweetInterstitialRevealTextImplCopyWith<$Res> {
  __$$TweetInterstitialRevealTextImplCopyWithImpl(
      _$TweetInterstitialRevealTextImpl _value,
      $Res Function(_$TweetInterstitialRevealTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetInterstitialRevealText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? rtl = null,
    Object? text = null,
  }) {
    return _then(_$TweetInterstitialRevealTextImpl(
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
class _$TweetInterstitialRevealTextImpl
    implements _TweetInterstitialRevealText {
  const _$TweetInterstitialRevealTextImpl(
      {required final List<TweetInterstitialTextEntity> entities,
      required this.rtl,
      required this.text})
      : _entities = entities;

  factory _$TweetInterstitialRevealTextImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TweetInterstitialRevealTextImplFromJson(json);

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
    return 'TweetInterstitialRevealText(entities: $entities, rtl: $rtl, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetInterstitialRevealTextImpl &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(other.rtl, rtl) || other.rtl == rtl) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entities), rtl, text);

  /// Create a copy of TweetInterstitialRevealText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetInterstitialRevealTextImplCopyWith<_$TweetInterstitialRevealTextImpl>
      get copyWith => __$$TweetInterstitialRevealTextImplCopyWithImpl<
          _$TweetInterstitialRevealTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetInterstitialRevealTextImplToJson(
      this,
    );
  }
}

abstract class _TweetInterstitialRevealText
    implements TweetInterstitialRevealText {
  const factory _TweetInterstitialRevealText(
      {required final List<TweetInterstitialTextEntity> entities,
      required final bool rtl,
      required final String text}) = _$TweetInterstitialRevealTextImpl;

  factory _TweetInterstitialRevealText.fromJson(Map<String, dynamic> json) =
      _$TweetInterstitialRevealTextImpl.fromJson;

  @override
  List<TweetInterstitialTextEntity> get entities;
  @override
  bool get rtl;
  @override
  String get text;

  /// Create a copy of TweetInterstitialRevealText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetInterstitialRevealTextImplCopyWith<_$TweetInterstitialRevealTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}
