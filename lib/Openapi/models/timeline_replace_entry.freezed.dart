// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_replace_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineReplaceEntry _$TimelineReplaceEntryFromJson(Map<String, dynamic> json) {
  return _TimelineReplaceEntry.fromJson(json);
}

/// @nodoc
mixin _$TimelineReplaceEntry {
  TimelineAddEntry get entry => throw _privateConstructorUsedError;
  @JsonKey(name: 'entry_id_to_replace')
  String get entryIdToReplace => throw _privateConstructorUsedError;
  InstructionType get type => throw _privateConstructorUsedError;

  /// Serializes this TimelineReplaceEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineReplaceEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineReplaceEntryCopyWith<TimelineReplaceEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineReplaceEntryCopyWith<$Res> {
  factory $TimelineReplaceEntryCopyWith(TimelineReplaceEntry value,
          $Res Function(TimelineReplaceEntry) then) =
      _$TimelineReplaceEntryCopyWithImpl<$Res, TimelineReplaceEntry>;
  @useResult
  $Res call(
      {TimelineAddEntry entry,
      @JsonKey(name: 'entry_id_to_replace') String entryIdToReplace,
      InstructionType type});

  $TimelineAddEntryCopyWith<$Res> get entry;
}

/// @nodoc
class _$TimelineReplaceEntryCopyWithImpl<$Res,
        $Val extends TimelineReplaceEntry>
    implements $TimelineReplaceEntryCopyWith<$Res> {
  _$TimelineReplaceEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineReplaceEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
    Object? entryIdToReplace = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as TimelineAddEntry,
      entryIdToReplace: null == entryIdToReplace
          ? _value.entryIdToReplace
          : entryIdToReplace // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ) as $Val);
  }

  /// Create a copy of TimelineReplaceEntry
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
abstract class _$$TimelineReplaceEntryImplCopyWith<$Res>
    implements $TimelineReplaceEntryCopyWith<$Res> {
  factory _$$TimelineReplaceEntryImplCopyWith(_$TimelineReplaceEntryImpl value,
          $Res Function(_$TimelineReplaceEntryImpl) then) =
      __$$TimelineReplaceEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimelineAddEntry entry,
      @JsonKey(name: 'entry_id_to_replace') String entryIdToReplace,
      InstructionType type});

  @override
  $TimelineAddEntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$TimelineReplaceEntryImplCopyWithImpl<$Res>
    extends _$TimelineReplaceEntryCopyWithImpl<$Res, _$TimelineReplaceEntryImpl>
    implements _$$TimelineReplaceEntryImplCopyWith<$Res> {
  __$$TimelineReplaceEntryImplCopyWithImpl(_$TimelineReplaceEntryImpl _value,
      $Res Function(_$TimelineReplaceEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineReplaceEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
    Object? entryIdToReplace = null,
    Object? type = null,
  }) {
    return _then(_$TimelineReplaceEntryImpl(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as TimelineAddEntry,
      entryIdToReplace: null == entryIdToReplace
          ? _value.entryIdToReplace
          : entryIdToReplace // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineReplaceEntryImpl implements _TimelineReplaceEntry {
  const _$TimelineReplaceEntryImpl(
      {required this.entry,
      @JsonKey(name: 'entry_id_to_replace') required this.entryIdToReplace,
      required this.type});

  factory _$TimelineReplaceEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineReplaceEntryImplFromJson(json);

  @override
  final TimelineAddEntry entry;
  @override
  @JsonKey(name: 'entry_id_to_replace')
  final String entryIdToReplace;
  @override
  final InstructionType type;

  @override
  String toString() {
    return 'TimelineReplaceEntry(entry: $entry, entryIdToReplace: $entryIdToReplace, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineReplaceEntryImpl &&
            (identical(other.entry, entry) || other.entry == entry) &&
            (identical(other.entryIdToReplace, entryIdToReplace) ||
                other.entryIdToReplace == entryIdToReplace) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entry, entryIdToReplace, type);

  /// Create a copy of TimelineReplaceEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineReplaceEntryImplCopyWith<_$TimelineReplaceEntryImpl>
      get copyWith =>
          __$$TimelineReplaceEntryImplCopyWithImpl<_$TimelineReplaceEntryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineReplaceEntryImplToJson(
      this,
    );
  }
}

abstract class _TimelineReplaceEntry implements TimelineReplaceEntry {
  const factory _TimelineReplaceEntry(
      {required final TimelineAddEntry entry,
      @JsonKey(name: 'entry_id_to_replace')
      required final String entryIdToReplace,
      required final InstructionType type}) = _$TimelineReplaceEntryImpl;

  factory _TimelineReplaceEntry.fromJson(Map<String, dynamic> json) =
      _$TimelineReplaceEntryImpl.fromJson;

  @override
  TimelineAddEntry get entry;
  @override
  @JsonKey(name: 'entry_id_to_replace')
  String get entryIdToReplace;
  @override
  InstructionType get type;

  /// Create a copy of TimelineReplaceEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineReplaceEntryImplCopyWith<_$TimelineReplaceEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
