// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'self_thread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelfThread _$SelfThreadFromJson(Map<String, dynamic> json) {
  return _SelfThread.fromJson(json);
}

/// @nodoc
mixin _$SelfThread {
  @JsonKey(name: 'id_str')
  String get idStr => throw _privateConstructorUsedError;

  /// Serializes this SelfThread to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelfThread
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelfThreadCopyWith<SelfThread> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfThreadCopyWith<$Res> {
  factory $SelfThreadCopyWith(
          SelfThread value, $Res Function(SelfThread) then) =
      _$SelfThreadCopyWithImpl<$Res, SelfThread>;
  @useResult
  $Res call({@JsonKey(name: 'id_str') String idStr});
}

/// @nodoc
class _$SelfThreadCopyWithImpl<$Res, $Val extends SelfThread>
    implements $SelfThreadCopyWith<$Res> {
  _$SelfThreadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelfThread
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStr = null,
  }) {
    return _then(_value.copyWith(
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelfThreadImplCopyWith<$Res>
    implements $SelfThreadCopyWith<$Res> {
  factory _$$SelfThreadImplCopyWith(
          _$SelfThreadImpl value, $Res Function(_$SelfThreadImpl) then) =
      __$$SelfThreadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id_str') String idStr});
}

/// @nodoc
class __$$SelfThreadImplCopyWithImpl<$Res>
    extends _$SelfThreadCopyWithImpl<$Res, _$SelfThreadImpl>
    implements _$$SelfThreadImplCopyWith<$Res> {
  __$$SelfThreadImplCopyWithImpl(
      _$SelfThreadImpl _value, $Res Function(_$SelfThreadImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelfThread
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStr = null,
  }) {
    return _then(_$SelfThreadImpl(
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelfThreadImpl implements _SelfThread {
  const _$SelfThreadImpl({@JsonKey(name: 'id_str') required this.idStr});

  factory _$SelfThreadImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelfThreadImplFromJson(json);

  @override
  @JsonKey(name: 'id_str')
  final String idStr;

  @override
  String toString() {
    return 'SelfThread(idStr: $idStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelfThreadImpl &&
            (identical(other.idStr, idStr) || other.idStr == idStr));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idStr);

  /// Create a copy of SelfThread
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelfThreadImplCopyWith<_$SelfThreadImpl> get copyWith =>
      __$$SelfThreadImplCopyWithImpl<_$SelfThreadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelfThreadImplToJson(
      this,
    );
  }
}

abstract class _SelfThread implements SelfThread {
  const factory _SelfThread(
          {@JsonKey(name: 'id_str') required final String idStr}) =
      _$SelfThreadImpl;

  factory _SelfThread.fromJson(Map<String, dynamic> json) =
      _$SelfThreadImpl.fromJson;

  @override
  @JsonKey(name: 'id_str')
  String get idStr;

  /// Create a copy of SelfThread
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelfThreadImplCopyWith<_$SelfThreadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
