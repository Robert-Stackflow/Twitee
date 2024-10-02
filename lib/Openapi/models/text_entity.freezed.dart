// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextEntity _$TextEntityFromJson(Map<String, dynamic> json) {
  return _TextEntity.fromJson(json);
}

/// @nodoc
mixin _$TextEntity {
  int get fromIndex => throw _privateConstructorUsedError;
  TextEntityRef get ref => throw _privateConstructorUsedError;
  int get toIndex => throw _privateConstructorUsedError;

  /// Serializes this TextEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextEntityCopyWith<TextEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextEntityCopyWith<$Res> {
  factory $TextEntityCopyWith(
          TextEntity value, $Res Function(TextEntity) then) =
      _$TextEntityCopyWithImpl<$Res, TextEntity>;
  @useResult
  $Res call({int fromIndex, TextEntityRef ref, int toIndex});

  $TextEntityRefCopyWith<$Res> get ref;
}

/// @nodoc
class _$TextEntityCopyWithImpl<$Res, $Val extends TextEntity>
    implements $TextEntityCopyWith<$Res> {
  _$TextEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextEntity
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
              as TextEntityRef,
      toIndex: null == toIndex
          ? _value.toIndex
          : toIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TextEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextEntityRefCopyWith<$Res> get ref {
    return $TextEntityRefCopyWith<$Res>(_value.ref, (value) {
      return _then(_value.copyWith(ref: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextEntityImplCopyWith<$Res>
    implements $TextEntityCopyWith<$Res> {
  factory _$$TextEntityImplCopyWith(
          _$TextEntityImpl value, $Res Function(_$TextEntityImpl) then) =
      __$$TextEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fromIndex, TextEntityRef ref, int toIndex});

  @override
  $TextEntityRefCopyWith<$Res> get ref;
}

/// @nodoc
class __$$TextEntityImplCopyWithImpl<$Res>
    extends _$TextEntityCopyWithImpl<$Res, _$TextEntityImpl>
    implements _$$TextEntityImplCopyWith<$Res> {
  __$$TextEntityImplCopyWithImpl(
      _$TextEntityImpl _value, $Res Function(_$TextEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromIndex = null,
    Object? ref = null,
    Object? toIndex = null,
  }) {
    return _then(_$TextEntityImpl(
      fromIndex: null == fromIndex
          ? _value.fromIndex
          : fromIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as TextEntityRef,
      toIndex: null == toIndex
          ? _value.toIndex
          : toIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextEntityImpl implements _TextEntity {
  const _$TextEntityImpl(
      {required this.fromIndex, required this.ref, required this.toIndex});

  factory _$TextEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextEntityImplFromJson(json);

  @override
  final int fromIndex;
  @override
  final TextEntityRef ref;
  @override
  final int toIndex;

  @override
  String toString() {
    return 'TextEntity(fromIndex: $fromIndex, ref: $ref, toIndex: $toIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextEntityImpl &&
            (identical(other.fromIndex, fromIndex) ||
                other.fromIndex == fromIndex) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.toIndex, toIndex) || other.toIndex == toIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fromIndex, ref, toIndex);

  /// Create a copy of TextEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextEntityImplCopyWith<_$TextEntityImpl> get copyWith =>
      __$$TextEntityImplCopyWithImpl<_$TextEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextEntityImplToJson(
      this,
    );
  }
}

abstract class _TextEntity implements TextEntity {
  const factory _TextEntity(
      {required final int fromIndex,
      required final TextEntityRef ref,
      required final int toIndex}) = _$TextEntityImpl;

  factory _TextEntity.fromJson(Map<String, dynamic> json) =
      _$TextEntityImpl.fromJson;

  @override
  int get fromIndex;
  @override
  TextEntityRef get ref;
  @override
  int get toIndex;

  /// Create a copy of TextEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextEntityImplCopyWith<_$TextEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
