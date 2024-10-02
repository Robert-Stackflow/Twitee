// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_retweet_response_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRetweetResponseResult _$CreateRetweetResponseResultFromJson(
    Map<String, dynamic> json) {
  return _CreateRetweetResponseResult.fromJson(json);
}

/// @nodoc
mixin _$CreateRetweetResponseResult {
  @JsonKey(name: 'retweet_results')
  CreateRetweet get retweetResults => throw _privateConstructorUsedError;

  /// Serializes this CreateRetweetResponseResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateRetweetResponseResultCopyWith<CreateRetweetResponseResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRetweetResponseResultCopyWith<$Res> {
  factory $CreateRetweetResponseResultCopyWith(
          CreateRetweetResponseResult value,
          $Res Function(CreateRetweetResponseResult) then) =
      _$CreateRetweetResponseResultCopyWithImpl<$Res,
          CreateRetweetResponseResult>;
  @useResult
  $Res call({@JsonKey(name: 'retweet_results') CreateRetweet retweetResults});

  $CreateRetweetCopyWith<$Res> get retweetResults;
}

/// @nodoc
class _$CreateRetweetResponseResultCopyWithImpl<$Res,
        $Val extends CreateRetweetResponseResult>
    implements $CreateRetweetResponseResultCopyWith<$Res> {
  _$CreateRetweetResponseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retweetResults = null,
  }) {
    return _then(_value.copyWith(
      retweetResults: null == retweetResults
          ? _value.retweetResults
          : retweetResults // ignore: cast_nullable_to_non_nullable
              as CreateRetweet,
    ) as $Val);
  }

  /// Create a copy of CreateRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateRetweetCopyWith<$Res> get retweetResults {
    return $CreateRetweetCopyWith<$Res>(_value.retweetResults, (value) {
      return _then(_value.copyWith(retweetResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateRetweetResponseResultImplCopyWith<$Res>
    implements $CreateRetweetResponseResultCopyWith<$Res> {
  factory _$$CreateRetweetResponseResultImplCopyWith(
          _$CreateRetweetResponseResultImpl value,
          $Res Function(_$CreateRetweetResponseResultImpl) then) =
      __$$CreateRetweetResponseResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'retweet_results') CreateRetweet retweetResults});

  @override
  $CreateRetweetCopyWith<$Res> get retweetResults;
}

/// @nodoc
class __$$CreateRetweetResponseResultImplCopyWithImpl<$Res>
    extends _$CreateRetweetResponseResultCopyWithImpl<$Res,
        _$CreateRetweetResponseResultImpl>
    implements _$$CreateRetweetResponseResultImplCopyWith<$Res> {
  __$$CreateRetweetResponseResultImplCopyWithImpl(
      _$CreateRetweetResponseResultImpl _value,
      $Res Function(_$CreateRetweetResponseResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retweetResults = null,
  }) {
    return _then(_$CreateRetweetResponseResultImpl(
      retweetResults: null == retweetResults
          ? _value.retweetResults
          : retweetResults // ignore: cast_nullable_to_non_nullable
              as CreateRetweet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRetweetResponseResultImpl
    implements _CreateRetweetResponseResult {
  const _$CreateRetweetResponseResultImpl(
      {@JsonKey(name: 'retweet_results') required this.retweetResults});

  factory _$CreateRetweetResponseResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateRetweetResponseResultImplFromJson(json);

  @override
  @JsonKey(name: 'retweet_results')
  final CreateRetweet retweetResults;

  @override
  String toString() {
    return 'CreateRetweetResponseResult(retweetResults: $retweetResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRetweetResponseResultImpl &&
            (identical(other.retweetResults, retweetResults) ||
                other.retweetResults == retweetResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, retweetResults);

  /// Create a copy of CreateRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRetweetResponseResultImplCopyWith<_$CreateRetweetResponseResultImpl>
      get copyWith => __$$CreateRetweetResponseResultImplCopyWithImpl<
          _$CreateRetweetResponseResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRetweetResponseResultImplToJson(
      this,
    );
  }
}

abstract class _CreateRetweetResponseResult
    implements CreateRetweetResponseResult {
  const factory _CreateRetweetResponseResult(
          {@JsonKey(name: 'retweet_results')
          required final CreateRetweet retweetResults}) =
      _$CreateRetweetResponseResultImpl;

  factory _CreateRetweetResponseResult.fromJson(Map<String, dynamic> json) =
      _$CreateRetweetResponseResultImpl.fromJson;

  @override
  @JsonKey(name: 'retweet_results')
  CreateRetweet get retweetResults;

  /// Create a copy of CreateRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRetweetResponseResultImplCopyWith<_$CreateRetweetResponseResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
