// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_cover_media_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleCoverMediaInfo _$ArticleCoverMediaInfoFromJson(
    Map<String, dynamic> json) {
  return _ArticleCoverMediaInfo.fromJson(json);
}

/// @nodoc
mixin _$ArticleCoverMediaInfo {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  @JsonKey(name: 'color_info')
  ArticleCoverMediaColorInfo get colorInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'original_img_height')
  int get originalImgHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_img_url')
  String get originalImgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_img_width')
  int get originalImgWidth => throw _privateConstructorUsedError;

  /// Serializes this ArticleCoverMediaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleCoverMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCoverMediaInfoCopyWith<ArticleCoverMediaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCoverMediaInfoCopyWith<$Res> {
  factory $ArticleCoverMediaInfoCopyWith(ArticleCoverMediaInfo value,
          $Res Function(ArticleCoverMediaInfo) then) =
      _$ArticleCoverMediaInfoCopyWithImpl<$Res, ArticleCoverMediaInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      @JsonKey(name: 'color_info') ArticleCoverMediaColorInfo colorInfo,
      @JsonKey(name: 'original_img_height') int originalImgHeight,
      @JsonKey(name: 'original_img_url') String originalImgUrl,
      @JsonKey(name: 'original_img_width') int originalImgWidth});

  $ArticleCoverMediaColorInfoCopyWith<$Res> get colorInfo;
}

