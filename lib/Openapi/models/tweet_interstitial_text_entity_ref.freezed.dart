// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_interstitial_text_entity_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetInterstitialTextEntityRef _$TweetInterstitialTextEntityRefFromJson(
    Map<String, dynamic> json) {
  return _TweetInterstitialTextEntityRef.fromJson(json);
}

/// @nodoc
mixin _$TweetInterstitialTextEntityRef {
  TweetInterstitialTextEntityRefType get type =>
      throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  TweetInterstitialTextEntityRefUrlType get urlType =>
      throw _privateConstructorUsedError;

  /// Serializes this TweetInterstitialTextEntityRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetInterstitialTextEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetInterstitialTextEntityRefCopyWith<TweetInterstitialTextEntityRef>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetInterstitialTextEntityRefCopyWith<$Res> {
  factory $TweetInterstitialTextEntityRefCopyWith(
          TweetInterstitialTextEntityRef value,
          $Res Function(TweetInterstitialTextEntityRef) then) =
      _$TweetInterstitialTextEntityRefCopyWithImpl<$Res,
          TweetInterstitialTextEntityRef>;
  @useResult
  $Res call(
      {TweetInterstitialTextEntityRefType type,
      String url,
      TweetInterstitialTextEntityRefUrlType urlType});
}

/// @nodoc
class _$TweetInterstitialTextEntityRefCopyWithImpl<$Res,
        $Val extends TweetInterstitialTextEntityRef>
    implements $TweetInterstitialTextEntityRefCopyWith<$Res> {
  _$TweetInterstitialTextEntityRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetInterstitialTextEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? urlType = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TweetInterstitialTextEntityRefType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as TweetInterstitialTextEntityRefUrlType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetInterstitialTextEntityRefImplCopyWith<$Res>
    implements $TweetInterstitialTextEntityRefCopyWith<$Res> {
  factory _$$TweetInterstitialTextEntityRefImplCopyWith(
          _$TweetInterstitialTextEntityRefImpl value,
          $Res Function(_$TweetInterstitialTextEntityRefImpl) then) =
      __$$TweetInterstitialTextEntityRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TweetInterstitialTextEntityRefType type,
      String url,
      TweetInterstitialTextEntityRefUrlType urlType});
}

/// @nodoc
class __$$TweetInterstitialTextEntityRefImplCopyWithImpl<$Res>
    extends _$TweetInterstitialTextEntityRefCopyWithImpl<$Res,
        _$TweetInterstitialTextEntityRefImpl>
    implements _$$TweetInterstitialTextEntityRefImplCopyWith<$Res> {
  __$$TweetInterstitialTextEntityRefImplCopyWithImpl(
      _$TweetInterstitialTextEntityRefImpl _value,
      $Res Function(_$TweetInterstitialTextEntityRefImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetInterstitialTextEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? urlType = null,
  }) {
    return _then(_$TweetInterstitialTextEntityRefImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TweetInterstitialTextEntityRefType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as TweetInterstitialTextEntityRefUrlType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetInterstitialTextEntityRefImpl
    implements _TweetInterstitialTextEntityRef {
  const _$TweetInterstitialTextEntityRefImpl(
      {required this.type, required this.url, required this.urlType});

  factory _$TweetInterstitialTextEntityRefImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TweetInterstitialTextEntityRefImplFromJson(json);

  @override
  final TweetInterstitialTextEntityRefType type;
  @override
  final String url;
  @override
  final TweetInterstitialTextEntityRefUrlType urlType;

  @override
  String toString() {
    return 'TweetInterstitialTextEntityRef(type: $type, url: $url, urlType: $urlType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetInterstitialTextEntityRefImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlType, urlType) || other.urlType == urlType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, url, urlType);

  /// Create a copy of TweetInterstitialTextEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetInterstitialTextEntityRefImplCopyWith<
          _$TweetInterstitialTextEntityRefImpl>
      get copyWith => __$$TweetInterstitialTextEntityRefImplCopyWithImpl<
          _$TweetInterstitialTextEntityRefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetInterstitialTextEntityRefImplToJson(
      this,
    );
  }
}

abstract class _TweetInterstitialTextEntityRef
    implements TweetInterstitialTextEntityRef {
  const factory _TweetInterstitialTextEntityRef(
          {required final TweetInterstitialTextEntityRefType type,
          required final String url,
          required final TweetInterstitialTextEntityRefUrlType urlType}) =
      _$TweetInterstitialTextEntityRefImpl;

  factory _TweetInterstitialTextEntityRef.fromJson(Map<String, dynamic> json) =
      _$TweetInterstitialTextEntityRefImpl.fromJson;

  @override
  TweetInterstitialTextEntityRefType get type;
  @override
  String get url;
  @override
  TweetInterstitialTextEntityRefUrlType get urlType;

  /// Create a copy of TweetInterstitialTextEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetInterstitialTextEntityRefImplCopyWith<
          _$TweetInterstitialTextEntityRefImpl>
      get copyWith => throw _privateConstructorUsedError;
}
