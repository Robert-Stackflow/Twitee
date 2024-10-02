// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_v.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineV _$TimelineVFromJson(Map<String, dynamic> json) {
  return _TimelineV.fromJson(json);
}

/// @nodoc
mixin _$TimelineV {
  Timeline get timeline => throw _privateConstructorUsedError;

  /// Serializes this TimelineV to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineV
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineVCopyWith<TimelineV> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineVCopyWith<$Res> {
  factory $TimelineVCopyWith(TimelineV value, $Res Function(TimelineV) then) =
      _$TimelineVCopyWithImpl<$Res, TimelineV>;
  @useResult
  $Res call({Timeline timeline});

  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class _$TimelineVCopyWithImpl<$Res, $Val extends TimelineV>
    implements $TimelineVCopyWith<$Res> {
  _$TimelineVCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineV
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeline = null,
  }) {
    return _then(_value.copyWith(
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ) as $Val);
  }

  /// Create a copy of TimelineV
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineCopyWith<$Res> get timeline {
    return $TimelineCopyWith<$Res>(_value.timeline, (value) {
      return _then(_value.copyWith(timeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineVImplCopyWith<$Res>
    implements $TimelineVCopyWith<$Res> {
  factory _$$TimelineVImplCopyWith(
          _$TimelineVImpl value, $Res Function(_$TimelineVImpl) then) =
      __$$TimelineVImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timeline timeline});

  @override
  $TimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class __$$TimelineVImplCopyWithImpl<$Res>
    extends _$TimelineVCopyWithImpl<$Res, _$TimelineVImpl>
    implements _$$TimelineVImplCopyWith<$Res> {
  __$$TimelineVImplCopyWithImpl(
      _$TimelineVImpl _value, $Res Function(_$TimelineVImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineV
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeline = null,
  }) {
    return _then(_$TimelineVImpl(
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineVImpl implements _TimelineV {
  const _$TimelineVImpl({required this.timeline});

  factory _$TimelineVImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineVImplFromJson(json);

  @override
  final Timeline timeline;

  @override
  String toString() {
    return 'TimelineV(timeline: $timeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineVImpl &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timeline);

  /// Create a copy of TimelineV
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineVImplCopyWith<_$TimelineVImpl> get copyWith =>
      __$$TimelineVImplCopyWithImpl<_$TimelineVImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineVImplToJson(
      this,
    );
  }
}

abstract class _TimelineV implements TimelineV {
  const factory _TimelineV({required final Timeline timeline}) =
      _$TimelineVImpl;

  factory _TimelineV.fromJson(Map<String, dynamic> json) =
      _$TimelineVImpl.fromJson;

  @override
  Timeline get timeline;

  /// Create a copy of TimelineV
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineVImplCopyWith<_$TimelineVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
