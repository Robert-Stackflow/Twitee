// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birdwatch_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdwatchEntity _$BirdwatchEntityFromJson(Map<String, dynamic> json) {
  return _BirdwatchEntity.fromJson(json);
}

/// @nodoc
mixin _$BirdwatchEntity {
  int get fromIndex => throw _privateConstructorUsedError;
  BirdwatchEntityRef get ref => throw _privateConstructorUsedError;
  int get toIndex => throw _privateConstructorUsedError;

  /// Serializes this BirdwatchEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BirdwatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirdwatchEntityCopyWith<BirdwatchEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdwatchEntityCopyWith<$Res> {
  factory $BirdwatchEntityCopyWith(
          BirdwatchEntity value, $Res Function(BirdwatchEntity) then) =
      _$BirdwatchEntityCopyWithImpl<$Res, BirdwatchEntity>;
  @useResult
  $Res call({int fromIndex, BirdwatchEntityRef ref, int toIndex});

  $BirdwatchEntityRefCopyWith<$Res> get ref;
}

/// @nodoc
class _$BirdwatchEntityCopyWithImpl<$Res, $Val extends BirdwatchEntity>
    implements $BirdwatchEntityCopyWith<$Res> {
  _$BirdwatchEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirdwatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromIndex = null,
    Object? ref = null,
    Object? toIndex = null,
  }) {
    return _then(_value.copyWith(
      fromIndex: null == fromIndex
          ? _value.fromIndex
          : fromIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as BirdwatchEntityRef,
      toIndex: null == toIndex
          ? _value.toIndex
          : toIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of BirdwatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdwatchEntityRefCopyWith<$Res> get ref {
    return $BirdwatchEntityRefCopyWith<$Res>(_value.ref, (value) {
      return _then(_value.copyWith(ref: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BirdwatchEntityImplCopyWith<$Res>
    implements $BirdwatchEntityCopyWith<$Res> {
  factory _$$BirdwatchEntityImplCopyWith(_$BirdwatchEntityImpl value,
          $Res Function(_$BirdwatchEntityImpl) then) =
      __$$BirdwatchEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fromIndex, BirdwatchEntityRef ref, int toIndex});

  @override
  $BirdwatchEntityRefCopyWith<$Res> get ref;
}

/// @nodoc
class __$$BirdwatchEntityImplCopyWithImpl<$Res>
    extends _$BirdwatchEntityCopyWithImpl<$Res, _$BirdwatchEntityImpl>
    implements _$$BirdwatchEntityImplCopyWith<$Res> {
  __$$BirdwatchEntityImplCopyWithImpl(
      _$BirdwatchEntityImpl _value, $Res Function(_$BirdwatchEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdwatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromIndex = null,
    Object? ref = null,
    Object? toIndex = null,
  }) {
    return _then(_$BirdwatchEntityImpl(
      fromIndex: null == fromIndex
          ? _value.fromIndex
          : fromIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as BirdwatchEntityRef,
      toIndex: null == toIndex
          ? _value.toIndex
          : toIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirdwatchEntityImpl implements _BirdwatchEntity {
  const _$BirdwatchEntityImpl(
      {required this.fromIndex, required this.ref, required this.toIndex});

  factory _$BirdwatchEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdwatchEntityImplFromJson(json);

  @override
  final int fromIndex;
  @override
  final BirdwatchEntityRef ref;
  @override
  final int toIndex;

  @override
  String toString() {
    return 'BirdwatchEntity(fromIndex: $fromIndex, ref: $ref, toIndex: $toIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdwatchEntityImpl &&
            (identical(other.fromIndex, fromIndex) ||
                other.fromIndex == fromIndex) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.toIndex, toIndex) || other.toIndex == toIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fromIndex, ref, toIndex);

  /// Create a copy of BirdwatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdwatchEntityImplCopyWith<_$BirdwatchEntityImpl> get copyWith =>
      __$$BirdwatchEntityImplCopyWithImpl<_$BirdwatchEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdwatchEntityImplToJson(
      this,
    );
  }
}

abstract class _BirdwatchEntity implements BirdwatchEntity {
  const factory _BirdwatchEntity(
      {required final int fromIndex,
      required final BirdwatchEntityRef ref,
      required final int toIndex}) = _$BirdwatchEntityImpl;

  factory _BirdwatchEntity.fromJson(Map<String, dynamic> json) =
      _$BirdwatchEntityImpl.fromJson;

  @override
  int get fromIndex;
  @override
  BirdwatchEntityRef get ref;
  @override
  int get toIndex;

  /// Create a copy of BirdwatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdwatchEntityImplCopyWith<_$BirdwatchEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
