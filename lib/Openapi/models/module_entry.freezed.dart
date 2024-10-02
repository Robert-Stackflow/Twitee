// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModuleEntry _$ModuleEntryFromJson(Map<String, dynamic> json) {
  return _ModuleEntry.fromJson(json);
}

/// @nodoc
mixin _$ModuleEntry {
  ClientEventInfo get clientEventInfo => throw _privateConstructorUsedError;
  FeedbackInfo get feedbackInfo => throw _privateConstructorUsedError;
  ItemContentUnion get itemContent => throw _privateConstructorUsedError;

  /// Serializes this ModuleEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModuleEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleEntryCopyWith<ModuleEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleEntryCopyWith<$Res> {
  factory $ModuleEntryCopyWith(
          ModuleEntry value, $Res Function(ModuleEntry) then) =
      _$ModuleEntryCopyWithImpl<$Res, ModuleEntry>;
  @useResult
  $Res call(
      {ClientEventInfo clientEventInfo,
      FeedbackInfo feedbackInfo,
      ItemContentUnion itemContent});

  $ClientEventInfoCopyWith<$Res> get clientEventInfo;
  $FeedbackInfoCopyWith<$Res> get feedbackInfo;
  $ItemContentUnionCopyWith<$Res> get itemContent;
}

/// @nodoc
class _$ModuleEntryCopyWithImpl<$Res, $Val extends ModuleEntry>
    implements $ModuleEntryCopyWith<$Res> {
  _$ModuleEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientEventInfo = null,
    Object? feedbackInfo = null,
    Object? itemContent = null,
  }) {
    return _then(_value.copyWith(
      clientEventInfo: null == clientEventInfo
          ? _value.clientEventInfo
          : clientEventInfo // ignore: cast_nullable_to_non_nullable
              as ClientEventInfo,
      feedbackInfo: null == feedbackInfo
          ? _value.feedbackInfo
          : feedbackInfo // ignore: cast_nullable_to_non_nullable
              as FeedbackInfo,
      itemContent: null == itemContent
          ? _value.itemContent
          : itemContent // ignore: cast_nullable_to_non_nullable
              as ItemContentUnion,
    ) as $Val);
  }

  /// Create a copy of ModuleEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientEventInfoCopyWith<$Res> get clientEventInfo {
    return $ClientEventInfoCopyWith<$Res>(_value.clientEventInfo, (value) {
      return _then(_value.copyWith(clientEventInfo: value) as $Val);
    });
  }

  /// Create a copy of ModuleEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackInfoCopyWith<$Res> get feedbackInfo {
    return $FeedbackInfoCopyWith<$Res>(_value.feedbackInfo, (value) {
      return _then(_value.copyWith(feedbackInfo: value) as $Val);
    });
  }

  /// Create a copy of ModuleEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemContentUnionCopyWith<$Res> get itemContent {
    return $ItemContentUnionCopyWith<$Res>(_value.itemContent, (value) {
      return _then(_value.copyWith(itemContent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModuleEntryImplCopyWith<$Res>
    implements $ModuleEntryCopyWith<$Res> {
  factory _$$ModuleEntryImplCopyWith(
          _$ModuleEntryImpl value, $Res Function(_$ModuleEntryImpl) then) =
      __$$ModuleEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClientEventInfo clientEventInfo,
      FeedbackInfo feedbackInfo,
      ItemContentUnion itemContent});

  @override
  $ClientEventInfoCopyWith<$Res> get clientEventInfo;
  @override
  $FeedbackInfoCopyWith<$Res> get feedbackInfo;
  @override
  $ItemContentUnionCopyWith<$Res> get itemContent;
}

/// @nodoc
class __$$ModuleEntryImplCopyWithImpl<$Res>
    extends _$ModuleEntryCopyWithImpl<$Res, _$ModuleEntryImpl>
    implements _$$ModuleEntryImplCopyWith<$Res> {
  __$$ModuleEntryImplCopyWithImpl(
      _$ModuleEntryImpl _value, $Res Function(_$ModuleEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientEventInfo = null,
    Object? feedbackInfo = null,
    Object? itemContent = null,
  }) {
    return _then(_$ModuleEntryImpl(
      clientEventInfo: null == clientEventInfo
          ? _value.clientEventInfo
          : clientEventInfo // ignore: cast_nullable_to_non_nullable
              as ClientEventInfo,
      feedbackInfo: null == feedbackInfo
          ? _value.feedbackInfo
          : feedbackInfo // ignore: cast_nullable_to_non_nullable
              as FeedbackInfo,
      itemContent: null == itemContent
          ? _value.itemContent
          : itemContent // ignore: cast_nullable_to_non_nullable
              as ItemContentUnion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleEntryImpl implements _ModuleEntry {
  const _$ModuleEntryImpl(
      {required this.clientEventInfo,
      required this.feedbackInfo,
      required this.itemContent});

  factory _$ModuleEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModuleEntryImplFromJson(json);

  @override
  final ClientEventInfo clientEventInfo;
  @override
  final FeedbackInfo feedbackInfo;
  @override
  final ItemContentUnion itemContent;

  @override
  String toString() {
    return 'ModuleEntry(clientEventInfo: $clientEventInfo, feedbackInfo: $feedbackInfo, itemContent: $itemContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleEntryImpl &&
            (identical(other.clientEventInfo, clientEventInfo) ||
                other.clientEventInfo == clientEventInfo) &&
            (identical(other.feedbackInfo, feedbackInfo) ||
                other.feedbackInfo == feedbackInfo) &&
            (identical(other.itemContent, itemContent) ||
                other.itemContent == itemContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clientEventInfo, feedbackInfo, itemContent);

  /// Create a copy of ModuleEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleEntryImplCopyWith<_$ModuleEntryImpl> get copyWith =>
      __$$ModuleEntryImplCopyWithImpl<_$ModuleEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleEntryImplToJson(
      this,
    );
  }
}

abstract class _ModuleEntry implements ModuleEntry {
  const factory _ModuleEntry(
      {required final ClientEventInfo clientEventInfo,
      required final FeedbackInfo feedbackInfo,
      required final ItemContentUnion itemContent}) = _$ModuleEntryImpl;

  factory _ModuleEntry.fromJson(Map<String, dynamic> json) =
      _$ModuleEntryImpl.fromJson;

  @override
  ClientEventInfo get clientEventInfo;
  @override
  FeedbackInfo get feedbackInfo;
  @override
  ItemContentUnion get itemContent;

  /// Create a copy of ModuleEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleEntryImplCopyWith<_$ModuleEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
