// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_cover_behavior_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineCoverBehaviorUrl _$TimelineCoverBehaviorUrlFromJson(
    Map<String, dynamic> json) {
  return _TimelineCoverBehaviorUrl.fromJson(json);
}

/// @nodoc
mixin _$TimelineCoverBehaviorUrl {
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_type')
  TimelineCoverBehaviorUrlUrlType get urlType =>
      throw _privateConstructorUsedError;

  /// Serializes this TimelineCoverBehaviorUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineCoverBehaviorUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineCoverBehaviorUrlCopyWith<TimelineCoverBehaviorUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineCoverBehaviorUrlCopyWith<$Res> {
  factory $TimelineCoverBehaviorUrlCopyWith(TimelineCoverBehaviorUrl value,
          $Res Function(TimelineCoverBehaviorUrl) then) =
      _$TimelineCoverBehaviorUrlCopyWithImpl<$Res, TimelineCoverBehaviorUrl>;
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'url_type') TimelineCoverBehaviorUrlUrlType urlType});
}

/// @nodoc
class _$TimelineCoverBehaviorUrlCopyWithImpl<$Res,
        $Val extends TimelineCoverBehaviorUrl>
    implements $TimelineCoverBehaviorUrlCopyWith<$Res> {
  _$TimelineCoverBehaviorUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineCoverBehaviorUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? urlType = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as TimelineCoverBehaviorUrlUrlType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineCoverBehaviorUrlImplCopyWith<$Res>
    implements $TimelineCoverBehaviorUrlCopyWith<$Res> {
  factory _$$TimelineCoverBehaviorUrlImplCopyWith(
          _$TimelineCoverBehaviorUrlImpl value,
          $Res Function(_$TimelineCoverBehaviorUrlImpl) then) =
      __$$TimelineCoverBehaviorUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'url_type') TimelineCoverBehaviorUrlUrlType urlType});
}

/// @nodoc
class __$$TimelineCoverBehaviorUrlImplCopyWithImpl<$Res>
    extends _$TimelineCoverBehaviorUrlCopyWithImpl<$Res,
        _$TimelineCoverBehaviorUrlImpl>
    implements _$$TimelineCoverBehaviorUrlImplCopyWith<$Res> {
  __$$TimelineCoverBehaviorUrlImplCopyWithImpl(
      _$TimelineCoverBehaviorUrlImpl _value,
      $Res Function(_$TimelineCoverBehaviorUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineCoverBehaviorUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? urlType = null,
  }) {
    return _then(_$TimelineCoverBehaviorUrlImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as TimelineCoverBehaviorUrlUrlType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineCoverBehaviorUrlImpl implements _TimelineCoverBehaviorUrl {
  const _$TimelineCoverBehaviorUrlImpl(
      {required this.url, @JsonKey(name: 'url_type') required this.urlType});

  factory _$TimelineCoverBehaviorUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineCoverBehaviorUrlImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey(name: 'url_type')
  final TimelineCoverBehaviorUrlUrlType urlType;

  @override
  String toString() {
    return 'TimelineCoverBehaviorUrl(url: $url, urlType: $urlType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineCoverBehaviorUrlImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlType, urlType) || other.urlType == urlType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, urlType);

  /// Create a copy of TimelineCoverBehaviorUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineCoverBehaviorUrlImplCopyWith<_$TimelineCoverBehaviorUrlImpl>
      get copyWith => __$$TimelineCoverBehaviorUrlImplCopyWithImpl<
          _$TimelineCoverBehaviorUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineCoverBehaviorUrlImplToJson(
      this,
    );
  }
}

abstract class _TimelineCoverBehaviorUrl implements TimelineCoverBehaviorUrl {
  const factory _TimelineCoverBehaviorUrl(
          {required final String url,
          @JsonKey(name: 'url_type')
          required final TimelineCoverBehaviorUrlUrlType urlType}) =
      _$TimelineCoverBehaviorUrlImpl;

  factory _TimelineCoverBehaviorUrl.fromJson(Map<String, dynamic> json) =
      _$TimelineCoverBehaviorUrlImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(name: 'url_type')
  TimelineCoverBehaviorUrlUrlType get urlType;

  /// Create a copy of TimelineCoverBehaviorUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineCoverBehaviorUrlImplCopyWith<_$TimelineCoverBehaviorUrlImpl>
      get copyWith => throw _privateConstructorUsedError;
}
