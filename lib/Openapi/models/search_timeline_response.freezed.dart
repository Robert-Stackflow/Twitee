// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_timeline_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchTimelineResponse _$SearchTimelineResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchTimelineResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchTimelineResponse {
  SearchTimelineData get data => throw _privateConstructorUsedError;

  /// Serializes this SearchTimelineResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchTimelineResponseCopyWith<SearchTimelineResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTimelineResponseCopyWith<$Res> {
  factory $SearchTimelineResponseCopyWith(SearchTimelineResponse value,
          $Res Function(SearchTimelineResponse) then) =
      _$SearchTimelineResponseCopyWithImpl<$Res, SearchTimelineResponse>;
  @useResult
  $Res call({SearchTimelineData data});

  $SearchTimelineDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SearchTimelineResponseCopyWithImpl<$Res,
        $Val extends SearchTimelineResponse>
    implements $SearchTimelineResponseCopyWith<$Res> {
  _$SearchTimelineResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchTimelineData,
    ) as $Val);
  }

  /// Create a copy of SearchTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchTimelineDataCopyWith<$Res> get data {
    return $SearchTimelineDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchTimelineResponseImplCopyWith<$Res>
    implements $SearchTimelineResponseCopyWith<$Res> {
  factory _$$SearchTimelineResponseImplCopyWith(
          _$SearchTimelineResponseImpl value,
          $Res Function(_$SearchTimelineResponseImpl) then) =
      __$$SearchTimelineResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchTimelineData data});

  @override
  $SearchTimelineDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SearchTimelineResponseImplCopyWithImpl<$Res>
    extends _$SearchTimelineResponseCopyWithImpl<$Res,
        _$SearchTimelineResponseImpl>
    implements _$$SearchTimelineResponseImplCopyWith<$Res> {
  __$$SearchTimelineResponseImplCopyWithImpl(
      _$SearchTimelineResponseImpl _value,
      $Res Function(_$SearchTimelineResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchTimelineResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchTimelineData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchTimelineResponseImpl implements _SearchTimelineResponse {
  const _$SearchTimelineResponseImpl({required this.data});

  factory _$SearchTimelineResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchTimelineResponseImplFromJson(json);

  @override
  final SearchTimelineData data;

  @override
  String toString() {
    return 'SearchTimelineResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTimelineResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SearchTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTimelineResponseImplCopyWith<_$SearchTimelineResponseImpl>
      get copyWith => __$$SearchTimelineResponseImplCopyWithImpl<
          _$SearchTimelineResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchTimelineResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchTimelineResponse implements SearchTimelineResponse {
  const factory _SearchTimelineResponse(
      {required final SearchTimelineData data}) = _$SearchTimelineResponseImpl;

  factory _SearchTimelineResponse.fromJson(Map<String, dynamic> json) =
      _$SearchTimelineResponseImpl.fromJson;

  @override
  SearchTimelineData get data;

  /// Create a copy of SearchTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTimelineResponseImplCopyWith<_$SearchTimelineResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
