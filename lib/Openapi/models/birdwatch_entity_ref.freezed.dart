// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birdwatch_entity_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdwatchEntityRef _$BirdwatchEntityRefFromJson(Map<String, dynamic> json) {
  return _BirdwatchEntityRef.fromJson(json);
}

/// @nodoc
mixin _$BirdwatchEntityRef {
  String get text => throw _privateConstructorUsedError;
  BirdwatchEntityRefType get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  BirdwatchEntityRefUrlType get urlType => throw _privateConstructorUsedError;

  /// Serializes this BirdwatchEntityRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BirdwatchEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirdwatchEntityRefCopyWith<BirdwatchEntityRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdwatchEntityRefCopyWith<$Res> {
  factory $BirdwatchEntityRefCopyWith(
          BirdwatchEntityRef value, $Res Function(BirdwatchEntityRef) then) =
      _$BirdwatchEntityRefCopyWithImpl<$Res, BirdwatchEntityRef>;
  @useResult
  $Res call(
      {String text,
      BirdwatchEntityRefType type,
      String url,
      BirdwatchEntityRefUrlType urlType});
}

/// @nodoc
class _$BirdwatchEntityRefCopyWithImpl<$Res, $Val extends BirdwatchEntityRef>
    implements $BirdwatchEntityRefCopyWith<$Res> {
  _$BirdwatchEntityRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirdwatchEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? url = null,
    Object? urlType = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BirdwatchEntityRefType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as BirdwatchEntityRefUrlType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirdwatchEntityRefImplCopyWith<$Res>
    implements $BirdwatchEntityRefCopyWith<$Res> {
  factory _$$BirdwatchEntityRefImplCopyWith(_$BirdwatchEntityRefImpl value,
          $Res Function(_$BirdwatchEntityRefImpl) then) =
      __$$BirdwatchEntityRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      BirdwatchEntityRefType type,
      String url,
      BirdwatchEntityRefUrlType urlType});
}

/// @nodoc
class __$$BirdwatchEntityRefImplCopyWithImpl<$Res>
    extends _$BirdwatchEntityRefCopyWithImpl<$Res, _$BirdwatchEntityRefImpl>
    implements _$$BirdwatchEntityRefImplCopyWith<$Res> {
  __$$BirdwatchEntityRefImplCopyWithImpl(_$BirdwatchEntityRefImpl _value,
      $Res Function(_$BirdwatchEntityRefImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdwatchEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? url = null,
    Object? urlType = null,
  }) {
    return _then(_$BirdwatchEntityRefImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BirdwatchEntityRefType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlType: null == urlType
          ? _value.urlType
          : urlType // ignore: cast_nullable_to_non_nullable
              as BirdwatchEntityRefUrlType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirdwatchEntityRefImpl implements _BirdwatchEntityRef {
  const _$BirdwatchEntityRefImpl(
      {required this.text,
      required this.type,
      required this.url,
      required this.urlType});

  factory _$BirdwatchEntityRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdwatchEntityRefImplFromJson(json);

  @override
  final String text;
  @override
  final BirdwatchEntityRefType type;
  @override
  final String url;
  @override
  final BirdwatchEntityRefUrlType urlType;

  @override
  String toString() {
    return 'BirdwatchEntityRef(text: $text, type: $type, url: $url, urlType: $urlType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdwatchEntityRefImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlType, urlType) || other.urlType == urlType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, type, url, urlType);

  /// Create a copy of BirdwatchEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdwatchEntityRefImplCopyWith<_$BirdwatchEntityRefImpl> get copyWith =>
      __$$BirdwatchEntityRefImplCopyWithImpl<_$BirdwatchEntityRefImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdwatchEntityRefImplToJson(
      this,
    );
  }
}

abstract class _BirdwatchEntityRef implements BirdwatchEntityRef {
  const factory _BirdwatchEntityRef(
          {required final String text,
          required final BirdwatchEntityRefType type,
          required final String url,
          required final BirdwatchEntityRefUrlType urlType}) =
      _$BirdwatchEntityRefImpl;

  factory _BirdwatchEntityRef.fromJson(Map<String, dynamic> json) =
      _$BirdwatchEntityRefImpl.fromJson;

  @override
  String get text;
  @override
  BirdwatchEntityRefType get type;
  @override
  String get url;
  @override
  BirdwatchEntityRefUrlType get urlType;

  /// Create a copy of BirdwatchEntityRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdwatchEntityRefImplCopyWith<_$BirdwatchEntityRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
