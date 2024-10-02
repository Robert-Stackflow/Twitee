// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_tweet_result_rich_text_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteTweetResultRichTextTag _$NoteTweetResultRichTextTagFromJson(
    Map<String, dynamic> json) {
  return _NoteTweetResultRichTextTag.fromJson(json);
}

/// @nodoc
mixin _$NoteTweetResultRichTextTag {
  @JsonKey(name: 'from_index')
  int get fromIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'richtext_types')
  List<RichtextTypesRichtextTypes> get richtextTypes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'to_index')
  int get toIndex => throw _privateConstructorUsedError;

  /// Serializes this NoteTweetResultRichTextTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteTweetResultRichTextTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteTweetResultRichTextTagCopyWith<NoteTweetResultRichTextTag>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteTweetResultRichTextTagCopyWith<$Res> {
  factory $NoteTweetResultRichTextTagCopyWith(NoteTweetResultRichTextTag value,
          $Res Function(NoteTweetResultRichTextTag) then) =
      _$NoteTweetResultRichTextTagCopyWithImpl<$Res,
          NoteTweetResultRichTextTag>;
  @useResult
  $Res call(
      {@JsonKey(name: 'from_index') int fromIndex,
      @JsonKey(name: 'richtext_types')
      List<RichtextTypesRichtextTypes> richtextTypes,
      @JsonKey(name: 'to_index') int toIndex});
}

/// @nodoc
class _$NoteTweetResultRichTextTagCopyWithImpl<$Res,
        $Val extends NoteTweetResultRichTextTag>
    implements $NoteTweetResultRichTextTagCopyWith<$Res> {
  _$NoteTweetResultRichTextTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteTweetResultRichTextTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromIndex = null,
    Object? richtextTypes = null,
    Object? toIndex = null,
  }) {
    return _then(_value.copyWith(
      fromIndex: null == fromIndex
          ? _value.fromIndex
          : fromIndex // ignore: cast_nullable_to_non_nullable
              as int,
      richtextTypes: null == richtextTypes
          ? _value.richtextTypes
          : richtextTypes // ignore: cast_nullable_to_non_nullable
              as List<RichtextTypesRichtextTypes>,
      toIndex: null == toIndex
          ? _value.toIndex
          : toIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteTweetResultRichTextTagImplCopyWith<$Res>
    implements $NoteTweetResultRichTextTagCopyWith<$Res> {
  factory _$$NoteTweetResultRichTextTagImplCopyWith(
          _$NoteTweetResultRichTextTagImpl value,
          $Res Function(_$NoteTweetResultRichTextTagImpl) then) =
      __$$NoteTweetResultRichTextTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'from_index') int fromIndex,
      @JsonKey(name: 'richtext_types')
      List<RichtextTypesRichtextTypes> richtextTypes,
      @JsonKey(name: 'to_index') int toIndex});
}

/// @nodoc
class __$$NoteTweetResultRichTextTagImplCopyWithImpl<$Res>
    extends _$NoteTweetResultRichTextTagCopyWithImpl<$Res,
        _$NoteTweetResultRichTextTagImpl>
    implements _$$NoteTweetResultRichTextTagImplCopyWith<$Res> {
  __$$NoteTweetResultRichTextTagImplCopyWithImpl(
      _$NoteTweetResultRichTextTagImpl _value,
      $Res Function(_$NoteTweetResultRichTextTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteTweetResultRichTextTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromIndex = null,
    Object? richtextTypes = null,
    Object? toIndex = null,
  }) {
    return _then(_$NoteTweetResultRichTextTagImpl(
      fromIndex: null == fromIndex
          ? _value.fromIndex
          : fromIndex // ignore: cast_nullable_to_non_nullable
              as int,
      richtextTypes: null == richtextTypes
          ? _value._richtextTypes
          : richtextTypes // ignore: cast_nullable_to_non_nullable
              as List<RichtextTypesRichtextTypes>,
      toIndex: null == toIndex
          ? _value.toIndex
          : toIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteTweetResultRichTextTagImpl implements _NoteTweetResultRichTextTag {
  const _$NoteTweetResultRichTextTagImpl(
      {@JsonKey(name: 'from_index') required this.fromIndex,
      @JsonKey(name: 'richtext_types')
      required final List<RichtextTypesRichtextTypes> richtextTypes,
      @JsonKey(name: 'to_index') required this.toIndex})
      : _richtextTypes = richtextTypes;

  factory _$NoteTweetResultRichTextTagImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NoteTweetResultRichTextTagImplFromJson(json);

  @override
  @JsonKey(name: 'from_index')
  final int fromIndex;
  final List<RichtextTypesRichtextTypes> _richtextTypes;
  @override
  @JsonKey(name: 'richtext_types')
  List<RichtextTypesRichtextTypes> get richtextTypes {
    if (_richtextTypes is EqualUnmodifiableListView) return _richtextTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_richtextTypes);
  }

  @override
  @JsonKey(name: 'to_index')
  final int toIndex;

  @override
  String toString() {
    return 'NoteTweetResultRichTextTag(fromIndex: $fromIndex, richtextTypes: $richtextTypes, toIndex: $toIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteTweetResultRichTextTagImpl &&
            (identical(other.fromIndex, fromIndex) ||
                other.fromIndex == fromIndex) &&
            const DeepCollectionEquality()
                .equals(other._richtextTypes, _richtextTypes) &&
            (identical(other.toIndex, toIndex) || other.toIndex == toIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fromIndex,
      const DeepCollectionEquality().hash(_richtextTypes), toIndex);

  /// Create a copy of NoteTweetResultRichTextTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteTweetResultRichTextTagImplCopyWith<_$NoteTweetResultRichTextTagImpl>
      get copyWith => __$$NoteTweetResultRichTextTagImplCopyWithImpl<
          _$NoteTweetResultRichTextTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteTweetResultRichTextTagImplToJson(
      this,
    );
  }
}

abstract class _NoteTweetResultRichTextTag
    implements NoteTweetResultRichTextTag {
  const factory _NoteTweetResultRichTextTag(
          {@JsonKey(name: 'from_index') required final int fromIndex,
          @JsonKey(name: 'richtext_types')
          required final List<RichtextTypesRichtextTypes> richtextTypes,
          @JsonKey(name: 'to_index') required final int toIndex}) =
      _$NoteTweetResultRichTextTagImpl;

  factory _NoteTweetResultRichTextTag.fromJson(Map<String, dynamic> json) =
      _$NoteTweetResultRichTextTagImpl.fromJson;

  @override
  @JsonKey(name: 'from_index')
  int get fromIndex;
  @override
  @JsonKey(name: 'richtext_types')
  List<RichtextTypesRichtextTypes> get richtextTypes;
  @override
  @JsonKey(name: 'to_index')
  int get toIndex;

  /// Create a copy of NoteTweetResultRichTextTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteTweetResultRichTextTagImplCopyWith<_$NoteTweetResultRichTextTagImpl>
      get copyWith => throw _privateConstructorUsedError;
}
