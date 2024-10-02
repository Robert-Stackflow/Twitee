// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RichText _$RichTextFromJson(Map<String, dynamic> json) {
  return _RichText.fromJson(json);
}

/// @nodoc
mixin _$RichText {
  List<dynamic> get entities => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this RichText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RichTextCopyWith<RichText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RichTextCopyWith<$Res> {
  factory $RichTextCopyWith(RichText value, $Res Function(RichText) then) =
      _$RichTextCopyWithImpl<$Res, RichText>;
  @useResult
  $Res call({List<dynamic> entities, String text});
}

/// @nodoc
class _$RichTextCopyWithImpl<$Res, $Val extends RichText>
    implements $RichTextCopyWith<$Res> {
  _$RichTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RichTextImplCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory _$$RichTextImplCopyWith(
          _$RichTextImpl value, $Res Function(_$RichTextImpl) then) =
      __$$RichTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> entities, String text});
}

/// @nodoc
class __$$RichTextImplCopyWithImpl<$Res>
    extends _$RichTextCopyWithImpl<$Res, _$RichTextImpl>
    implements _$$RichTextImplCopyWith<$Res> {
  __$$RichTextImplCopyWithImpl(
      _$RichTextImpl _value, $Res Function(_$RichTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? text = null,
  }) {
    return _then(_$RichTextImpl(
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RichTextImpl implements _RichText {
  const _$RichTextImpl(
      {required final List<dynamic> entities, required this.text})
      : _entities = entities;

  factory _$RichTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$RichTextImplFromJson(json);

  final List<dynamic> _entities;
  @override
  List<dynamic> get entities {
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  final String text;

  @override
  String toString() {
    return 'RichText(entities: $entities, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RichTextImpl &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entities), text);

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RichTextImplCopyWith<_$RichTextImpl> get copyWith =>
      __$$RichTextImplCopyWithImpl<_$RichTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RichTextImplToJson(
      this,
    );
  }
}

abstract class _RichText implements RichText {
  const factory _RichText(
      {required final List<dynamic> entities,
      required final String text}) = _$RichTextImpl;

  factory _RichText.fromJson(Map<String, dynamic> json) =
      _$RichTextImpl.fromJson;

  @override
  List<dynamic> get entities;
  @override
  String get text;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RichTextImplCopyWith<_$RichTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
