// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_context_landing_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialContextLandingUrl _$SocialContextLandingUrlFromJson(
    Map<String, dynamic> json) {
  return _SocialContextLandingUrl.fromJson(json);
}

/// @nodoc
mixin _$SocialContextLandingUrl {
  String get url => throw _privateConstructorUsedError;
  SocialContextLandingUrlUrlType get urlType =>
      throw _privateConstructorUsedError;
  UrtEndpointOptions get urtEndpointOptions =>
      throw _privateConstructorUsedError;

  /// Serializes this SocialContextLandingUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialContextLandingUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialContextLandingUrlCopyWith<SocialContextLandingUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialContextLandingUrlCopyWith<$Res> {
  factory $SocialContextLandingUrlCopyWith(SocialContextLandingUrl value,
          $Res Function(SocialContextLandingUrl) then) =
      _$SocialContextLandingUrlCopyWithImpl<$Res, SocialContextLandingUrl>;
  @useResult
  $Res call(
      {String url,
      SocialContextLandingUrlUrlType urlType,
      UrtEndpointOptions urtEndpointOptions});

  $UrtEndpointOptionsCopyWith<$Res> get urtEndpointOptions;
}

/// @nodoc
class _$SocialContextLandingUrlCopyWithImpl<$Res,
        $Val extends SocialContextLandingUrl>
    implements $SocialContextLandingUrlCopyWith<$Res> {
  _$SocialContextLandingUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialContextLandingUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? urlType = null,
    Object? urtEndpointOptions = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as SocialContextLandingUrlUrlType,
      urtEndpointOptions: null == urtEndpointOptions
          ? _value.urtEndpointOptions
          : urtEndpointOptions // ignore: cast_nullable_to_non_nullable
              as UrtEndpointOptions,
    ) as $Val);
  }

  /// Create a copy of SocialContextLandingUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrtEndpointOptionsCopyWith<$Res> get urtEndpointOptions {
    return $UrtEndpointOptionsCopyWith<$Res>(_value.urtEndpointOptions,
        (value) {
      return _then(_value.copyWith(urtEndpointOptions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocialContextLandingUrlImplCopyWith<$Res>
    implements $SocialContextLandingUrlCopyWith<$Res> {
  factory _$$SocialContextLandingUrlImplCopyWith(
          _$SocialContextLandingUrlImpl value,
          $Res Function(_$SocialContextLandingUrlImpl) then) =
      __$$SocialContextLandingUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      SocialContextLandingUrlUrlType urlType,
      UrtEndpointOptions urtEndpointOptions});

  @override
  $UrtEndpointOptionsCopyWith<$Res> get urtEndpointOptions;
}

/// @nodoc
class __$$SocialContextLandingUrlImplCopyWithImpl<$Res>
    extends _$SocialContextLandingUrlCopyWithImpl<$Res,
        _$SocialContextLandingUrlImpl>
    implements _$$SocialContextLandingUrlImplCopyWith<$Res> {
  __$$SocialContextLandingUrlImplCopyWithImpl(
      _$SocialContextLandingUrlImpl _value,
      $Res Function(_$SocialContextLandingUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialContextLandingUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? urlType = null,
    Object? urtEndpointOptions = null,
  }) {
    return _then(_$SocialContextLandingUrlImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as SocialContextLandingUrlUrlType,
      urtEndpointOptions: null == urtEndpointOptions
          ? _value.urtEndpointOptions
          : urtEndpointOptions // ignore: cast_nullable_to_non_nullable
              as UrtEndpointOptions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialContextLandingUrlImpl implements _SocialContextLandingUrl {
  const _$SocialContextLandingUrlImpl(
      {required this.url,
      required this.urlType,
      required this.urtEndpointOptions});

  factory _$SocialContextLandingUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialContextLandingUrlImplFromJson(json);

  @override
  final String url;
  @override
  final SocialContextLandingUrlUrlType urlType;
  @override
  final UrtEndpointOptions urtEndpointOptions;

  @override
  String toString() {
    return 'SocialContextLandingUrl(url: $url, urlType: $urlType, urtEndpointOptions: $urtEndpointOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialContextLandingUrlImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlType, urlType) || other.urlType == urlType) &&
            (identical(other.urtEndpointOptions, urtEndpointOptions) ||
                other.urtEndpointOptions == urtEndpointOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, urlType, urtEndpointOptions);

  /// Create a copy of SocialContextLandingUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialContextLandingUrlImplCopyWith<_$SocialContextLandingUrlImpl>
      get copyWith => __$$SocialContextLandingUrlImplCopyWithImpl<
          _$SocialContextLandingUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialContextLandingUrlImplToJson(
      this,
    );
  }
}

abstract class _SocialContextLandingUrl implements SocialContextLandingUrl {
  const factory _SocialContextLandingUrl(
          {required final String url,
          required final SocialContextLandingUrlUrlType urlType,
          required final UrtEndpointOptions urtEndpointOptions}) =
      _$SocialContextLandingUrlImpl;

  factory _SocialContextLandingUrl.fromJson(Map<String, dynamic> json) =
      _$SocialContextLandingUrlImpl.fromJson;

  @override
  String get url;
  @override
  SocialContextLandingUrlUrlType get urlType;
  @override
  UrtEndpointOptions get urtEndpointOptions;

  /// Create a copy of SocialContextLandingUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialContextLandingUrlImplCopyWith<_$SocialContextLandingUrlImpl>
      get copyWith => throw _privateConstructorUsedError;
}
