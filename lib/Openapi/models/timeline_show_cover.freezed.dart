// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_show_cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineShowCover _$TimelineShowCoverFromJson(Map<String, dynamic> json) {
  return _TimelineShowCover.fromJson(json);
}

/// @nodoc
mixin _$TimelineShowCover {
  ClientEventInfo get clientEventInfo => throw _privateConstructorUsedError;
  TimelineHalfCover get cover => throw _privateConstructorUsedError;
  InstructionType get type => throw _privateConstructorUsedError;

  /// Serializes this TimelineShowCover to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineShowCover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineShowCoverCopyWith<TimelineShowCover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineShowCoverCopyWith<$Res> {
  factory $TimelineShowCoverCopyWith(
          TimelineShowCover value, $Res Function(TimelineShowCover) then) =
      _$TimelineShowCoverCopyWithImpl<$Res, TimelineShowCover>;
  @useResult
  $Res call(
      {ClientEventInfo clientEventInfo,
      TimelineHalfCover cover,
      InstructionType type});

  $ClientEventInfoCopyWith<$Res> get clientEventInfo;
  $TimelineHalfCoverCopyWith<$Res> get cover;
}

/// @nodoc
class _$TimelineShowCoverCopyWithImpl<$Res, $Val extends TimelineShowCover>
    implements $TimelineShowCoverCopyWith<$Res> {
  _$TimelineShowCoverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineShowCover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientEventInfo = null,
    Object? cover = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      clientEventInfo: null == clientEventInfo
          ? _value.clientEventInfo
          : clientEventInfo // ignore: cast_nullable_to_non_nullable
              as ClientEventInfo,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as TimelineHalfCover,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ) as $Val);
  }

  /// Create a copy of TimelineShowCover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientEventInfoCopyWith<$Res> get clientEventInfo {
    return $ClientEventInfoCopyWith<$Res>(_value.clientEventInfo, (value) {
      return _then(_value.copyWith(clientEventInfo: value) as $Val);
    });
  }

  /// Create a copy of TimelineShowCover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineHalfCoverCopyWith<$Res> get cover {
    return $TimelineHalfCoverCopyWith<$Res>(_value.cover, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineShowCoverImplCopyWith<$Res>
    implements $TimelineShowCoverCopyWith<$Res> {
  factory _$$TimelineShowCoverImplCopyWith(_$TimelineShowCoverImpl value,
          $Res Function(_$TimelineShowCoverImpl) then) =
      __$$TimelineShowCoverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClientEventInfo clientEventInfo,
      TimelineHalfCover cover,
      InstructionType type});

  @override
  $ClientEventInfoCopyWith<$Res> get clientEventInfo;
  @override
  $TimelineHalfCoverCopyWith<$Res> get cover;
}

/// @nodoc
class __$$TimelineShowCoverImplCopyWithImpl<$Res>
    extends _$TimelineShowCoverCopyWithImpl<$Res, _$TimelineShowCoverImpl>
    implements _$$TimelineShowCoverImplCopyWith<$Res> {
  __$$TimelineShowCoverImplCopyWithImpl(_$TimelineShowCoverImpl _value,
      $Res Function(_$TimelineShowCoverImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineShowCover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientEventInfo = null,
    Object? cover = null,
    Object? type = null,
  }) {
    return _then(_$TimelineShowCoverImpl(
      clientEventInfo: null == clientEventInfo
          ? _value.clientEventInfo
          : clientEventInfo // ignore: cast_nullable_to_non_nullable
              as ClientEventInfo,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as TimelineHalfCover,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineShowCoverImpl implements _TimelineShowCover {
  const _$TimelineShowCoverImpl(
      {required this.clientEventInfo, required this.cover, required this.type});

  factory _$TimelineShowCoverImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineShowCoverImplFromJson(json);

  @override
  final ClientEventInfo clientEventInfo;
  @override
  final TimelineHalfCover cover;
  @override
  final InstructionType type;

  @override
  String toString() {
    return 'TimelineShowCover(clientEventInfo: $clientEventInfo, cover: $cover, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineShowCoverImpl &&
            (identical(other.clientEventInfo, clientEventInfo) ||
                other.clientEventInfo == clientEventInfo) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clientEventInfo, cover, type);

  /// Create a copy of TimelineShowCover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineShowCoverImplCopyWith<_$TimelineShowCoverImpl> get copyWith =>
      __$$TimelineShowCoverImplCopyWithImpl<_$TimelineShowCoverImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineShowCoverImplToJson(
      this,
    );
  }
}

abstract class _TimelineShowCover implements TimelineShowCover {
  const factory _TimelineShowCover(
      {required final ClientEventInfo clientEventInfo,
      required final TimelineHalfCover cover,
      required final InstructionType type}) = _$TimelineShowCoverImpl;

  factory _TimelineShowCover.fromJson(Map<String, dynamic> json) =
      _$TimelineShowCoverImpl.fromJson;

  @override
  ClientEventInfo get clientEventInfo;
  @override
  TimelineHalfCover get cover;
  @override
  InstructionType get type;

  /// Create a copy of TimelineShowCover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineShowCoverImplCopyWith<_$TimelineShowCoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
