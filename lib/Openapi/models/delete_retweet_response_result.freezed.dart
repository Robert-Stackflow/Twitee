// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_retweet_response_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteRetweetResponseResult _$DeleteRetweetResponseResultFromJson(
    Map<String, dynamic> json) {
  return _DeleteRetweetResponseResult.fromJson(json);
}

/// @nodoc
mixin _$DeleteRetweetResponseResult {
  @JsonKey(name: 'retweet_results')
  DeleteRetweet get retweetResults => throw _privateConstructorUsedError;

  /// Serializes this DeleteRetweetResponseResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteRetweetResponseResultCopyWith<DeleteRetweetResponseResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRetweetResponseResultCopyWith<$Res> {
  factory $DeleteRetweetResponseResultCopyWith(
          DeleteRetweetResponseResult value,
          $Res Function(DeleteRetweetResponseResult) then) =
      _$DeleteRetweetResponseResultCopyWithImpl<$Res,
          DeleteRetweetResponseResult>;
  @useResult
  $Res call({@JsonKey(name: 'retweet_results') DeleteRetweet retweetResults});

  $DeleteRetweetCopyWith<$Res> get retweetResults;
}

/// @nodoc
class _$DeleteRetweetResponseResultCopyWithImpl<$Res,
        $Val extends DeleteRetweetResponseResult>
    implements $DeleteRetweetResponseResultCopyWith<$Res> {
  _$DeleteRetweetResponseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteRetweetResponseResult
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
              as DeleteRetweet,
    ) as $Val);
  }

  /// Create a copy of DeleteRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteRetweetCopyWith<$Res> get retweetResults {
    return $DeleteRetweetCopyWith<$Res>(_value.retweetResults, (value) {
      return _then(_value.copyWith(retweetResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteRetweetResponseResultImplCopyWith<$Res>
    implements $DeleteRetweetResponseResultCopyWith<$Res> {
  factory _$$DeleteRetweetResponseResultImplCopyWith(
          _$DeleteRetweetResponseResultImpl value,
          $Res Function(_$DeleteRetweetResponseResultImpl) then) =
      __$$DeleteRetweetResponseResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'retweet_results') DeleteRetweet retweetResults});

  @override
  $DeleteRetweetCopyWith<$Res> get retweetResults;
}

/// @nodoc
class __$$DeleteRetweetResponseResultImplCopyWithImpl<$Res>
    extends _$DeleteRetweetResponseResultCopyWithImpl<$Res,
        _$DeleteRetweetResponseResultImpl>
    implements _$$DeleteRetweetResponseResultImplCopyWith<$Res> {
  __$$DeleteRetweetResponseResultImplCopyWithImpl(
      _$DeleteRetweetResponseResultImpl _value,
      $Res Function(_$DeleteRetweetResponseResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retweetResults = null,
  }) {
    return _then(_$DeleteRetweetResponseResultImpl(
      retweetResults: null == retweetResults
          ? _value.retweetResults
          : retweetResults // ignore: cast_nullable_to_non_nullable
              as DeleteRetweet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteRetweetResponseResultImpl
    implements _DeleteRetweetResponseResult {
  const _$DeleteRetweetResponseResultImpl(
      {@JsonKey(name: 'retweet_results') required this.retweetResults});

  factory _$DeleteRetweetResponseResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteRetweetResponseResultImplFromJson(json);

  @override
  @JsonKey(name: 'retweet_results')
  final DeleteRetweet retweetResults;

  @override
  String toString() {
    return 'DeleteRetweetResponseResult(retweetResults: $retweetResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRetweetResponseResultImpl &&
            (identical(other.retweetResults, retweetResults) ||
                other.retweetResults == retweetResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, retweetResults);

  /// Create a copy of DeleteRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRetweetResponseResultImplCopyWith<_$DeleteRetweetResponseResultImpl>
      get copyWith => __$$DeleteRetweetResponseResultImplCopyWithImpl<
          _$DeleteRetweetResponseResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRetweetResponseResultImplToJson(
      this,
    );
  }
}

abstract class _DeleteRetweetResponseResult
    implements DeleteRetweetResponseResult {
  const factory _DeleteRetweetResponseResult(
          {@JsonKey(name: 'retweet_results')
          required final DeleteRetweet retweetResults}) =
      _$DeleteRetweetResponseResultImpl;

  factory _DeleteRetweetResponseResult.fromJson(Map<String, dynamic> json) =
      _$DeleteRetweetResponseResultImpl.fromJson;

  @override
  @JsonKey(name: 'retweet_results')
  DeleteRetweet get retweetResults;

  /// Create a copy of DeleteRetweetResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteRetweetResponseResultImplCopyWith<_$DeleteRetweetResponseResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
