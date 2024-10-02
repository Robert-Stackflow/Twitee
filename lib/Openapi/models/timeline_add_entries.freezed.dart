// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_add_entries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineAddEntries _$TimelineAddEntriesFromJson(Map<String, dynamic> json) {
  return _TimelineAddEntries.fromJson(json);
}

/// @nodoc
mixin _$TimelineAddEntries {
  List<TimelineAddEntry> get entries => throw _privateConstructorUsedError;
  InstructionType get type => throw _privateConstructorUsedError;

  /// Serializes this TimelineAddEntries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineAddEntries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineAddEntriesCopyWith<TimelineAddEntries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineAddEntriesCopyWith<$Res> {
  factory $TimelineAddEntriesCopyWith(
          TimelineAddEntries value, $Res Function(TimelineAddEntries) then) =
      _$TimelineAddEntriesCopyWithImpl<$Res, TimelineAddEntries>;
  @useResult
  $Res call({List<TimelineAddEntry> entries, InstructionType type});
}

/// @nodoc
class _$TimelineAddEntriesCopyWithImpl<$Res, $Val extends TimelineAddEntries>
    implements $TimelineAddEntriesCopyWith<$Res> {
  _$TimelineAddEntriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineAddEntries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<TimelineAddEntry>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineAddEntriesImplCopyWith<$Res>
    implements $TimelineAddEntriesCopyWith<$Res> {
  factory _$$TimelineAddEntriesImplCopyWith(_$TimelineAddEntriesImpl value,
          $Res Function(_$TimelineAddEntriesImpl) then) =
      __$$TimelineAddEntriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TimelineAddEntry> entries, InstructionType type});
}

/// @nodoc
class __$$TimelineAddEntriesImplCopyWithImpl<$Res>
    extends _$TimelineAddEntriesCopyWithImpl<$Res, _$TimelineAddEntriesImpl>
    implements _$$TimelineAddEntriesImplCopyWith<$Res> {
  __$$TimelineAddEntriesImplCopyWithImpl(_$TimelineAddEntriesImpl _value,
      $Res Function(_$TimelineAddEntriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineAddEntries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? type = null,
  }) {
    return _then(_$TimelineAddEntriesImpl(
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<TimelineAddEntry>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineAddEntriesImpl implements _TimelineAddEntries {
  const _$TimelineAddEntriesImpl(
      {required final List<TimelineAddEntry> entries, required this.type})
      : _entries = entries;

  factory _$TimelineAddEntriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineAddEntriesImplFromJson(json);

  final List<TimelineAddEntry> _entries;
  @override
  List<TimelineAddEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  final InstructionType type;

  @override
  String toString() {
    return 'TimelineAddEntries(entries: $entries, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineAddEntriesImpl &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entries), type);

  /// Create a copy of TimelineAddEntries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineAddEntriesImplCopyWith<_$TimelineAddEntriesImpl> get copyWith =>
      __$$TimelineAddEntriesImplCopyWithImpl<_$TimelineAddEntriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineAddEntriesImplToJson(
      this,
    );
  }
}

abstract class _TimelineAddEntries implements TimelineAddEntries {
  const factory _TimelineAddEntries(
      {required final List<TimelineAddEntry> entries,
      required final InstructionType type}) = _$TimelineAddEntriesImpl;

  factory _TimelineAddEntries.fromJson(Map<String, dynamic> json) =
      _$TimelineAddEntriesImpl.fromJson;

  @override
  List<TimelineAddEntry> get entries;
  @override
  InstructionType get type;

  /// Create a copy of TimelineAddEntries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineAddEntriesImplCopyWith<_$TimelineAddEntriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
