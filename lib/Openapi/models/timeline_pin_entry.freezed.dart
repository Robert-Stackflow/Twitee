// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_pin_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelinePinEntry _$TimelinePinEntryFromJson(Map<String, dynamic> json) {
  return _TimelinePinEntry.fromJson(json);
}

/// @nodoc
mixin _$TimelinePinEntry {
  TimelineAddEntry get entry => throw _privateConstructorUsedError;
  InstructionType get type => throw _privateConstructorUsedError;

  /// Serializes this TimelinePinEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelinePinEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelinePinEntryCopyWith<TimelinePinEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelinePinEntryCopyWith<$Res> {
  factory $TimelinePinEntryCopyWith(
          TimelinePinEntry value, $Res Function(TimelinePinEntry) then) =
      _$TimelinePinEntryCopyWithImpl<$Res, TimelinePinEntry>;
  @useResult
  $Res call({TimelineAddEntry entry, InstructionType type});

  $TimelineAddEntryCopyWith<$Res> get entry;
}

/// @nodoc
class _$TimelinePinEntryCopyWithImpl<$Res, $Val extends TimelinePinEntry>
    implements $TimelinePinEntryCopyWith<$Res> {
  _$TimelinePinEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelinePinEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as TimelineAddEntry,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ) as $Val);
  }

  /// Create a copy of TimelinePinEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineAddEntryCopyWith<$Res> get entry {
    return $TimelineAddEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelinePinEntryImplCopyWith<$Res>
    implements $TimelinePinEntryCopyWith<$Res> {
  factory _$$TimelinePinEntryImplCopyWith(_$TimelinePinEntryImpl value,
          $Res Function(_$TimelinePinEntryImpl) then) =
      __$$TimelinePinEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimelineAddEntry entry, InstructionType type});

  @override
  $TimelineAddEntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$TimelinePinEntryImplCopyWithImpl<$Res>
    extends _$TimelinePinEntryCopyWithImpl<$Res, _$TimelinePinEntryImpl>
    implements _$$TimelinePinEntryImplCopyWith<$Res> {
  __$$TimelinePinEntryImplCopyWithImpl(_$TimelinePinEntryImpl _value,
      $Res Function(_$TimelinePinEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelinePinEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
    Object? type = null,
  }) {
    return _then(_$TimelinePinEntryImpl(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as TimelineAddEntry,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelinePinEntryImpl implements _TimelinePinEntry {
  const _$TimelinePinEntryImpl({required this.entry, required this.type});

  factory _$TimelinePinEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelinePinEntryImplFromJson(json);

  @override
  final TimelineAddEntry entry;
  @override
  final InstructionType type;

  @override
  String toString() {
    return 'TimelinePinEntry(entry: $entry, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelinePinEntryImpl &&
            (identical(other.entry, entry) || other.entry == entry) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entry, type);

  /// Create a copy of TimelinePinEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelinePinEntryImplCopyWith<_$TimelinePinEntryImpl> get copyWith =>
      __$$TimelinePinEntryImplCopyWithImpl<_$TimelinePinEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelinePinEntryImplToJson(
      this,
    );
  }
}

abstract class _TimelinePinEntry implements TimelinePinEntry {
  const factory _TimelinePinEntry(
      {required final TimelineAddEntry entry,
      required final InstructionType type}) = _$TimelinePinEntryImpl;

  factory _TimelinePinEntry.fromJson(Map<String, dynamic> json) =
      _$TimelinePinEntryImpl.fromJson;

  @override
  TimelineAddEntry get entry;
  @override
  InstructionType get type;

  /// Create a copy of TimelinePinEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelinePinEntryImplCopyWith<_$TimelinePinEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
