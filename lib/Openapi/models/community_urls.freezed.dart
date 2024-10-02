// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityUrls _$CommunityUrlsFromJson(Map<String, dynamic> json) {
  return _CommunityUrls.fromJson(json);
}

/// @nodoc
mixin _$CommunityUrls {
  CommunityUrlsPermalink get permalink => throw _privateConstructorUsedError;

  /// Serializes this CommunityUrls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityUrlsCopyWith<CommunityUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityUrlsCopyWith<$Res> {
  factory $CommunityUrlsCopyWith(
          CommunityUrls value, $Res Function(CommunityUrls) then) =
      _$CommunityUrlsCopyWithImpl<$Res, CommunityUrls>;
  @useResult
  $Res call({CommunityUrlsPermalink permalink});

  $CommunityUrlsPermalinkCopyWith<$Res> get permalink;
}

/// @nodoc
class _$CommunityUrlsCopyWithImpl<$Res, $Val extends CommunityUrls>
    implements $CommunityUrlsCopyWith<$Res> {
  _$CommunityUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permalink = null,
  }) {
    return _then(_value.copyWith(
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as CommunityUrlsPermalink,
    ) as $Val);
  }

  /// Create a copy of CommunityUrls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityUrlsPermalinkCopyWith<$Res> get permalink {
    return $CommunityUrlsPermalinkCopyWith<$Res>(_value.permalink, (value) {
      return _then(_value.copyWith(permalink: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommunityUrlsImplCopyWith<$Res>
    implements $CommunityUrlsCopyWith<$Res> {
  factory _$$CommunityUrlsImplCopyWith(
          _$CommunityUrlsImpl value, $Res Function(_$CommunityUrlsImpl) then) =
      __$$CommunityUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommunityUrlsPermalink permalink});

  @override
  $CommunityUrlsPermalinkCopyWith<$Res> get permalink;
}

/// @nodoc
class __$$CommunityUrlsImplCopyWithImpl<$Res>
    extends _$CommunityUrlsCopyWithImpl<$Res, _$CommunityUrlsImpl>
    implements _$$CommunityUrlsImplCopyWith<$Res> {
  __$$CommunityUrlsImplCopyWithImpl(
      _$CommunityUrlsImpl _value, $Res Function(_$CommunityUrlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permalink = null,
  }) {
    return _then(_$CommunityUrlsImpl(
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as CommunityUrlsPermalink,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityUrlsImpl implements _CommunityUrls {
  const _$CommunityUrlsImpl({required this.permalink});

  factory _$CommunityUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityUrlsImplFromJson(json);

  @override
  final CommunityUrlsPermalink permalink;

  @override
  String toString() {
    return 'CommunityUrls(permalink: $permalink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityUrlsImpl &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, permalink);

  /// Create a copy of CommunityUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityUrlsImplCopyWith<_$CommunityUrlsImpl> get copyWith =>
      __$$CommunityUrlsImplCopyWithImpl<_$CommunityUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityUrlsImplToJson(
      this,
    );
  }
}

abstract class _CommunityUrls implements CommunityUrls {
  const factory _CommunityUrls(
      {required final CommunityUrlsPermalink permalink}) = _$CommunityUrlsImpl;

  factory _CommunityUrls.fromJson(Map<String, dynamic> json) =
      _$CommunityUrlsImpl.fromJson;

  @override
  CommunityUrlsPermalink get permalink;

  /// Create a copy of CommunityUrls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityUrlsImplCopyWith<_$CommunityUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
