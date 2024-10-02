// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_tweet_result_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteTweetResultMedia _$NoteTweetResultMediaFromJson(Map<String, dynamic> json) {
  return _NoteTweetResultMedia.fromJson(json);
}

/// @nodoc
mixin _$NoteTweetResultMedia {
  @JsonKey(name: 'inline_media')
  List<NoteTweetResultMediaInlineMedia> get inlineMedia =>
      throw _privateConstructorUsedError;

  /// Serializes this NoteTweetResultMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteTweetResultMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteTweetResultMediaCopyWith<NoteTweetResultMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteTweetResultMediaCopyWith<$Res> {
  factory $NoteTweetResultMediaCopyWith(NoteTweetResultMedia value,
          $Res Function(NoteTweetResultMedia) then) =
      _$NoteTweetResultMediaCopyWithImpl<$Res, NoteTweetResultMedia>;
  @useResult
  $Res call(
      {@JsonKey(name: 'inline_media')
      List<NoteTweetResultMediaInlineMedia> inlineMedia});
}

/// @nodoc
class _$NoteTweetResultMediaCopyWithImpl<$Res,
        $Val extends NoteTweetResultMedia>
    implements $NoteTweetResultMediaCopyWith<$Res> {
  _$NoteTweetResultMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteTweetResultMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inlineMedia = null,
  }) {
    return _then(_value.copyWith(
      inlineMedia: null == inlineMedia
          ? _value.inlineMedia
          : inlineMedia // ignore: cast_nullable_to_non_nullable
              as List<NoteTweetResultMediaInlineMedia>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteTweetResultMediaImplCopyWith<$Res>
    implements $NoteTweetResultMediaCopyWith<$Res> {
  factory _$$NoteTweetResultMediaImplCopyWith(_$NoteTweetResultMediaImpl value,
          $Res Function(_$NoteTweetResultMediaImpl) then) =
      __$$NoteTweetResultMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'inline_media')
      List<NoteTweetResultMediaInlineMedia> inlineMedia});
}

/// @nodoc
class __$$NoteTweetResultMediaImplCopyWithImpl<$Res>
    extends _$NoteTweetResultMediaCopyWithImpl<$Res, _$NoteTweetResultMediaImpl>
    implements _$$NoteTweetResultMediaImplCopyWith<$Res> {
  __$$NoteTweetResultMediaImplCopyWithImpl(_$NoteTweetResultMediaImpl _value,
      $Res Function(_$NoteTweetResultMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteTweetResultMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inlineMedia = null,
  }) {
    return _then(_$NoteTweetResultMediaImpl(
      inlineMedia: null == inlineMedia
          ? _value._inlineMedia
          : inlineMedia // ignore: cast_nullable_to_non_nullable
              as List<NoteTweetResultMediaInlineMedia>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteTweetResultMediaImpl implements _NoteTweetResultMedia {
  const _$NoteTweetResultMediaImpl(
      {@JsonKey(name: 'inline_media')
      required final List<NoteTweetResultMediaInlineMedia> inlineMedia})
      : _inlineMedia = inlineMedia;

  factory _$NoteTweetResultMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteTweetResultMediaImplFromJson(json);

  final List<NoteTweetResultMediaInlineMedia> _inlineMedia;
  @override
  @JsonKey(name: 'inline_media')
  List<NoteTweetResultMediaInlineMedia> get inlineMedia {
    if (_inlineMedia is EqualUnmodifiableListView) return _inlineMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inlineMedia);
  }

  @override
  String toString() {
    return 'NoteTweetResultMedia(inlineMedia: $inlineMedia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteTweetResultMediaImpl &&
            const DeepCollectionEquality()
                .equals(other._inlineMedia, _inlineMedia));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_inlineMedia));

  /// Create a copy of NoteTweetResultMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteTweetResultMediaImplCopyWith<_$NoteTweetResultMediaImpl>
      get copyWith =>
          __$$NoteTweetResultMediaImplCopyWithImpl<_$NoteTweetResultMediaImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteTweetResultMediaImplToJson(
      this,
    );
  }
}

abstract class _NoteTweetResultMedia implements NoteTweetResultMedia {
  const factory _NoteTweetResultMedia(
          {@JsonKey(name: 'inline_media')
          required final List<NoteTweetResultMediaInlineMedia> inlineMedia}) =
      _$NoteTweetResultMediaImpl;

  factory _NoteTweetResultMedia.fromJson(Map<String, dynamic> json) =
      _$NoteTweetResultMediaImpl.fromJson;

  @override
  @JsonKey(name: 'inline_media')
  List<NoteTweetResultMediaInlineMedia> get inlineMedia;

  /// Create a copy of NoteTweetResultMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteTweetResultMediaImplCopyWith<_$NoteTweetResultMediaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
