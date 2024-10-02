// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return _Error.fromJson(json);
}

/// @nodoc
mixin _$Error {
  int get code => throw _privateConstructorUsedError;
  ErrorExtensions get extensions => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  List<Location> get locations => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'retry_after')
  int get retryAfter => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  Tracing get tracing => throw _privateConstructorUsedError;

  /// Serializes this Error to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res, Error>;
  @useResult
  $Res call(
      {int code,
      ErrorExtensions extensions,
      String kind,
      List<Location> locations,
      String message,
      String name,
      List<String> path,
      @JsonKey(name: 'retry_after') int retryAfter,
      String source,
      Tracing tracing});

  $ErrorExtensionsCopyWith<$Res> get extensions;
  $TracingCopyWith<$Res> get tracing;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res, $Val extends Error>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? extensions = null,
    Object? kind = null,
    Object? locations = null,
    Object? message = null,
    Object? name = null,
    Object? path = null,
    Object? retryAfter = null,
    Object? source = null,
    Object? tracing = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      extensions: null == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as ErrorExtensions,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>,
      retryAfter: null == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      tracing: null == tracing
          ? _value.tracing
          : tracing // ignore: cast_nullable_to_non_nullable
              as Tracing,
    ) as $Val);
  }

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorExtensionsCopyWith<$Res> get extensions {
    return $ErrorExtensionsCopyWith<$Res>(_value.extensions, (value) {
      return _then(_value.copyWith(extensions: value) as $Val);
    });
  }

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TracingCopyWith<$Res> get tracing {
    return $TracingCopyWith<$Res>(_value.tracing, (value) {
      return _then(_value.copyWith(tracing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      ErrorExtensions extensions,
      String kind,
      List<Location> locations,
      String message,
      String name,
      List<String> path,
      @JsonKey(name: 'retry_after') int retryAfter,
      String source,
      Tracing tracing});

  @override
  $ErrorExtensionsCopyWith<$Res> get extensions;
  @override
  $TracingCopyWith<$Res> get tracing;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? extensions = null,
    Object? kind = null,
    Object? locations = null,
    Object? message = null,
    Object? name = null,
    Object? path = null,
    Object? retryAfter = null,
    Object? source = null,
    Object? tracing = null,
  }) {
    return _then(_$ErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      extensions: null == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as ErrorExtensions,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>,
      retryAfter: null == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      tracing: null == tracing
          ? _value.tracing
          : tracing // ignore: cast_nullable_to_non_nullable
              as Tracing,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      {required this.code,
      required this.extensions,
      required this.kind,
      required final List<Location> locations,
      required this.message,
      required this.name,
      required final List<String> path,
      @JsonKey(name: 'retry_after') required this.retryAfter,
      required this.source,
      required this.tracing})
      : _locations = locations,
        _path = path;

  factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorImplFromJson(json);

  @override
  final int code;
  @override
  final ErrorExtensions extensions;
  @override
  final String kind;
  final List<Location> _locations;
  @override
  List<Location> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  final String message;
  @override
  final String name;
  final List<String> _path;
  @override
  List<String> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  @JsonKey(name: 'retry_after')
  final int retryAfter;
  @override
  final String source;
  @override
  final Tracing tracing;

  @override
  String toString() {
    return 'Error(code: $code, extensions: $extensions, kind: $kind, locations: $locations, message: $message, name: $name, path: $path, retryAfter: $retryAfter, source: $source, tracing: $tracing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.extensions, extensions) ||
                other.extensions == extensions) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            (identical(other.retryAfter, retryAfter) ||
                other.retryAfter == retryAfter) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.tracing, tracing) || other.tracing == tracing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      extensions,
      kind,
      const DeepCollectionEquality().hash(_locations),
      message,
      name,
      const DeepCollectionEquality().hash(_path),
      retryAfter,
      source,
      tracing);

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorImplToJson(
      this,
    );
  }
}

abstract class _Error implements Error {
  const factory _Error(
      {required final int code,
      required final ErrorExtensions extensions,
      required final String kind,
      required final List<Location> locations,
      required final String message,
      required final String name,
      required final List<String> path,
      @JsonKey(name: 'retry_after') required final int retryAfter,
      required final String source,
      required final Tracing tracing}) = _$ErrorImpl;

  factory _Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  @override
  int get code;
  @override
  ErrorExtensions get extensions;
  @override
  String get kind;
  @override
  List<Location> get locations;
  @override
  String get message;
  @override
  String get name;
  @override
  List<String> get path;
  @override
  @JsonKey(name: 'retry_after')
  int get retryAfter;
  @override
  String get source;
  @override
  Tracing get tracing;

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
