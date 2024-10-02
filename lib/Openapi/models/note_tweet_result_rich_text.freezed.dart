// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_tweet_result_rich_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteTweetResultRichText _$NoteTweetResultRichTextFromJson(
    Map<String, dynamic> json) {
  return _NoteTweetResultRichText.fromJson(json);
}

/// @nodoc
mixin _$NoteTweetResultRichText {
  @JsonKey(name: 'richtext_tags')
  List<NoteTweetResultRichTextTag> get richtextTags =>
      throw _privateConstructorUsedError;

  /// Serializes this NoteTweetResultRichText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteTweetResultRichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteTweetResultRichTextCopyWith<NoteTweetResultRichText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteTweetResultRichTextCopyWith<$Res> {
  factory $NoteTweetResultRichTextCopyWith(NoteTweetResultRichText value,
          $Res Function(NoteTweetResultRichText) then) =
      _$NoteTweetResultRichTextCopyWithImpl<$Res, NoteTweetResultRichText>;
  @useResult
  $Res call(
      {@JsonKey(name: 'richtext_tags')
      List<NoteTweetResultRichTextTag> richtextTags});
}

/// @nodoc
class _$NoteTweetResultRichTextCopyWithImpl<$Res,
        $Val extends NoteTweetResultRichText>
    implements $NoteTweetResultRichTextCopyWith<$Res> {
  _$NoteTweetResultRichTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteTweetResultRichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richtextTags = null,
  }) {
    return _then(_value.copyWith(
      richtextTags: null == richtextTags
          ? _value.richtextTags
          : richtextTags // ignore: cast_nullable_to_non_nullable
              as List<NoteTweetResultRichTextTag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteTweetResultRichTextImplCopyWith<$Res>
    implements $NoteTweetResultRichTextCopyWith<$Res> {
  factory _$$NoteTweetResultRichTextImplCopyWith(
          _$NoteTweetResultRichTextImpl value,
          $Res Function(_$NoteTweetResultRichTextImpl) then) =
      __$$NoteTweetResultRichTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'richtext_tags')
      List<NoteTweetResultRichTextTag> richtextTags});
}

/// @nodoc
class __$$NoteTweetResultRichTextImplCopyWithImpl<$Res>
    extends _$NoteTweetResultRichTextCopyWithImpl<$Res,
        _$NoteTweetResultRichTextImpl>
    implements _$$NoteTweetResultRichTextImplCopyWith<$Res> {
  __$$NoteTweetResultRichTextImplCopyWithImpl(
      _$NoteTweetResultRichTextImpl _value,
      $Res Function(_$NoteTweetResultRichTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteTweetResultRichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? richtextTags = null,
  }) {
    return _then(_$NoteTweetResultRichTextImpl(
      richtextTags: null == richtextTags
          ? _value._richtextTags
          : richtextTags // ignore: cast_nullable_to_non_nullable
              as List<NoteTweetResultRichTextTag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteTweetResultRichTextImpl implements _NoteTweetResultRichText {
  const _$NoteTweetResultRichTextImpl(
      {@JsonKey(name: 'richtext_tags')
      required final List<NoteTweetResultRichTextTag> richtextTags})
      : _richtextTags = richtextTags;

  factory _$NoteTweetResultRichTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteTweetResultRichTextImplFromJson(json);

  final List<NoteTweetResultRichTextTag> _richtextTags;
  @override
  @JsonKey(name: 'richtext_tags')
  List<NoteTweetResultRichTextTag> get richtextTags {
    if (_richtextTags is EqualUnmodifiableListView) return _richtextTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_richtextTags);
  }

  @override
  String toString() {
    return 'NoteTweetResultRichText(richtextTags: $richtextTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteTweetResultRichTextImpl &&
            const DeepCollectionEquality()
                .equals(other._richtextTags, _richtextTags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_richtextTags));

  /// Create a copy of NoteTweetResultRichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteTweetResultRichTextImplCopyWith<_$NoteTweetResultRichTextImpl>
      get copyWith => __$$NoteTweetResultRichTextImplCopyWithImpl<
          _$NoteTweetResultRichTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteTweetResultRichTextImplToJson(
      this,
    );
  }
}

abstract class _NoteTweetResultRichText implements NoteTweetResultRichText {
  const factory _NoteTweetResultRichText(
          {@JsonKey(name: 'richtext_tags')
          required final List<NoteTweetResultRichTextTag> richtextTags}) =
      _$NoteTweetResultRichTextImpl;

  factory _NoteTweetResultRichText.fromJson(Map<String, dynamic> json) =
      _$NoteTweetResultRichTextImpl.fromJson;

  @override
  @JsonKey(name: 'richtext_tags')
  List<NoteTweetResultRichTextTag> get richtextTags;

  /// Create a copy of NoteTweetResultRichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteTweetResultRichTextImplCopyWith<_$NoteTweetResultRichTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}