/// @nodoc
class _$ArticleCoverMediaInfoCopyWithImpl<$Res,
        $Val extends ArticleCoverMediaInfo>
    implements $ArticleCoverMediaInfoCopyWith<$Res> {
  _$ArticleCoverMediaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleCoverMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? colorInfo = null,
    Object? originalImgHeight = null,
    Object? originalImgUrl = null,
    Object? originalImgWidth = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      colorInfo: null == colorInfo
          ? _value.colorInfo
          : colorInfo // ignore: cast_nullable_to_non_nullable
              as ArticleCoverMediaColorInfo,
      originalImgHeight: null == originalImgHeight
          ? _value.originalImgHeight
          : originalImgHeight // ignore: cast_nullable_to_non_nullable
              as int,
      originalImgUrl: null == originalImgUrl
          ? _value.originalImgUrl
          : originalImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      originalImgWidth: null == originalImgWidth
          ? _value.originalImgWidth
          : originalImgWidth // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ArticleCoverMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleCoverMediaColorInfoCopyWith<$Res> get colorInfo {
    return $ArticleCoverMediaColorInfoCopyWith<$Res>(_value.colorInfo, (value) {
      return _then(_value.copyWith(colorInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleCoverMediaInfoImplCopyWith<$Res>
    implements $ArticleCoverMediaInfoCopyWith<$Res> {
  factory _$$ArticleCoverMediaInfoImplCopyWith(
          _$ArticleCoverMediaInfoImpl value,
          $Res Function(_$ArticleCoverMediaInfoImpl) then) =
      __$$ArticleCoverMediaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      @JsonKey(name: 'color_info') ArticleCoverMediaColorInfo colorInfo,
      @JsonKey(name: 'original_img_height') int originalImgHeight,
      @JsonKey(name: 'original_img_url') String originalImgUrl,
      @JsonKey(name: 'original_img_width') int originalImgWidth});

  @override
  $ArticleCoverMediaColorInfoCopyWith<$Res> get colorInfo;
}

/// @nodoc
class __$$ArticleCoverMediaInfoImplCopyWithImpl<$Res>
    extends _$ArticleCoverMediaInfoCopyWithImpl<$Res,
        _$ArticleCoverMediaInfoImpl>
    implements _$$ArticleCoverMediaInfoImplCopyWith<$Res> {
  __$$ArticleCoverMediaInfoImplCopyWithImpl(_$ArticleCoverMediaInfoImpl _value,
      $Res Function(_$ArticleCoverMediaInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleCoverMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? colorInfo = null,
    Object? originalImgHeight = null,
    Object? originalImgUrl = null,
    Object? originalImgWidth = null,
  }) {
    return _then(_$ArticleCoverMediaInfoImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      colorInfo: null == colorInfo
          ? _value.colorInfo
          : colorInfo // ignore: cast_nullable_to_non_nullable
              as ArticleCoverMediaColorInfo,
      originalImgHeight: null == originalImgHeight
          ? _value.originalImgHeight
          : originalImgHeight // ignore: cast_nullable_to_non_nullable
              as int,
      originalImgUrl: null == originalImgUrl
          ? _value.originalImgUrl
          : originalImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      originalImgWidth: null == originalImgWidth
          ? _value.originalImgWidth
          : originalImgWidth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleCoverMediaInfoImpl implements _ArticleCoverMediaInfo {
  const _$ArticleCoverMediaInfoImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      @JsonKey(name: 'color_info') required this.colorInfo,
      @JsonKey(name: 'original_img_height') required this.originalImgHeight,
      @JsonKey(name: 'original_img_url') required this.originalImgUrl,
      @JsonKey(name: 'original_img_width') required this.originalImgWidth});

  factory _$ArticleCoverMediaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleCoverMediaInfoImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  @JsonKey(name: 'color_info')
  final ArticleCoverMediaColorInfo colorInfo;
  @override
  @JsonKey(name: 'original_img_height')
  final int originalImgHeight;
  @override
  @JsonKey(name: 'original_img_url')
  final String originalImgUrl;
  @override
  @JsonKey(name: 'original_img_width')
  final int originalImgWidth;

  @override
  String toString() {
    return 'ArticleCoverMediaInfo(privateTypename: $privateTypename, colorInfo: $colorInfo, originalImgHeight: $originalImgHeight, originalImgUrl: $originalImgUrl, originalImgWidth: $originalImgWidth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleCoverMediaInfoImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.colorInfo, colorInfo) ||
                other.colorInfo == colorInfo) &&
            (identical(other.originalImgHeight, originalImgHeight) ||
                other.originalImgHeight == originalImgHeight) &&
            (identical(other.originalImgUrl, originalImgUrl) ||
                other.originalImgUrl == originalImgUrl) &&
            (identical(other.originalImgWidth, originalImgWidth) ||
                other.originalImgWidth == originalImgWidth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, colorInfo,
      originalImgHeight, originalImgUrl, originalImgWidth);

  /// Create a copy of ArticleCoverMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleCoverMediaInfoImplCopyWith<_$ArticleCoverMediaInfoImpl>
      get copyWith => __$$ArticleCoverMediaInfoImplCopyWithImpl<
          _$ArticleCoverMediaInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleCoverMediaInfoImplToJson(
      this,
    );
  }
}

abstract class _ArticleCoverMediaInfo implements ArticleCoverMediaInfo {
  const factory _ArticleCoverMediaInfo(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      @JsonKey(name: 'color_info')
      required final ArticleCoverMediaColorInfo colorInfo,
      @JsonKey(name: 'original_img_height')
      required final int originalImgHeight,
      @JsonKey(name: 'original_img_url') required final String originalImgUrl,
      @JsonKey(name: 'original_img_width')
      required final int originalImgWidth}) = _$ArticleCoverMediaInfoImpl;

  factory _ArticleCoverMediaInfo.fromJson(Map<String, dynamic> json) =
      _$ArticleCoverMediaInfoImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  @JsonKey(name: 'color_info')
  ArticleCoverMediaColorInfo get colorInfo;
  @override
  @JsonKey(name: 'original_img_height')
  int get originalImgHeight;
  @override
  @JsonKey(name: 'original_img_url')
  String get originalImgUrl;
  @override
  @JsonKey(name: 'original_img_width')
  int get originalImgWidth;

  /// Create a copy of ArticleCoverMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleCoverMediaInfoImplCopyWith<_$ArticleCoverMediaInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
