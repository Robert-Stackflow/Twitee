// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_video_info_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaVideoInfoVariant _$MediaVideoInfoVariantFromJson(
    Map<String, dynamic> json) {
  return _MediaVideoInfoVariant.fromJson(json);
}

/// @nodoc
mixin _$MediaVideoInfoVariant {
  int get bitrate => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_type')
  String get contentType => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this MediaVideoInfoVariant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaVideoInfoVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaVideoInfoVariantCopyWith<MediaVideoInfoVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaVideoInfoVariantCopyWith<$Res> {
  factory $MediaVideoInfoVariantCopyWith(MediaVideoInfoVariant value,
          $Res Function(MediaVideoInfoVariant) then) =
      _$MediaVideoInfoVariantCopyWithImpl<$Res, MediaVideoInfoVariant>;
  @useResult
  $Res call(
      {int bitrate,
      @JsonKey(name: 'content_type') String contentType,
      String url});
}

/// @nodoc
class _$MediaVideoInfoVariantCopyWithImpl<$Res,
        $Val extends MediaVideoInfoVariant>
    implements $MediaVideoInfoVariantCopyWith<$Res> {
  _$MediaVideoInfoVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaVideoInfoVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitrate = null,
    Object? contentType = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaVideoInfoVariantImplCopyWith<$Res>
    implements $MediaVideoInfoVariantCopyWith<$Res> {
  factory _$$MediaVideoInfoVariantImplCopyWith(
          _$MediaVideoInfoVariantImpl value,
          $Res Function(_$MediaVideoInfoVariantImpl) then) =
      __$$MediaVideoInfoVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bitrate,
      @JsonKey(name: 'content_type') String contentType,
      String url});
}

/// @nodoc
class __$$MediaVideoInfoVariantImplCopyWithImpl<$Res>
    extends _$MediaVideoInfoVariantCopyWithImpl<$Res,
        _$MediaVideoInfoVariantImpl>
    implements _$$MediaVideoInfoVariantImplCopyWith<$Res> {
  __$$MediaVideoInfoVariantImplCopyWithImpl(_$MediaVideoInfoVariantImpl _value,
      $Res Function(_$MediaVideoInfoVariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaVideoInfoVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitrate = null,
    Object? contentType = null,
    Object? url = null,
  }) {
    return _then(_$MediaVideoInfoVariantImpl(
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaVideoInfoVariantImpl implements _MediaVideoInfoVariant {
  const _$MediaVideoInfoVariantImpl(
      {required this.bitrate,
      @JsonKey(name: 'content_type') required this.contentType,
      required this.url});

  factory _$MediaVideoInfoVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaVideoInfoVariantImplFromJson(json);

  @override
  final int bitrate;
  @override
  @JsonKey(name: 'content_type')
  final String contentType;
  @override
  final String url;

  @override
  String toString() {
    return 'MediaVideoInfoVariant(bitrate: $bitrate, contentType: $contentType, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaVideoInfoVariantImpl &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bitrate, contentType, url);

  /// Create a copy of MediaVideoInfoVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaVideoInfoVariantImplCopyWith<_$MediaVideoInfoVariantImpl>
      get copyWith => __$$MediaVideoInfoVariantImplCopyWithImpl<
          _$MediaVideoInfoVariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaVideoInfoVariantImplToJson(
      this,
    );
  }
}

abstract class _MediaVideoInfoVariant implements MediaVideoInfoVariant {
  const factory _MediaVideoInfoVariant(
      {required final int bitrate,
      @JsonKey(name: 'content_type') required final String contentType,
      required final String url}) = _$MediaVideoInfoVariantImpl;

  factory _MediaVideoInfoVariant.fromJson(Map<String, dynamic> json) =
      _$MediaVideoInfoVariantImpl.fromJson;

  @override
  int get bitrate;
  @override
  @JsonKey(name: 'content_type')
  String get contentType;
  @override
  String get url;

  /// Create a copy of MediaVideoInfoVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaVideoInfoVariantImplCopyWith<_$MediaVideoInfoVariantImpl>
      get copyWith => throw _privateConstructorUsedError;
}
