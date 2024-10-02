// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_cover_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleCoverMedia _$ArticleCoverMediaFromJson(Map<String, dynamic> json) {
  return _ArticleCoverMedia.fromJson(json);
}

/// @nodoc
mixin _$ArticleCoverMedia {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_id')
  String get mediaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_info')
  ArticleCoverMediaInfo get mediaInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_key')
  String get mediaKey => throw _privateConstructorUsedError;

  /// Serializes this ArticleCoverMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleCoverMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCoverMediaCopyWith<ArticleCoverMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCoverMediaCopyWith<$Res> {
  factory $ArticleCoverMediaCopyWith(
          ArticleCoverMedia value, $Res Function(ArticleCoverMedia) then) =
      _$ArticleCoverMediaCopyWithImpl<$Res, ArticleCoverMedia>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'media_id') String mediaId,
      @JsonKey(name: 'media_info') ArticleCoverMediaInfo mediaInfo,
      @JsonKey(name: 'media_key') String mediaKey});

  $ArticleCoverMediaInfoCopyWith<$Res> get mediaInfo;
}

/// @nodoc
class _$ArticleCoverMediaCopyWithImpl<$Res, $Val extends ArticleCoverMedia>
    implements $ArticleCoverMediaCopyWith<$Res> {
  _$ArticleCoverMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleCoverMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mediaId = null,
    Object? mediaInfo = null,
    Object? mediaKey = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as String,
      mediaInfo: null == mediaInfo
          ? _value.mediaInfo
          : mediaInfo // ignore: cast_nullable_to_non_nullable
              as ArticleCoverMediaInfo,
      mediaKey: null == mediaKey
          ? _value.mediaKey
          : mediaKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ArticleCoverMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleCoverMediaInfoCopyWith<$Res> get mediaInfo {
    return $ArticleCoverMediaInfoCopyWith<$Res>(_value.mediaInfo, (value) {
      return _then(_value.copyWith(mediaInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleCoverMediaImplCopyWith<$Res>
    implements $ArticleCoverMediaCopyWith<$Res> {
  factory _$$ArticleCoverMediaImplCopyWith(_$ArticleCoverMediaImpl value,
          $Res Function(_$ArticleCoverMediaImpl) then) =
      __$$ArticleCoverMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'media_id') String mediaId,
      @JsonKey(name: 'media_info') ArticleCoverMediaInfo mediaInfo,
      @JsonKey(name: 'media_key') String mediaKey});

  @override
  $ArticleCoverMediaInfoCopyWith<$Res> get mediaInfo;
}

/// @nodoc
class __$$ArticleCoverMediaImplCopyWithImpl<$Res>
    extends _$ArticleCoverMediaCopyWithImpl<$Res, _$ArticleCoverMediaImpl>
    implements _$$ArticleCoverMediaImplCopyWith<$Res> {
  __$$ArticleCoverMediaImplCopyWithImpl(_$ArticleCoverMediaImpl _value,
      $Res Function(_$ArticleCoverMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleCoverMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mediaId = null,
    Object? mediaInfo = null,
    Object? mediaKey = null,
  }) {
    return _then(_$ArticleCoverMediaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as String,
      mediaInfo: null == mediaInfo
          ? _value.mediaInfo
          : mediaInfo // ignore: cast_nullable_to_non_nullable
              as ArticleCoverMediaInfo,
      mediaKey: null == mediaKey
          ? _value.mediaKey
          : mediaKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleCoverMediaImpl implements _ArticleCoverMedia {
  const _$ArticleCoverMediaImpl(
      {required this.id,
      @JsonKey(name: 'media_id') required this.mediaId,
      @JsonKey(name: 'media_info') required this.mediaInfo,
      @JsonKey(name: 'media_key') required this.mediaKey});

  factory _$ArticleCoverMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleCoverMediaImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'media_id')
  final String mediaId;
  @override
  @JsonKey(name: 'media_info')
  final ArticleCoverMediaInfo mediaInfo;
  @override
  @JsonKey(name: 'media_key')
  final String mediaKey;

  @override
  String toString() {
    return 'ArticleCoverMedia(id: $id, mediaId: $mediaId, mediaInfo: $mediaInfo, mediaKey: $mediaKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleCoverMediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.mediaInfo, mediaInfo) ||
                other.mediaInfo == mediaInfo) &&
            (identical(other.mediaKey, mediaKey) ||
                other.mediaKey == mediaKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, mediaId, mediaInfo, mediaKey);

  /// Create a copy of ArticleCoverMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleCoverMediaImplCopyWith<_$ArticleCoverMediaImpl> get copyWith =>
      __$$ArticleCoverMediaImplCopyWithImpl<_$ArticleCoverMediaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleCoverMediaImplToJson(
      this,
    );
  }
}

abstract class _ArticleCoverMedia implements ArticleCoverMedia {
  const factory _ArticleCoverMedia(
          {required final String id,
          @JsonKey(name: 'media_id') required final String mediaId,
          @JsonKey(name: 'media_info')
          required final ArticleCoverMediaInfo mediaInfo,
          @JsonKey(name: 'media_key') required final String mediaKey}) =
      _$ArticleCoverMediaImpl;

  factory _ArticleCoverMedia.fromJson(Map<String, dynamic> json) =
      _$ArticleCoverMediaImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'media_id')
  String get mediaId;
  @override
  @JsonKey(name: 'media_info')
  ArticleCoverMediaInfo get mediaInfo;
  @override
  @JsonKey(name: 'media_key')
  String get mediaKey;

  /// Create a copy of ArticleCoverMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleCoverMediaImplCopyWith<_$ArticleCoverMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
