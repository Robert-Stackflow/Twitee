// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_extensions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorExtensions _$ErrorExtensionsFromJson(Map<String, dynamic> json) {
  return _ErrorExtensions.fromJson(json);
}

/// @nodoc
mixin _$ErrorExtensions {
  int get code => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'retry_after')
  int get retryAfter => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  Tracing get tracing => throw _privateConstructorUsedError;

  /// Serializes this ErrorExtensions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorExtensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorExtensionsCopyWith<ErrorExtensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorExtensionsCopyWith<$Res> {
  factory $ErrorExtensionsCopyWith(
          ErrorExtensions value, $Res Function(ErrorExtensions) then) =
      _$ErrorExtensionsCopyWithImpl<$Res, ErrorExtensions>;
  @useResult
  $Res call(
      {int code,
      String kind,
      String name,
      @JsonKey(name: 'retry_after') int retryAfter,
      String source,
      Tracing tracing});

  $TracingCopyWith<$Res> get tracing;
}

/// @nodoc
class _$ErrorExtensionsCopyWithImpl<$Res, $Val extends ErrorExtensions>
    implements $ErrorExtensionsCopyWith<$Res> {
  _$ErrorExtensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorExtensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? kind = null,
    Object? name = null,
    Object? retryAfter = null,
    Object? source = null,
    Object? tracing = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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

  /// Create a copy of ErrorExtensions
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
abstract class _$$ErrorExtensionsImplCopyWith<$Res>
    implements $ErrorExtensionsCopyWith<$Res> {
  factory _$$ErrorExtensionsImplCopyWith(_$ErrorExtensionsImpl value,
          $Res Function(_$ErrorExtensionsImpl) then) =
      __$$ErrorExtensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String kind,
      String name,
      @JsonKey(name: 'retry_after') int retryAfter,
      String source,
      Tracing tracing});

  @override
  $TracingCopyWith<$Res> get tracing;
}

/// @nodoc
class __$$ErrorExtensionsImplCopyWithImpl<$Res>
    extends _$ErrorExtensionsCopyWithImpl<$Res, _$ErrorExtensionsImpl>
    implements _$$ErrorExtensionsImplCopyWith<$Res> {
  __$$ErrorExtensionsImplCopyWithImpl(
      _$ErrorExtensionsImpl _value, $Res Function(_$ErrorExtensionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorExtensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? kind = null,
    Object? name = null,
    Object? retryAfter = null,
    Object? source = null,
    Object? tracing = null,
  }) {
    return _then(_$ErrorExtensionsImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ErrorExtensionsImpl implements _ErrorExtensions {
  const _$ErrorExtensionsImpl(
      {required this.code,
      required this.kind,
      required this.name,
      @JsonKey(name: 'retry_after') required this.retryAfter,
      required this.source,
      required this.tracing});

  factory _$ErrorExtensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorExtensionsImplFromJson(json);

  @override
  final int code;
  @override
  final String kind;
  @override
  final String name;
  @override
  @JsonKey(name: 'retry_after')
  final int retryAfter;
  @override
  final String source;
  @override
  final Tracing tracing;

  @override
  String toString() {
    return 'ErrorExtensions(code: $code, kind: $kind, name: $name, retryAfter: $retryAfter, source: $source, tracing: $tracing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorExtensionsImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.retryAfter, retryAfter) ||
                other.retryAfter == retryAfter) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.tracing, tracing) || other.tracing == tracing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, kind, name, retryAfter, source, tracing);

  /// Create a copy of ErrorExtensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorExtensionsImplCopyWith<_$ErrorExtensionsImpl> get copyWith =>
      __$$ErrorExtensionsImplCopyWithImpl<_$ErrorExtensionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorExtensionsImplToJson(
      this,
    );
  }
}

abstract class _ErrorExtensions implements ErrorExtensions {
  const factory _ErrorExtensions(
      {required final int code,
      required final String kind,
      required final String name,
      @JsonKey(name: 'retry_after') required final int retryAfter,
      required final String source,
      required final Tracing tracing}) = _$ErrorExtensionsImpl;

  factory _ErrorExtensions.fromJson(Map<String, dynamic> json) =
      _$ErrorExtensionsImpl.fromJson;

  @override
  int get code;
  @override
  String get kind;
  @override
  String get name;
  @override
  @JsonKey(name: 'retry_after')
  int get retryAfter;
  @override
  String get source;
  @override
  Tracing get tracing;

  /// Create a copy of ErrorExtensions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorExtensionsImplCopyWith<_$ErrorExtensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
