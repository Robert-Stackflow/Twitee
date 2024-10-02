// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaResult _$MediaResultFromJson(Map<String, dynamic> json) {
  return _MediaResult.fromJson(json);
}

/// @nodoc
mixin _$MediaResult {
  @JsonKey(name: 'media_key')
  String get mediaKey => throw _privateConstructorUsedError;

  /// Serializes this MediaResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaResultCopyWith<MediaResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaResultCopyWith<$Res> {
  factory $MediaResultCopyWith(
          MediaResult value, $Res Function(MediaResult) then) =
      _$MediaResultCopyWithImpl<$Res, MediaResult>;
  @useResult
  $Res call({@JsonKey(name: 'media_key') String mediaKey});
}

/// @nodoc
class _$MediaResultCopyWithImpl<$Res, $Val extends MediaResult>
    implements $MediaResultCopyWith<$Res> {
  _$MediaResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaKey = null,
  }) {
    return _then(_value.copyWith(
      mediaKey: null == mediaKey
          ? _value.mediaKey
          : mediaKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaResultImplCopyWith<$Res>
    implements $MediaResultCopyWith<$Res> {
  factory _$$MediaResultImplCopyWith(
          _$MediaResultImpl value, $Res Function(_$MediaResultImpl) then) =
      __$$MediaResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'media_key') String mediaKey});
}

/// @nodoc
class __$$MediaResultImplCopyWithImpl<$Res>
    extends _$MediaResultCopyWithImpl<$Res, _$MediaResultImpl>
    implements _$$MediaResultImplCopyWith<$Res> {
  __$$MediaResultImplCopyWithImpl(
      _$MediaResultImpl _value, $Res Function(_$MediaResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaKey = null,
  }) {
    return _then(_$MediaResultImpl(
      mediaKey: null == mediaKey
          ? _value.mediaKey
          : mediaKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaResultImpl implements _MediaResult {
  const _$MediaResultImpl({@JsonKey(name: 'media_key') required this.mediaKey});

  factory _$MediaResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaResultImplFromJson(json);

  @override
  @JsonKey(name: 'media_key')
  final String mediaKey;

  @override
  String toString() {
    return 'MediaResult(mediaKey: $mediaKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaResultImpl &&
            (identical(other.mediaKey, mediaKey) ||
                other.mediaKey == mediaKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mediaKey);

  /// Create a copy of MediaResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaResultImplCopyWith<_$MediaResultImpl> get copyWith =>
      __$$MediaResultImplCopyWithImpl<_$MediaResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaResultImplToJson(
      this,
    );
  }
}

abstract class _MediaResult implements MediaResult {
  const factory _MediaResult(
          {@JsonKey(name: 'media_key') required final String mediaKey}) =
      _$MediaResultImpl;

  factory _MediaResult.fromJson(Map<String, dynamic> json) =
      _$MediaResultImpl.fromJson;

  @override
  @JsonKey(name: 'media_key')
  String get mediaKey;

  /// Create a copy of MediaResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaResultImplCopyWith<_$MediaResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
