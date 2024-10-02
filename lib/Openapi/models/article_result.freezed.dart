// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleResult _$ArticleResultFromJson(Map<String, dynamic> json) {
  return _ArticleResult.fromJson(json);
}

/// @nodoc
mixin _$ArticleResult {
  @JsonKey(name: 'cover_media')
  ArticleCoverMedia get coverMedia => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'lifecycle_state')
  ArticleLifecycleState get lifecycleState =>
      throw _privateConstructorUsedError;
  ArticleMetadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_text')
  String get previewText => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_id')
  String get restId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this ArticleResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleResultCopyWith<ArticleResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleResultCopyWith<$Res> {
  factory $ArticleResultCopyWith(
          ArticleResult value, $Res Function(ArticleResult) then) =
      _$ArticleResultCopyWithImpl<$Res, ArticleResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cover_media') ArticleCoverMedia coverMedia,
      String id,
      @JsonKey(name: 'lifecycle_state') ArticleLifecycleState lifecycleState,
      ArticleMetadata metadata,
      @JsonKey(name: 'preview_text') String previewText,
      @JsonKey(name: 'rest_id') String restId,
      String title});

  $ArticleCoverMediaCopyWith<$Res> get coverMedia;
  $ArticleLifecycleStateCopyWith<$Res> get lifecycleState;
  $ArticleMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$ArticleResultCopyWithImpl<$Res, $Val extends ArticleResult>
    implements $ArticleResultCopyWith<$Res> {
  _$ArticleResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coverMedia = null,
    Object? id = null,
    Object? lifecycleState = null,
    Object? metadata = null,
    Object? previewText = null,
    Object? restId = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      coverMedia: null == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as ArticleCoverMedia,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lifecycleState: null == lifecycleState
          ? _value.lifecycleState
          : lifecycleState // ignore: cast_nullable_to_non_nullable
              as ArticleLifecycleState,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ArticleMetadata,
      previewText: null == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ArticleResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleCoverMediaCopyWith<$Res> get coverMedia {
    return $ArticleCoverMediaCopyWith<$Res>(_value.coverMedia, (value) {
      return _then(_value.copyWith(coverMedia: value) as $Val);
    });
  }

  /// Create a copy of ArticleResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleLifecycleStateCopyWith<$Res> get lifecycleState {
    return $ArticleLifecycleStateCopyWith<$Res>(_value.lifecycleState, (value) {
      return _then(_value.copyWith(lifecycleState: value) as $Val);
    });
  }

  /// Create a copy of ArticleResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleMetadataCopyWith<$Res> get metadata {
    return $ArticleMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleResultImplCopyWith<$Res>
    implements $ArticleResultCopyWith<$Res> {
  factory _$$ArticleResultImplCopyWith(
          _$ArticleResultImpl value, $Res Function(_$ArticleResultImpl) then) =
      __$$ArticleResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cover_media') ArticleCoverMedia coverMedia,
      String id,
      @JsonKey(name: 'lifecycle_state') ArticleLifecycleState lifecycleState,
      ArticleMetadata metadata,
      @JsonKey(name: 'preview_text') String previewText,
      @JsonKey(name: 'rest_id') String restId,
      String title});

  @override
  $ArticleCoverMediaCopyWith<$Res> get coverMedia;
  @override
  $ArticleLifecycleStateCopyWith<$Res> get lifecycleState;
  @override
  $ArticleMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$ArticleResultImplCopyWithImpl<$Res>
    extends _$ArticleResultCopyWithImpl<$Res, _$ArticleResultImpl>
    implements _$$ArticleResultImplCopyWith<$Res> {
  __$$ArticleResultImplCopyWithImpl(
      _$ArticleResultImpl _value, $Res Function(_$ArticleResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coverMedia = null,
    Object? id = null,
    Object? lifecycleState = null,
    Object? metadata = null,
    Object? previewText = null,
    Object? restId = null,
    Object? title = null,
  }) {
    return _then(_$ArticleResultImpl(
      coverMedia: null == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as ArticleCoverMedia,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lifecycleState: null == lifecycleState
          ? _value.lifecycleState
          : lifecycleState // ignore: cast_nullable_to_non_nullable
              as ArticleLifecycleState,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ArticleMetadata,
      previewText: null == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleResultImpl implements _ArticleResult {
  const _$ArticleResultImpl(
      {@JsonKey(name: 'cover_media') required this.coverMedia,
      required this.id,
      @JsonKey(name: 'lifecycle_state') required this.lifecycleState,
      required this.metadata,
      @JsonKey(name: 'preview_text') required this.previewText,
      @JsonKey(name: 'rest_id') required this.restId,
      required this.title});

  factory _$ArticleResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleResultImplFromJson(json);

  @override
  @JsonKey(name: 'cover_media')
  final ArticleCoverMedia coverMedia;
  @override
  final String id;
  @override
  @JsonKey(name: 'lifecycle_state')
  final ArticleLifecycleState lifecycleState;
  @override
  final ArticleMetadata metadata;
  @override
  @JsonKey(name: 'preview_text')
  final String previewText;
  @override
  @JsonKey(name: 'rest_id')
  final String restId;
  @override
  final String title;

  @override
  String toString() {
    return 'ArticleResult(coverMedia: $coverMedia, id: $id, lifecycleState: $lifecycleState, metadata: $metadata, previewText: $previewText, restId: $restId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleResultImpl &&
            (identical(other.coverMedia, coverMedia) ||
                other.coverMedia == coverMedia) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lifecycleState, lifecycleState) ||
                other.lifecycleState == lifecycleState) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.previewText, previewText) ||
                other.previewText == previewText) &&
            (identical(other.restId, restId) || other.restId == restId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coverMedia, id, lifecycleState,
      metadata, previewText, restId, title);

  /// Create a copy of ArticleResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleResultImplCopyWith<_$ArticleResultImpl> get copyWith =>
      __$$ArticleResultImplCopyWithImpl<_$ArticleResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleResultImplToJson(
      this,
    );
  }
}

abstract class _ArticleResult implements ArticleResult {
  const factory _ArticleResult(
      {@JsonKey(name: 'cover_media')
      required final ArticleCoverMedia coverMedia,
      required final String id,
      @JsonKey(name: 'lifecycle_state')
      required final ArticleLifecycleState lifecycleState,
      required final ArticleMetadata metadata,
      @JsonKey(name: 'preview_text') required final String previewText,
      @JsonKey(name: 'rest_id') required final String restId,
      required final String title}) = _$ArticleResultImpl;

  factory _ArticleResult.fromJson(Map<String, dynamic> json) =
      _$ArticleResultImpl.fromJson;

  @override
  @JsonKey(name: 'cover_media')
  ArticleCoverMedia get coverMedia;
  @override
  String get id;
  @override
  @JsonKey(name: 'lifecycle_state')
  ArticleLifecycleState get lifecycleState;
  @override
  ArticleMetadata get metadata;
  @override
  @JsonKey(name: 'preview_text')
  String get previewText;
  @override
  @JsonKey(name: 'rest_id')
  String get restId;
  @override
  String get title;

  /// Create a copy of ArticleResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleResultImplCopyWith<_$ArticleResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
