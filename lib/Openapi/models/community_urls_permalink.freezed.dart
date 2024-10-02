// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_urls_permalink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityUrlsPermalink _$CommunityUrlsPermalinkFromJson(
    Map<String, dynamic> json) {
  return _CommunityUrlsPermalink.fromJson(json);
}

/// @nodoc
mixin _$CommunityUrlsPermalink {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this CommunityUrlsPermalink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityUrlsPermalink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityUrlsPermalinkCopyWith<CommunityUrlsPermalink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityUrlsPermalinkCopyWith<$Res> {
  factory $CommunityUrlsPermalinkCopyWith(CommunityUrlsPermalink value,
          $Res Function(CommunityUrlsPermalink) then) =
      _$CommunityUrlsPermalinkCopyWithImpl<$Res, CommunityUrlsPermalink>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$CommunityUrlsPermalinkCopyWithImpl<$Res,
        $Val extends CommunityUrlsPermalink>
    implements $CommunityUrlsPermalinkCopyWith<$Res> {
  _$CommunityUrlsPermalinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityUrlsPermalink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityUrlsPermalinkImplCopyWith<$Res>
    implements $CommunityUrlsPermalinkCopyWith<$Res> {
  factory _$$CommunityUrlsPermalinkImplCopyWith(
          _$CommunityUrlsPermalinkImpl value,
          $Res Function(_$CommunityUrlsPermalinkImpl) then) =
      __$$CommunityUrlsPermalinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$CommunityUrlsPermalinkImplCopyWithImpl<$Res>
    extends _$CommunityUrlsPermalinkCopyWithImpl<$Res,
        _$CommunityUrlsPermalinkImpl>
    implements _$$CommunityUrlsPermalinkImplCopyWith<$Res> {
  __$$CommunityUrlsPermalinkImplCopyWithImpl(
      _$CommunityUrlsPermalinkImpl _value,
      $Res Function(_$CommunityUrlsPermalinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityUrlsPermalink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$CommunityUrlsPermalinkImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityUrlsPermalinkImpl implements _CommunityUrlsPermalink {
  const _$CommunityUrlsPermalinkImpl({required this.url});

  factory _$CommunityUrlsPermalinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityUrlsPermalinkImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'CommunityUrlsPermalink(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityUrlsPermalinkImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of CommunityUrlsPermalink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityUrlsPermalinkImplCopyWith<_$CommunityUrlsPermalinkImpl>
      get copyWith => __$$CommunityUrlsPermalinkImplCopyWithImpl<
          _$CommunityUrlsPermalinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityUrlsPermalinkImplToJson(
      this,
    );
  }
}

abstract class _CommunityUrlsPermalink implements CommunityUrlsPermalink {
  const factory _CommunityUrlsPermalink({required final String url}) =
      _$CommunityUrlsPermalinkImpl;

  factory _CommunityUrlsPermalink.fromJson(Map<String, dynamic> json) =
      _$CommunityUrlsPermalinkImpl.fromJson;

  @override
  String get url;

  /// Create a copy of CommunityUrlsPermalink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityUrlsPermalinkImplCopyWith<_$CommunityUrlsPermalinkImpl>
      get copyWith => throw _privateConstructorUsedError;
}
