// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  @JsonKey(name: 'additional_media_info')
  AdditionalMediaInfo get additionalMediaInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_download_status')
  AllowDownloadStatus get allowDownloadStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'display_url')
  String get displayUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'expanded_url')
  String get expandedUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'ext_alt_text')
  String get extAltText => throw _privateConstructorUsedError;
  @JsonKey(name: 'ext_media_availability')
  ExtMediaAvailability get extMediaAvailability =>
      throw _privateConstructorUsedError;
  dynamic get features => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_str')
  String get idStr => throw _privateConstructorUsedError;
  List<int> get indices => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_key')
  String get mediaKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_results')
  MediaResults get mediaResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_url_https')
  String get mediaUrlHttps => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_info')
  MediaOriginalInfo get originalInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'sensitive_media_warning')
  SensitiveMediaWarning get sensitiveMediaWarning =>
      throw _privateConstructorUsedError;
  MediaSizes get sizes => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_status_id_str')
  String get sourceStatusIdStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_user_id_str')
  String get sourceUserIdStr => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_info')
  MediaVideoInfo get videoInfo => throw _privateConstructorUsedError;

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {@JsonKey(name: 'additional_media_info')
      AdditionalMediaInfo additionalMediaInfo,
      @JsonKey(name: 'allow_download_status')
      AllowDownloadStatus allowDownloadStatus,
      @JsonKey(name: 'display_url') String displayUrl,
      @JsonKey(name: 'expanded_url') String expandedUrl,
      @JsonKey(name: 'ext_alt_text') String extAltText,
      @JsonKey(name: 'ext_media_availability')
      ExtMediaAvailability extMediaAvailability,
      dynamic features,
      @JsonKey(name: 'id_str') String idStr,
      List<int> indices,
      @JsonKey(name: 'media_key') String mediaKey,
      @JsonKey(name: 'media_results') MediaResults mediaResults,
      @JsonKey(name: 'media_url_https') String mediaUrlHttps,
      @JsonKey(name: 'original_info') MediaOriginalInfo originalInfo,
      @JsonKey(name: 'sensitive_media_warning')
      SensitiveMediaWarning sensitiveMediaWarning,
      MediaSizes sizes,
      @JsonKey(name: 'source_status_id_str') String sourceStatusIdStr,
      @JsonKey(name: 'source_user_id_str') String sourceUserIdStr,
      MediaType type,
      String url,
      @JsonKey(name: 'video_info') MediaVideoInfo videoInfo});

  $AdditionalMediaInfoCopyWith<$Res> get additionalMediaInfo;
  $AllowDownloadStatusCopyWith<$Res> get allowDownloadStatus;
  $ExtMediaAvailabilityCopyWith<$Res> get extMediaAvailability;
  $MediaResultsCopyWith<$Res> get mediaResults;
  $MediaOriginalInfoCopyWith<$Res> get originalInfo;
  $SensitiveMediaWarningCopyWith<$Res> get sensitiveMediaWarning;
  $MediaSizesCopyWith<$Res> get sizes;
  $MediaVideoInfoCopyWith<$Res> get videoInfo;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalMediaInfo = null,
    Object? allowDownloadStatus = null,
    Object? displayUrl = null,
    Object? expandedUrl = null,
    Object? extAltText = null,
    Object? extMediaAvailability = null,
    Object? features = freezed,
    Object? idStr = null,
    Object? indices = null,
    Object? mediaKey = null,
    Object? mediaResults = null,
    Object? mediaUrlHttps = null,
    Object? originalInfo = null,
    Object? sensitiveMediaWarning = null,
    Object? sizes = null,
    Object? sourceStatusIdStr = null,
    Object? sourceUserIdStr = null,
    Object? type = null,
    Object? url = null,
    Object? videoInfo = null,
  }) {
    return _then(_value.copyWith(
      additionalMediaInfo: null == additionalMediaInfo
          ? _value.additionalMediaInfo
          : additionalMediaInfo // ignore: cast_nullable_to_non_nullable
              as AdditionalMediaInfo,
      allowDownloadStatus: null == allowDownloadStatus
          ? _value.allowDownloadStatus
          : allowDownloadStatus // ignore: cast_nullable_to_non_nullable
              as AllowDownloadStatus,
      displayUrl: null == displayUrl
          ? _value.displayUrl
          : displayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      expandedUrl: null == expandedUrl
          ? _value.expandedUrl
          : expandedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      extAltText: null == extAltText
          ? _value.extAltText
          : extAltText // ignore: cast_nullable_to_non_nullable
              as String,
      extMediaAvailability: null == extMediaAvailability
          ? _value.extMediaAvailability
          : extMediaAvailability // ignore: cast_nullable_to_non_nullable
              as ExtMediaAvailability,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as dynamic,
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
      indices: null == indices
          ? _value.indices
          : indices // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mediaKey: null == mediaKey
          ? _value.mediaKey
          : mediaKey // ignore: cast_nullable_to_non_nullable
              as String,
      mediaResults: null == mediaResults
          ? _value.mediaResults
          : mediaResults // ignore: cast_nullable_to_non_nullable
              as MediaResults,
      mediaUrlHttps: null == mediaUrlHttps
          ? _value.mediaUrlHttps
          : mediaUrlHttps // ignore: cast_nullable_to_non_nullable
              as String,
      originalInfo: null == originalInfo
          ? _value.originalInfo
          : originalInfo // ignore: cast_nullable_to_non_nullable
              as MediaOriginalInfo,
      sensitiveMediaWarning: null == sensitiveMediaWarning
          ? _value.sensitiveMediaWarning
          : sensitiveMediaWarning // ignore: cast_nullable_to_non_nullable
              as SensitiveMediaWarning,
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as MediaSizes,
      sourceStatusIdStr: null == sourceStatusIdStr
          ? _value.sourceStatusIdStr
          : sourceStatusIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUserIdStr: null == sourceUserIdStr
          ? _value.sourceUserIdStr
          : sourceUserIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      videoInfo: null == videoInfo
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as MediaVideoInfo,
    ) as $Val);
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionalMediaInfoCopyWith<$Res> get additionalMediaInfo {
    return $AdditionalMediaInfoCopyWith<$Res>(_value.additionalMediaInfo,
        (value) {
      return _then(_value.copyWith(additionalMediaInfo: value) as $Val);
    });
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AllowDownloadStatusCopyWith<$Res> get allowDownloadStatus {
    return $AllowDownloadStatusCopyWith<$Res>(_value.allowDownloadStatus,
        (value) {
      return _then(_value.copyWith(allowDownloadStatus: value) as $Val);
    });
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtMediaAvailabilityCopyWith<$Res> get extMediaAvailability {
    return $ExtMediaAvailabilityCopyWith<$Res>(_value.extMediaAvailability,
        (value) {
      return _then(_value.copyWith(extMediaAvailability: value) as $Val);
    });
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaResultsCopyWith<$Res> get mediaResults {
    return $MediaResultsCopyWith<$Res>(_value.mediaResults, (value) {
      return _then(_value.copyWith(mediaResults: value) as $Val);
    });
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaOriginalInfoCopyWith<$Res> get originalInfo {
    return $MediaOriginalInfoCopyWith<$Res>(_value.originalInfo, (value) {
      return _then(_value.copyWith(originalInfo: value) as $Val);
    });
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SensitiveMediaWarningCopyWith<$Res> get sensitiveMediaWarning {
    return $SensitiveMediaWarningCopyWith<$Res>(_value.sensitiveMediaWarning,
        (value) {
      return _then(_value.copyWith(sensitiveMediaWarning: value) as $Val);
    });
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaSizesCopyWith<$Res> get sizes {
    return $MediaSizesCopyWith<$Res>(_value.sizes, (value) {
      return _then(_value.copyWith(sizes: value) as $Val);
    });
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaVideoInfoCopyWith<$Res> get videoInfo {
    return $MediaVideoInfoCopyWith<$Res>(_value.videoInfo, (value) {
      return _then(_value.copyWith(videoInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'additional_media_info')
      AdditionalMediaInfo additionalMediaInfo,
      @JsonKey(name: 'allow_download_status')
      AllowDownloadStatus allowDownloadStatus,
      @JsonKey(name: 'display_url') String displayUrl,
      @JsonKey(name: 'expanded_url') String expandedUrl,
      @JsonKey(name: 'ext_alt_text') String extAltText,
      @JsonKey(name: 'ext_media_availability')
      ExtMediaAvailability extMediaAvailability,
      dynamic features,
      @JsonKey(name: 'id_str') String idStr,
      List<int> indices,
      @JsonKey(name: 'media_key') String mediaKey,
      @JsonKey(name: 'media_results') MediaResults mediaResults,
      @JsonKey(name: 'media_url_https') String mediaUrlHttps,
      @JsonKey(name: 'original_info') MediaOriginalInfo originalInfo,
      @JsonKey(name: 'sensitive_media_warning')
      SensitiveMediaWarning sensitiveMediaWarning,
      MediaSizes sizes,
      @JsonKey(name: 'source_status_id_str') String sourceStatusIdStr,
      @JsonKey(name: 'source_user_id_str') String sourceUserIdStr,
      MediaType type,
      String url,
      @JsonKey(name: 'video_info') MediaVideoInfo videoInfo});

  @override
  $AdditionalMediaInfoCopyWith<$Res> get additionalMediaInfo;
  @override
  $AllowDownloadStatusCopyWith<$Res> get allowDownloadStatus;
  @override
  $ExtMediaAvailabilityCopyWith<$Res> get extMediaAvailability;
  @override
  $MediaResultsCopyWith<$Res> get mediaResults;
  @override
  $MediaOriginalInfoCopyWith<$Res> get originalInfo;
  @override
  $SensitiveMediaWarningCopyWith<$Res> get sensitiveMediaWarning;
  @override
  $MediaSizesCopyWith<$Res> get sizes;
  @override
  $MediaVideoInfoCopyWith<$Res> get videoInfo;
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalMediaInfo = null,
    Object? allowDownloadStatus = null,
    Object? displayUrl = null,
    Object? expandedUrl = null,
    Object? extAltText = null,
    Object? extMediaAvailability = null,
    Object? features = freezed,
    Object? idStr = null,
    Object? indices = null,
    Object? mediaKey = null,
    Object? mediaResults = null,
    Object? mediaUrlHttps = null,
    Object? originalInfo = null,
    Object? sensitiveMediaWarning = null,
    Object? sizes = null,
    Object? sourceStatusIdStr = null,
    Object? sourceUserIdStr = null,
    Object? type = null,
    Object? url = null,
    Object? videoInfo = null,
  }) {
    return _then(_$MediaImpl(
      additionalMediaInfo: null == additionalMediaInfo
          ? _value.additionalMediaInfo
          : additionalMediaInfo // ignore: cast_nullable_to_non_nullable
              as AdditionalMediaInfo,
      allowDownloadStatus: null == allowDownloadStatus
          ? _value.allowDownloadStatus
          : allowDownloadStatus // ignore: cast_nullable_to_non_nullable
              as AllowDownloadStatus,
      displayUrl: null == displayUrl
          ? _value.displayUrl
          : displayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      expandedUrl: null == expandedUrl
          ? _value.expandedUrl
          : expandedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      extAltText: null == extAltText
          ? _value.extAltText
          : extAltText // ignore: cast_nullable_to_non_nullable
              as String,
      extMediaAvailability: null == extMediaAvailability
          ? _value.extMediaAvailability
          : extMediaAvailability // ignore: cast_nullable_to_non_nullable
              as ExtMediaAvailability,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as dynamic,
      idStr: null == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String,
      indices: null == indices
          ? _value._indices
          : indices // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mediaKey: null == mediaKey
          ? _value.mediaKey
          : mediaKey // ignore: cast_nullable_to_non_nullable
              as String,
      mediaResults: null == mediaResults
          ? _value.mediaResults
          : mediaResults // ignore: cast_nullable_to_non_nullable
              as MediaResults,
      mediaUrlHttps: null == mediaUrlHttps
          ? _value.mediaUrlHttps
          : mediaUrlHttps // ignore: cast_nullable_to_non_nullable
              as String,
      originalInfo: null == originalInfo
          ? _value.originalInfo
          : originalInfo // ignore: cast_nullable_to_non_nullable
              as MediaOriginalInfo,
      sensitiveMediaWarning: null == sensitiveMediaWarning
          ? _value.sensitiveMediaWarning
          : sensitiveMediaWarning // ignore: cast_nullable_to_non_nullable
              as SensitiveMediaWarning,
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as MediaSizes,
      sourceStatusIdStr: null == sourceStatusIdStr
          ? _value.sourceStatusIdStr
          : sourceStatusIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUserIdStr: null == sourceUserIdStr
          ? _value.sourceUserIdStr
          : sourceUserIdStr // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      videoInfo: null == videoInfo
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as MediaVideoInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaImpl implements _Media {
  const _$MediaImpl(
      {@JsonKey(name: 'additional_media_info')
      required this.additionalMediaInfo,
      @JsonKey(name: 'allow_download_status') required this.allowDownloadStatus,
      @JsonKey(name: 'display_url') required this.displayUrl,
      @JsonKey(name: 'expanded_url') required this.expandedUrl,
      @JsonKey(name: 'ext_alt_text') required this.extAltText,
      @JsonKey(name: 'ext_media_availability')
      required this.extMediaAvailability,
      required this.features,
      @JsonKey(name: 'id_str') required this.idStr,
      required final List<int> indices,
      @JsonKey(name: 'media_key') required this.mediaKey,
      @JsonKey(name: 'media_results') required this.mediaResults,
      @JsonKey(name: 'media_url_https') required this.mediaUrlHttps,
      @JsonKey(name: 'original_info') required this.originalInfo,
      @JsonKey(name: 'sensitive_media_warning')
      required this.sensitiveMediaWarning,
      required this.sizes,
      @JsonKey(name: 'source_status_id_str') required this.sourceStatusIdStr,
      @JsonKey(name: 'source_user_id_str') required this.sourceUserIdStr,
      required this.type,
      required this.url,
      @JsonKey(name: 'video_info') required this.videoInfo})
      : _indices = indices;

  factory _$MediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaImplFromJson(json);

  @override
  @JsonKey(name: 'additional_media_info')
  final AdditionalMediaInfo additionalMediaInfo;
  @override
  @JsonKey(name: 'allow_download_status')
  final AllowDownloadStatus allowDownloadStatus;
  @override
  @JsonKey(name: 'display_url')
  final String displayUrl;
  @override
  @JsonKey(name: 'expanded_url')
  final String expandedUrl;
  @override
  @JsonKey(name: 'ext_alt_text')
  final String extAltText;
  @override
  @JsonKey(name: 'ext_media_availability')
  final ExtMediaAvailability extMediaAvailability;
  @override
  final dynamic features;
  @override
  @JsonKey(name: 'id_str')
  final String idStr;
  final List<int> _indices;
  @override
  List<int> get indices {
    if (_indices is EqualUnmodifiableListView) return _indices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_indices);
  }

  @override
  @JsonKey(name: 'media_key')
  final String mediaKey;
  @override
  @JsonKey(name: 'media_results')
  final MediaResults mediaResults;
  @override
  @JsonKey(name: 'media_url_https')
  final String mediaUrlHttps;
  @override
  @JsonKey(name: 'original_info')
  final MediaOriginalInfo originalInfo;
  @override
  @JsonKey(name: 'sensitive_media_warning')
  final SensitiveMediaWarning sensitiveMediaWarning;
  @override
  final MediaSizes sizes;
  @override
  @JsonKey(name: 'source_status_id_str')
  final String sourceStatusIdStr;
  @override
  @JsonKey(name: 'source_user_id_str')
  final String sourceUserIdStr;
  @override
  final MediaType type;
  @override
  final String url;
  @override
  @JsonKey(name: 'video_info')
  final MediaVideoInfo videoInfo;

  @override
  String toString() {
    return 'Media(additionalMediaInfo: $additionalMediaInfo, allowDownloadStatus: $allowDownloadStatus, displayUrl: $displayUrl, expandedUrl: $expandedUrl, extAltText: $extAltText, extMediaAvailability: $extMediaAvailability, features: $features, idStr: $idStr, indices: $indices, mediaKey: $mediaKey, mediaResults: $mediaResults, mediaUrlHttps: $mediaUrlHttps, originalInfo: $originalInfo, sensitiveMediaWarning: $sensitiveMediaWarning, sizes: $sizes, sourceStatusIdStr: $sourceStatusIdStr, sourceUserIdStr: $sourceUserIdStr, type: $type, url: $url, videoInfo: $videoInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.additionalMediaInfo, additionalMediaInfo) ||
                other.additionalMediaInfo == additionalMediaInfo) &&
            (identical(other.allowDownloadStatus, allowDownloadStatus) ||
                other.allowDownloadStatus == allowDownloadStatus) &&
            (identical(other.displayUrl, displayUrl) ||
                other.displayUrl == displayUrl) &&
            (identical(other.expandedUrl, expandedUrl) ||
                other.expandedUrl == expandedUrl) &&
            (identical(other.extAltText, extAltText) ||
                other.extAltText == extAltText) &&
            (identical(other.extMediaAvailability, extMediaAvailability) ||
                other.extMediaAvailability == extMediaAvailability) &&
            const DeepCollectionEquality().equals(other.features, features) &&
            (identical(other.idStr, idStr) || other.idStr == idStr) &&
            const DeepCollectionEquality().equals(other._indices, _indices) &&
            (identical(other.mediaKey, mediaKey) ||
                other.mediaKey == mediaKey) &&
            (identical(other.mediaResults, mediaResults) ||
                other.mediaResults == mediaResults) &&
            (identical(other.mediaUrlHttps, mediaUrlHttps) ||
                other.mediaUrlHttps == mediaUrlHttps) &&
            (identical(other.originalInfo, originalInfo) ||
                other.originalInfo == originalInfo) &&
            (identical(other.sensitiveMediaWarning, sensitiveMediaWarning) ||
                other.sensitiveMediaWarning == sensitiveMediaWarning) &&
            (identical(other.sizes, sizes) || other.sizes == sizes) &&
            (identical(other.sourceStatusIdStr, sourceStatusIdStr) ||
                other.sourceStatusIdStr == sourceStatusIdStr) &&
            (identical(other.sourceUserIdStr, sourceUserIdStr) ||
                other.sourceUserIdStr == sourceUserIdStr) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.videoInfo, videoInfo) ||
                other.videoInfo == videoInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        additionalMediaInfo,
        allowDownloadStatus,
        displayUrl,
        expandedUrl,
        extAltText,
        extMediaAvailability,
        const DeepCollectionEquality().hash(features),
        idStr,
        const DeepCollectionEquality().hash(_indices),
        mediaKey,
        mediaResults,
        mediaUrlHttps,
        originalInfo,
        sensitiveMediaWarning,
        sizes,
        sourceStatusIdStr,
        sourceUserIdStr,
        type,
        url,
        videoInfo
      ]);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImplToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {@JsonKey(name: 'additional_media_info')
      required final AdditionalMediaInfo additionalMediaInfo,
      @JsonKey(name: 'allow_download_status')
      required final AllowDownloadStatus allowDownloadStatus,
      @JsonKey(name: 'display_url') required final String displayUrl,
      @JsonKey(name: 'expanded_url') required final String expandedUrl,
      @JsonKey(name: 'ext_alt_text') required final String extAltText,
      @JsonKey(name: 'ext_media_availability')
      required final ExtMediaAvailability extMediaAvailability,
      required final dynamic features,
      @JsonKey(name: 'id_str') required final String idStr,
      required final List<int> indices,
      @JsonKey(name: 'media_key') required final String mediaKey,
      @JsonKey(name: 'media_results') required final MediaResults mediaResults,
      @JsonKey(name: 'media_url_https') required final String mediaUrlHttps,
      @JsonKey(name: 'original_info')
      required final MediaOriginalInfo originalInfo,
      @JsonKey(name: 'sensitive_media_warning')
      required final SensitiveMediaWarning sensitiveMediaWarning,
      required final MediaSizes sizes,
      @JsonKey(name: 'source_status_id_str')
      required final String sourceStatusIdStr,
      @JsonKey(name: 'source_user_id_str')
      required final String sourceUserIdStr,
      required final MediaType type,
      required final String url,
      @JsonKey(name: 'video_info')
      required final MediaVideoInfo videoInfo}) = _$MediaImpl;

  factory _Media.fromJson(Map<String, dynamic> json) = _$MediaImpl.fromJson;

  @override
  @JsonKey(name: 'additional_media_info')
  AdditionalMediaInfo get additionalMediaInfo;
  @override
  @JsonKey(name: 'allow_download_status')
  AllowDownloadStatus get allowDownloadStatus;
  @override
  @JsonKey(name: 'display_url')
  String get displayUrl;
  @override
  @JsonKey(name: 'expanded_url')
  String get expandedUrl;
  @override
  @JsonKey(name: 'ext_alt_text')
  String get extAltText;
  @override
  @JsonKey(name: 'ext_media_availability')
  ExtMediaAvailability get extMediaAvailability;
  @override
  dynamic get features;
  @override
  @JsonKey(name: 'id_str')
  String get idStr;
  @override
  List<int> get indices;
  @override
  @JsonKey(name: 'media_key')
  String get mediaKey;
  @override
  @JsonKey(name: 'media_results')
  MediaResults get mediaResults;
  @override
  @JsonKey(name: 'media_url_https')
  String get mediaUrlHttps;
  @override
  @JsonKey(name: 'original_info')
  MediaOriginalInfo get originalInfo;
  @override
  @JsonKey(name: 'sensitive_media_warning')
  SensitiveMediaWarning get sensitiveMediaWarning;
  @override
  MediaSizes get sizes;
  @override
  @JsonKey(name: 'source_status_id_str')
  String get sourceStatusIdStr;
  @override
  @JsonKey(name: 'source_user_id_str')
  String get sourceUserIdStr;
  @override
  MediaType get type;
  @override
  String get url;
  @override
  @JsonKey(name: 'video_info')
  MediaVideoInfo get videoInfo;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
