// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleResults _$ArticleResultsFromJson(Map<String, dynamic> json) {
  return _ArticleResults.fromJson(json);
}

/// @nodoc
mixin _$ArticleResults {
  ArticleResult get result => throw _privateConstructorUsedError;

  /// Serializes this ArticleResults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleResultsCopyWith<ArticleResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleResultsCopyWith<$Res> {
  factory $ArticleResultsCopyWith(
          ArticleResults value, $Res Function(ArticleResults) then) =
      _$ArticleResultsCopyWithImpl<$Res, ArticleResults>;
  @useResult
  $Res call({ArticleResult result});

  $ArticleResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ArticleResultsCopyWithImpl<$Res, $Val extends ArticleResults>
    implements $ArticleResultsCopyWith<$Res> {
  _$ArticleResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleResults
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
              as ArticleResult,
    ) as $Val);
  }

  /// Create a copy of ArticleResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleResultCopyWith<$Res> get result {
    return $ArticleResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleResultsImplCopyWith<$Res>
    implements $ArticleResultsCopyWith<$Res> {
  factory _$$ArticleResultsImplCopyWith(_$ArticleResultsImpl value,
          $Res Function(_$ArticleResultsImpl) then) =
      __$$ArticleResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ArticleResult result});

  @override
  $ArticleResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$ArticleResultsImplCopyWithImpl<$Res>
    extends _$ArticleResultsCopyWithImpl<$Res, _$ArticleResultsImpl>
    implements _$$ArticleResultsImplCopyWith<$Res> {
  __$$ArticleResultsImplCopyWithImpl(
      _$ArticleResultsImpl _value, $Res Function(_$ArticleResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ArticleResultsImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ArticleResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleResultsImpl implements _ArticleResults {
  const _$ArticleResultsImpl({required this.result});

  factory _$ArticleResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleResultsImplFromJson(json);

  @override
  final ArticleResult result;

  @override
  String toString() {
    return 'ArticleResults(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleResultsImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of ArticleResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleResultsImplCopyWith<_$ArticleResultsImpl> get copyWith =>
      __$$ArticleResultsImplCopyWithImpl<_$ArticleResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleResultsImplToJson(
      this,
    );
  }
}

abstract class _ArticleResults implements ArticleResults {
  const factory _ArticleResults({required final ArticleResult result}) =
      _$ArticleResultsImpl;

  factory _ArticleResults.fromJson(Map<String, dynamic> json) =
      _$ArticleResultsImpl.fromJson;

  @override
  ArticleResult get result;

  /// Create a copy of ArticleResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleResultsImplCopyWith<_$ArticleResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
