// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_tweet_result_media_inline_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteTweetResultMediaInlineMedia _$NoteTweetResultMediaInlineMediaFromJson(
    Map<String, dynamic> json) {
  return _NoteTweetResultMediaInlineMedia.fromJson(json);
}

/// @nodoc
mixin _$NoteTweetResultMediaInlineMedia {
  int get index => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_id')
  String get mediaId => throw _privateConstructorUsedError;

  /// Serializes this NoteTweetResultMediaInlineMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteTweetResultMediaInlineMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteTweetResultMediaInlineMediaCopyWith<NoteTweetResultMediaInlineMedia>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteTweetResultMediaInlineMediaCopyWith<$Res> {
  factory $NoteTweetResultMediaInlineMediaCopyWith(
          NoteTweetResultMediaInlineMedia value,
          $Res Function(NoteTweetResultMediaInlineMedia) then) =
      _$NoteTweetResultMediaInlineMediaCopyWithImpl<$Res,
          NoteTweetResultMediaInlineMedia>;
  @useResult
  $Res call({int index, @JsonKey(name: 'media_id') String mediaId});
}

/// @nodoc
class _$NoteTweetResultMediaInlineMediaCopyWithImpl<$Res,
        $Val extends NoteTweetResultMediaInlineMedia>
    implements $NoteTweetResultMediaInlineMediaCopyWith<$Res> {
  _$NoteTweetResultMediaInlineMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteTweetResultMediaInlineMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? mediaId = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteTweetResultMediaInlineMediaImplCopyWith<$Res>
    implements $NoteTweetResultMediaInlineMediaCopyWith<$Res> {
  factory _$$NoteTweetResultMediaInlineMediaImplCopyWith(
          _$NoteTweetResultMediaInlineMediaImpl value,
          $Res Function(_$NoteTweetResultMediaInlineMediaImpl) then) =
      __$$NoteTweetResultMediaInlineMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, @JsonKey(name: 'media_id') String mediaId});
}

/// @nodoc
class __$$NoteTweetResultMediaInlineMediaImplCopyWithImpl<$Res>
    extends _$NoteTweetResultMediaInlineMediaCopyWithImpl<$Res,
        _$NoteTweetResultMediaInlineMediaImpl>
    implements _$$NoteTweetResultMediaInlineMediaImplCopyWith<$Res> {
  __$$NoteTweetResultMediaInlineMediaImplCopyWithImpl(
      _$NoteTweetResultMediaInlineMediaImpl _value,
      $Res Function(_$NoteTweetResultMediaInlineMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteTweetResultMediaInlineMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? mediaId = null,
  }) {
    return _then(_$NoteTweetResultMediaInlineMediaImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteTweetResultMediaInlineMediaImpl
    implements _NoteTweetResultMediaInlineMedia {
  const _$NoteTweetResultMediaInlineMediaImpl(
      {required this.index, @JsonKey(name: 'media_id') required this.mediaId});

  factory _$NoteTweetResultMediaInlineMediaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NoteTweetResultMediaInlineMediaImplFromJson(json);

  @override
  final int index;
  @override
  @JsonKey(name: 'media_id')
  final String mediaId;

  @override
  String toString() {
    return 'NoteTweetResultMediaInlineMedia(index: $index, mediaId: $mediaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteTweetResultMediaInlineMediaImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, mediaId);

  /// Create a copy of NoteTweetResultMediaInlineMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteTweetResultMediaInlineMediaImplCopyWith<
          _$NoteTweetResultMediaInlineMediaImpl>
      get copyWith => __$$NoteTweetResultMediaInlineMediaImplCopyWithImpl<
          _$NoteTweetResultMediaInlineMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteTweetResultMediaInlineMediaImplToJson(
      this,
    );
  }
}

abstract class _NoteTweetResultMediaInlineMedia
    implements NoteTweetResultMediaInlineMedia {
  const factory _NoteTweetResultMediaInlineMedia(
          {required final int index,
          @JsonKey(name: 'media_id') required final String mediaId}) =
      _$NoteTweetResultMediaInlineMediaImpl;

  factory _NoteTweetResultMediaInlineMedia.fromJson(Map<String, dynamic> json) =
      _$NoteTweetResultMediaInlineMediaImpl.fromJson;

  @override
  int get index;
  @override
  @JsonKey(name: 'media_id')
  String get mediaId;

  /// Create a copy of NoteTweetResultMediaInlineMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteTweetResultMediaInlineMediaImplCopyWith<
          _$NoteTweetResultMediaInlineMediaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
