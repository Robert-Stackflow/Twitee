// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_visibility_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaVisibilityResults _$MediaVisibilityResultsFromJson(
    Map<String, dynamic> json) {
  return _MediaVisibilityResults.fromJson(json);
}

/// @nodoc
mixin _$MediaVisibilityResults {
  @JsonKey(name: 'blurred_image_interstitial')
  MediaVisibilityResultsBlurredImageInterstitial get blurredImageInterstitial =>
      throw _privateConstructorUsedError;

  /// Serializes this MediaVisibilityResults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaVisibilityResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaVisibilityResultsCopyWith<MediaVisibilityResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaVisibilityResultsCopyWith<$Res> {
  factory $MediaVisibilityResultsCopyWith(MediaVisibilityResults value,
          $Res Function(MediaVisibilityResults) then) =
      _$MediaVisibilityResultsCopyWithImpl<$Res, MediaVisibilityResults>;
  @useResult
  $Res call(
      {@JsonKey(name: 'blurred_image_interstitial')
      MediaVisibilityResultsBlurredImageInterstitial blurredImageInterstitial});

  $MediaVisibilityResultsBlurredImageInterstitialCopyWith<$Res>
      get blurredImageInterstitial;
}

/// @nodoc
class _$MediaVisibilityResultsCopyWithImpl<$Res,
        $Val extends MediaVisibilityResults>
    implements $MediaVisibilityResultsCopyWith<$Res> {
  _$MediaVisibilityResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaVisibilityResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blurredImageInterstitial = null,
  }) {
    return _then(_value.copyWith(
      blurredImageInterstitial: null == blurredImageInterstitial
          ? _value.blurredImageInterstitial
          : blurredImageInterstitial // ignore: cast_nullable_to_non_nullable
              as MediaVisibilityResultsBlurredImageInterstitial,
    ) as $Val);
  }

  /// Create a copy of MediaVisibilityResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaVisibilityResultsBlurredImageInterstitialCopyWith<$Res>
      get blurredImageInterstitial {
    return $MediaVisibilityResultsBlurredImageInterstitialCopyWith<$Res>(
        _value.blurredImageInterstitial, (value) {
      return _then(_value.copyWith(blurredImageInterstitial: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaVisibilityResultsImplCopyWith<$Res>
    implements $MediaVisibilityResultsCopyWith<$Res> {
  factory _$$MediaVisibilityResultsImplCopyWith(
          _$MediaVisibilityResultsImpl value,
          $Res Function(_$MediaVisibilityResultsImpl) then) =
      __$$MediaVisibilityResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'blurred_image_interstitial')
      MediaVisibilityResultsBlurredImageInterstitial blurredImageInterstitial});

  @override
  $MediaVisibilityResultsBlurredImageInterstitialCopyWith<$Res>
      get blurredImageInterstitial;
}

/// @nodoc
class __$$MediaVisibilityResultsImplCopyWithImpl<$Res>
    extends _$MediaVisibilityResultsCopyWithImpl<$Res,
        _$MediaVisibilityResultsImpl>
    implements _$$MediaVisibilityResultsImplCopyWith<$Res> {
  __$$MediaVisibilityResultsImplCopyWithImpl(
      _$MediaVisibilityResultsImpl _value,
      $Res Function(_$MediaVisibilityResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaVisibilityResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blurredImageInterstitial = null,
  }) {
    return _then(_$MediaVisibilityResultsImpl(
      blurredImageInterstitial: null == blurredImageInterstitial
          ? _value.blurredImageInterstitial
          : blurredImageInterstitial // ignore: cast_nullable_to_non_nullable
              as MediaVisibilityResultsBlurredImageInterstitial,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaVisibilityResultsImpl implements _MediaVisibilityResults {
  const _$MediaVisibilityResultsImpl(
      {@JsonKey(name: 'blurred_image_interstitial')
      required this.blurredImageInterstitial});

  factory _$MediaVisibilityResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaVisibilityResultsImplFromJson(json);

  @override
  @JsonKey(name: 'blurred_image_interstitial')
  final MediaVisibilityResultsBlurredImageInterstitial blurredImageInterstitial;

  @override
  String toString() {
    return 'MediaVisibilityResults(blurredImageInterstitial: $blurredImageInterstitial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaVisibilityResultsImpl &&
            (identical(
                    other.blurredImageInterstitial, blurredImageInterstitial) ||
                other.blurredImageInterstitial == blurredImageInterstitial));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, blurredImageInterstitial);

  /// Create a copy of MediaVisibilityResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaVisibilityResultsImplCopyWith<_$MediaVisibilityResultsImpl>
      get copyWith => __$$MediaVisibilityResultsImplCopyWithImpl<
          _$MediaVisibilityResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaVisibilityResultsImplToJson(
      this,
    );
  }
}

abstract class _MediaVisibilityResults implements MediaVisibilityResults {
  const factory _MediaVisibilityResults(
      {@JsonKey(name: 'blurred_image_interstitial')
      required final MediaVisibilityResultsBlurredImageInterstitial
          blurredImageInterstitial}) = _$MediaVisibilityResultsImpl;

  factory _MediaVisibilityResults.fromJson(Map<String, dynamic> json) =
      _$MediaVisibilityResultsImpl.fromJson;

  @override
  @JsonKey(name: 'blurred_image_interstitial')
  MediaVisibilityResultsBlurredImageInterstitial get blurredImageInterstitial;

  /// Create a copy of MediaVisibilityResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaVisibilityResultsImplCopyWith<_$MediaVisibilityResultsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
