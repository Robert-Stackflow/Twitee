// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_add_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineAddEntry _$TimelineAddEntryFromJson(Map<String, dynamic> json) {
  return _TimelineAddEntry.fromJson(json);
}

/// @nodoc
mixin _$TimelineAddEntry {
  ContentUnion get content => throw _privateConstructorUsedError;
  String get entryId => throw _privateConstructorUsedError;
  String get sortIndex => throw _privateConstructorUsedError;

  /// Serializes this TimelineAddEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineAddEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineAddEntryCopyWith<TimelineAddEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineAddEntryCopyWith<$Res> {
  factory $TimelineAddEntryCopyWith(
          TimelineAddEntry value, $Res Function(TimelineAddEntry) then) =
      _$TimelineAddEntryCopyWithImpl<$Res, TimelineAddEntry>;
  @useResult
  $Res call({ContentUnion content, String entryId, String sortIndex});

  $ContentUnionCopyWith<$Res> get content;
}

/// @nodoc
class _$TimelineAddEntryCopyWithImpl<$Res, $Val extends TimelineAddEntry>
    implements $TimelineAddEntryCopyWith<$Res> {
  _$TimelineAddEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineAddEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? entryId = null,
    Object? sortIndex = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ContentUnion,
      entryId: null == entryId
          ? _value.entryId
          : entryId // ignore: cast_nullable_to_non_nullable
              as String,
      sortIndex: null == sortIndex
          ? _value.sortIndex
          : sortIndex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TimelineAddEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentUnionCopyWith<$Res> get content {
    return $ContentUnionCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineAddEntryImplCopyWith<$Res>
    implements $TimelineAddEntryCopyWith<$Res> {
  factory _$$TimelineAddEntryImplCopyWith(_$TimelineAddEntryImpl value,
          $Res Function(_$TimelineAddEntryImpl) then) =
      __$$TimelineAddEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContentUnion content, String entryId, String sortIndex});

  @override
  $ContentUnionCopyWith<$Res> get content;
}

/// @nodoc
class __$$TimelineAddEntryImplCopyWithImpl<$Res>
    extends _$TimelineAddEntryCopyWithImpl<$Res, _$TimelineAddEntryImpl>
    implements _$$TimelineAddEntryImplCopyWith<$Res> {
  __$$TimelineAddEntryImplCopyWithImpl(_$TimelineAddEntryImpl _value,
      $Res Function(_$TimelineAddEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineAddEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? entryId = null,
    Object? sortIndex = null,
  }) {
    return _then(_$TimelineAddEntryImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ContentUnion,
      entryId: null == entryId
          ? _value.entryId
          : entryId // ignore: cast_nullable_to_non_nullable
              as String,
      sortIndex: null == sortIndex
          ? _value.sortIndex
          : sortIndex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineAddEntryImpl implements _TimelineAddEntry {
  const _$TimelineAddEntryImpl(
      {required this.content, required this.entryId, required this.sortIndex});

  factory _$TimelineAddEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineAddEntryImplFromJson(json);

  @override
  final ContentUnion content;
  @override
  final String entryId;
  @override
  final String sortIndex;

  @override
  String toString() {
    return 'TimelineAddEntry(content: $content, entryId: $entryId, sortIndex: $sortIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineAddEntryImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.sortIndex, sortIndex) ||
                other.sortIndex == sortIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, entryId, sortIndex);

  /// Create a copy of TimelineAddEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineAddEntryImplCopyWith<_$TimelineAddEntryImpl> get copyWith =>
      __$$TimelineAddEntryImplCopyWithImpl<_$TimelineAddEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineAddEntryImplToJson(
      this,
    );
  }
}

abstract class _TimelineAddEntry implements TimelineAddEntry {
  const factory _TimelineAddEntry(
      {required final ContentUnion content,
      required final String entryId,
      required final String sortIndex}) = _$TimelineAddEntryImpl;

  factory _TimelineAddEntry.fromJson(Map<String, dynamic> json) =
      _$TimelineAddEntryImpl.fromJson;

  @override
  ContentUnion get content;
  @override
  String get entryId;
  @override
  String get sortIndex;

  /// Create a copy of TimelineAddEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineAddEntryImplCopyWith<_$TimelineAddEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
