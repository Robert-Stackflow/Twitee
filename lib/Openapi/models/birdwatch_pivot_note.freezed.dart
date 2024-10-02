// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birdwatch_pivot_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdwatchPivotNote _$BirdwatchPivotNoteFromJson(Map<String, dynamic> json) {
  return _BirdwatchPivotNote.fromJson(json);
}

/// @nodoc
mixin _$BirdwatchPivotNote {
  @JsonKey(name: 'rest_id')
  String get restId => throw _privateConstructorUsedError;

  /// Serializes this BirdwatchPivotNote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BirdwatchPivotNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirdwatchPivotNoteCopyWith<BirdwatchPivotNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdwatchPivotNoteCopyWith<$Res> {
  factory $BirdwatchPivotNoteCopyWith(
          BirdwatchPivotNote value, $Res Function(BirdwatchPivotNote) then) =
      _$BirdwatchPivotNoteCopyWithImpl<$Res, BirdwatchPivotNote>;
  @useResult
  $Res call({@JsonKey(name: 'rest_id') String restId});
}

/// @nodoc
class _$BirdwatchPivotNoteCopyWithImpl<$Res, $Val extends BirdwatchPivotNote>
    implements $BirdwatchPivotNoteCopyWith<$Res> {
  _$BirdwatchPivotNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirdwatchPivotNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restId = null,
  }) {
    return _then(_value.copyWith(
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirdwatchPivotNoteImplCopyWith<$Res>
    implements $BirdwatchPivotNoteCopyWith<$Res> {
  factory _$$BirdwatchPivotNoteImplCopyWith(_$BirdwatchPivotNoteImpl value,
          $Res Function(_$BirdwatchPivotNoteImpl) then) =
      __$$BirdwatchPivotNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'rest_id') String restId});
}

/// @nodoc
class __$$BirdwatchPivotNoteImplCopyWithImpl<$Res>
    extends _$BirdwatchPivotNoteCopyWithImpl<$Res, _$BirdwatchPivotNoteImpl>
    implements _$$BirdwatchPivotNoteImplCopyWith<$Res> {
  __$$BirdwatchPivotNoteImplCopyWithImpl(_$BirdwatchPivotNoteImpl _value,
      $Res Function(_$BirdwatchPivotNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdwatchPivotNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restId = null,
  }) {
    return _then(_$BirdwatchPivotNoteImpl(
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirdwatchPivotNoteImpl implements _BirdwatchPivotNote {
  const _$BirdwatchPivotNoteImpl(
      {@JsonKey(name: 'rest_id') required this.restId});

  factory _$BirdwatchPivotNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdwatchPivotNoteImplFromJson(json);

  @override
  @JsonKey(name: 'rest_id')
  final String restId;

  @override
  String toString() {
    return 'BirdwatchPivotNote(restId: $restId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdwatchPivotNoteImpl &&
            (identical(other.restId, restId) || other.restId == restId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, restId);

  /// Create a copy of BirdwatchPivotNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdwatchPivotNoteImplCopyWith<_$BirdwatchPivotNoteImpl> get copyWith =>
      __$$BirdwatchPivotNoteImplCopyWithImpl<_$BirdwatchPivotNoteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdwatchPivotNoteImplToJson(
      this,
    );
  }
}

abstract class _BirdwatchPivotNote implements BirdwatchPivotNote {
  const factory _BirdwatchPivotNote(
          {@JsonKey(name: 'rest_id') required final String restId}) =
      _$BirdwatchPivotNoteImpl;

  factory _BirdwatchPivotNote.fromJson(Map<String, dynamic> json) =
      _$BirdwatchPivotNoteImpl.fromJson;

  @override
  @JsonKey(name: 'rest_id')
  String get restId;

  /// Create a copy of BirdwatchPivotNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdwatchPivotNoteImplCopyWith<_$BirdwatchPivotNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
