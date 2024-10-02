// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_timeline_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineTimelineItem _$TimelineTimelineItemFromJson(Map<String, dynamic> json) {
  return _TimelineTimelineItem.fromJson(json);
}

/// @nodoc
mixin _$TimelineTimelineItem {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  ClientEventInfo get clientEventInfo => throw _privateConstructorUsedError;
  ContentEntryType get entryType => throw _privateConstructorUsedError;
  dynamic get feedbackInfo => throw _privateConstructorUsedError;
  ItemContentUnion get itemContent => throw _privateConstructorUsedError;

  /// Serializes this TimelineTimelineItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineTimelineItemCopyWith<TimelineTimelineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineTimelineItemCopyWith<$Res> {
  factory $TimelineTimelineItemCopyWith(TimelineTimelineItem value,
          $Res Function(TimelineTimelineItem) then) =
      _$TimelineTimelineItemCopyWithImpl<$Res, TimelineTimelineItem>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      ClientEventInfo clientEventInfo,
      ContentEntryType entryType,
      dynamic feedbackInfo,
      ItemContentUnion itemContent});

  $ClientEventInfoCopyWith<$Res> get clientEventInfo;
  $ItemContentUnionCopyWith<$Res> get itemContent;
}

/// @nodoc
class _$TimelineTimelineItemCopyWithImpl<$Res,
        $Val extends TimelineTimelineItem>
    implements $TimelineTimelineItemCopyWith<$Res> {
  _$TimelineTimelineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? clientEventInfo = null,
    Object? entryType = null,
    Object? feedbackInfo = freezed,
    Object? itemContent = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      clientEventInfo: null == clientEventInfo
          ? _value.clientEventInfo
          : clientEventInfo // ignore: cast_nullable_to_non_nullable
              as ClientEventInfo,
      entryType: null == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as ContentEntryType,
      feedbackInfo: freezed == feedbackInfo
          ? _value.feedbackInfo
          : feedbackInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      itemContent: null == itemContent
          ? _value.itemContent
          : itemContent // ignore: cast_nullable_to_non_nullable
              as ItemContentUnion,
    ) as $Val);
  }

  /// Create a copy of TimelineTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientEventInfoCopyWith<$Res> get clientEventInfo {
    return $ClientEventInfoCopyWith<$Res>(_value.clientEventInfo, (value) {
      return _then(_value.copyWith(clientEventInfo: value) as $Val);
    });
  }

  /// Create a copy of TimelineTimelineItem
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
abstract class _$$TimelineTimelineItemImplCopyWith<$Res>
    implements $TimelineTimelineItemCopyWith<$Res> {
  factory _$$TimelineTimelineItemImplCopyWith(_$TimelineTimelineItemImpl value,
          $Res Function(_$TimelineTimelineItemImpl) then) =
      __$$TimelineTimelineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      ClientEventInfo clientEventInfo,
      ContentEntryType entryType,
      dynamic feedbackInfo,
      ItemContentUnion itemContent});

  @override
  $ClientEventInfoCopyWith<$Res> get clientEventInfo;
  @override
  $ItemContentUnionCopyWith<$Res> get itemContent;
}

/// @nodoc
class __$$TimelineTimelineItemImplCopyWithImpl<$Res>
    extends _$TimelineTimelineItemCopyWithImpl<$Res, _$TimelineTimelineItemImpl>
    implements _$$TimelineTimelineItemImplCopyWith<$Res> {
  __$$TimelineTimelineItemImplCopyWithImpl(_$TimelineTimelineItemImpl _value,
      $Res Function(_$TimelineTimelineItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? clientEventInfo = null,
    Object? entryType = null,
    Object? feedbackInfo = freezed,
    Object? itemContent = null,
  }) {
    return _then(_$TimelineTimelineItemImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      clientEventInfo: null == clientEventInfo
          ? _value.clientEventInfo
          : clientEventInfo // ignore: cast_nullable_to_non_nullable
              as ClientEventInfo,
      entryType: null == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as ContentEntryType,
      feedbackInfo: freezed == feedbackInfo
          ? _value.feedbackInfo
          : feedbackInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      itemContent: null == itemContent
          ? _value.itemContent
          : itemContent // ignore: cast_nullable_to_non_nullable
              as ItemContentUnion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineTimelineItemImpl implements _TimelineTimelineItem {
  const _$TimelineTimelineItemImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.clientEventInfo,
      required this.entryType,
      required this.feedbackInfo,
      required this.itemContent});

  factory _$TimelineTimelineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineTimelineItemImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final ClientEventInfo clientEventInfo;
  @override
  final ContentEntryType entryType;
  @override
  final dynamic feedbackInfo;
  @override
  final ItemContentUnion itemContent;

  @override
  String toString() {
    return 'TimelineTimelineItem(privateTypename: $privateTypename, clientEventInfo: $clientEventInfo, entryType: $entryType, feedbackInfo: $feedbackInfo, itemContent: $itemContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineTimelineItemImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.clientEventInfo, clientEventInfo) ||
                other.clientEventInfo == clientEventInfo) &&
            (identical(other.entryType, entryType) ||
                other.entryType == entryType) &&
            const DeepCollectionEquality()
                .equals(other.feedbackInfo, feedbackInfo) &&
            (identical(other.itemContent, itemContent) ||
                other.itemContent == itemContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      privateTypename,
      clientEventInfo,
      entryType,
      const DeepCollectionEquality().hash(feedbackInfo),
      itemContent);

  /// Create a copy of TimelineTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineTimelineItemImplCopyWith<_$TimelineTimelineItemImpl>
      get copyWith =>
          __$$TimelineTimelineItemImplCopyWithImpl<_$TimelineTimelineItemImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineTimelineItemImplToJson(
      this,
    );
  }
}

abstract class _TimelineTimelineItem implements TimelineTimelineItem {
  const factory _TimelineTimelineItem(
          {@JsonKey(name: '__typename') required final TypeName privateTypename,
          required final ClientEventInfo clientEventInfo,
          required final ContentEntryType entryType,
          required final dynamic feedbackInfo,
          required final ItemContentUnion itemContent}) =
      _$TimelineTimelineItemImpl;

  factory _TimelineTimelineItem.fromJson(Map<String, dynamic> json) =
      _$TimelineTimelineItemImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  ClientEventInfo get clientEventInfo;
  @override
  ContentEntryType get entryType;
  @override
  dynamic get feedbackInfo;
  @override
  ItemContentUnion get itemContent;

  /// Create a copy of TimelineTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineTimelineItemImplCopyWith<_$TimelineTimelineItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
