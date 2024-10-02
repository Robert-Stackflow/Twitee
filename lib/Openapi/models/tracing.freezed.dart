// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tracing _$TracingFromJson(Map<String, dynamic> json) {
  return _Tracing.fromJson(json);
}

/// @nodoc
mixin _$Tracing {
  @JsonKey(name: 'trace_id')
  String get traceId => throw _privateConstructorUsedError;

  /// Serializes this Tracing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tracing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TracingCopyWith<Tracing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracingCopyWith<$Res> {
  factory $TracingCopyWith(Tracing value, $Res Function(Tracing) then) =
      _$TracingCopyWithImpl<$Res, Tracing>;
  @useResult
  $Res call({@JsonKey(name: 'trace_id') String traceId});
}

/// @nodoc
class _$TracingCopyWithImpl<$Res, $Val extends Tracing>
    implements $TracingCopyWith<$Res> {
  _$TracingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tracing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traceId = null,
  }) {
    return _then(_value.copyWith(
      traceId: null == traceId
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TracingImplCopyWith<$Res> implements $TracingCopyWith<$Res> {
  factory _$$TracingImplCopyWith(
          _$TracingImpl value, $Res Function(_$TracingImpl) then) =
      __$$TracingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'trace_id') String traceId});
}

/// @nodoc
class __$$TracingImplCopyWithImpl<$Res>
    extends _$TracingCopyWithImpl<$Res, _$TracingImpl>
    implements _$$TracingImplCopyWith<$Res> {
  __$$TracingImplCopyWithImpl(
      _$TracingImpl _value, $Res Function(_$TracingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tracing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traceId = null,
  }) {
    return _then(_$TracingImpl(
      traceId: null == traceId
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TracingImpl implements _Tracing {
  const _$TracingImpl({@JsonKey(name: 'trace_id') required this.traceId});

  factory _$TracingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TracingImplFromJson(json);

  @override
  @JsonKey(name: 'trace_id')
  final String traceId;

  @override
  String toString() {
    return 'Tracing(traceId: $traceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TracingImpl &&
            (identical(other.traceId, traceId) || other.traceId == traceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, traceId);

  /// Create a copy of Tracing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TracingImplCopyWith<_$TracingImpl> get copyWith =>
      __$$TracingImplCopyWithImpl<_$TracingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TracingImplToJson(
      this,
    );
  }
}

abstract class _Tracing implements Tracing {
  const factory _Tracing(
          {@JsonKey(name: 'trace_id') required final String traceId}) =
      _$TracingImpl;

  factory _Tracing.fromJson(Map<String, dynamic> json) = _$TracingImpl.fromJson;

  @override
  @JsonKey(name: 'trace_id')
  String get traceId;

  /// Create a copy of Tracing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TracingImplCopyWith<_$TracingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
