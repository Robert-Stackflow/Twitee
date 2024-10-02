// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaResults _$MediaResultsFromJson(Map<String, dynamic> json) {
  return _MediaResults.fromJson(json);
}

/// @nodoc
mixin _$MediaResults {
  MediaResult get result => throw _privateConstructorUsedError;

  /// Serializes this MediaResults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaResultsCopyWith<MediaResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaResultsCopyWith<$Res> {
  factory $MediaResultsCopyWith(
          MediaResults value, $Res Function(MediaResults) then) =
      _$MediaResultsCopyWithImpl<$Res, MediaResults>;
  @useResult
  $Res call({MediaResult result});

  $MediaResultCopyWith<$Res> get result;
}

/// @nodoc
class _$MediaResultsCopyWithImpl<$Res, $Val extends MediaResults>
    implements $MediaResultsCopyWith<$Res> {
  _$MediaResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as MediaResult,
    ) as $Val);
  }

  /// Create a copy of MediaResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaResultCopyWith<$Res> get result {
    return $MediaResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaResultsImplCopyWith<$Res>
    implements $MediaResultsCopyWith<$Res> {
  factory _$$MediaResultsImplCopyWith(
          _$MediaResultsImpl value, $Res Function(_$MediaResultsImpl) then) =
      __$$MediaResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MediaResult result});

  @override
  $MediaResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$MediaResultsImplCopyWithImpl<$Res>
    extends _$MediaResultsCopyWithImpl<$Res, _$MediaResultsImpl>
    implements _$$MediaResultsImplCopyWith<$Res> {
  __$$MediaResultsImplCopyWithImpl(
      _$MediaResultsImpl _value, $Res Function(_$MediaResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$MediaResultsImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as MediaResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaResultsImpl implements _MediaResults {
  const _$MediaResultsImpl({required this.result});

  factory _$MediaResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaResultsImplFromJson(json);

  @override
  final MediaResult result;

  @override
  String toString() {
    return 'MediaResults(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaResultsImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of MediaResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaResultsImplCopyWith<_$MediaResultsImpl> get copyWith =>
      __$$MediaResultsImplCopyWithImpl<_$MediaResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaResultsImplToJson(
      this,
    );
  }
}

abstract class _MediaResults implements MediaResults {
  const factory _MediaResults({required final MediaResult result}) =
      _$MediaResultsImpl;

  factory _MediaResults.fromJson(Map<String, dynamic> json) =
      _$MediaResultsImpl.fromJson;

  @override
  MediaResult get result;

  /// Create a copy of MediaResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaResultsImplCopyWith<_$MediaResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
