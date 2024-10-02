// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_entity_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextEntityRef _$TextEntityRefFromJson(Map<String, dynamic> json) {
  return _TextEntityRef.fromJson(json);
}

/// @nodoc
mixin _$TextEntityRef {
  TextEntityRefType get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  TextEntityRefUrlType get urlType => throw _privateConstructorUsedError;

  /// Serializes this TextEntityRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextEntityRefCopyWith<TextEntityRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextEntityRefCopyWith<$Res> {
  factory $TextEntityRefCopyWith(
          TextEntityRef value, $Res Function(TextEntityRef) then) =
      _$TextEntityRefCopyWithImpl<$Res, TextEntityRef>;
  @useResult
  $Res call({TextEntityRefType type, String url, TextEntityRefUrlType urlType});
}

/// @nodoc
class _$TextEntityRefCopyWithImpl<$Res, $Val extends TextEntityRef>
    implements $TextEntityRefCopyWith<$Res> {
  _$TextEntityRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextEntityRef
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
              as TextEntityRefType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as TextEntityRefUrlType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextEntityRefImplCopyWith<$Res>
    implements $TextEntityRefCopyWith<$Res> {
  factory _$$TextEntityRefImplCopyWith(
          _$TextEntityRefImpl value, $Res Function(_$TextEntityRefImpl) then) =
      __$$TextEntityRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEntityRefType type, String url, TextEntityRefUrlType urlType});
}

/// @nodoc
class __$$TextEntityRefImplCopyWithImpl<$Res>
    extends _$TextEntityRefCopyWithImpl<$Res, _$TextEntityRefImpl>
    implements _$$TextEntityRefImplCopyWith<$Res> {
  __$$TextEntityRefImplCopyWithImpl(
      _$TextEntityRefImpl _value, $Res Function(_$TextEntityRefImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? urlType = null,
  }) {
    return _then(_$TextEntityRefImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TextEntityRefType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as TextEntityRefUrlType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextEntityRefImpl implements _TextEntityRef {
  const _$TextEntityRefImpl(
      {required this.type, required this.url, required this.urlType});

  factory _$TextEntityRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextEntityRefImplFromJson(json);

  @override
  final TextEntityRefType type;
  @override
  final String url;
  @override
  final TextEntityRefUrlType urlType;

  @override
  String toString() {
    return 'TextEntityRef(type: $type, url: $url, urlType: $urlType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextEntityRefImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlType, urlType) || other.urlType == urlType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, url, urlType);

  /// Create a copy of TextEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextEntityRefImplCopyWith<_$TextEntityRefImpl> get copyWith =>
      __$$TextEntityRefImplCopyWithImpl<_$TextEntityRefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextEntityRefImplToJson(
      this,
    );
  }
}

abstract class _TextEntityRef implements TextEntityRef {
  const factory _TextEntityRef(
      {required final TextEntityRefType type,
      required final String url,
      required final TextEntityRefUrlType urlType}) = _$TextEntityRefImpl;

  factory _TextEntityRef.fromJson(Map<String, dynamic> json) =
      _$TextEntityRefImpl.fromJson;

  @override
  TextEntityRefType get type;
  @override
  String get url;
  @override
  TextEntityRefUrlType get urlType;

  /// Create a copy of TextEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextEntityRefImplCopyWith<_$TextEntityRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
