// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_latest_tweets_timeline_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListLatestTweetsTimelineResponse _$ListLatestTweetsTimelineResponseFromJson(
    Map<String, dynamic> json) {
  return _ListLatestTweetsTimelineResponse.fromJson(json);
}

/// @nodoc
mixin _$ListLatestTweetsTimelineResponse {
  ListTweetsTimelineData get data => throw _privateConstructorUsedError;

  /// Serializes this ListLatestTweetsTimelineResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListLatestTweetsTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListLatestTweetsTimelineResponseCopyWith<ListLatestTweetsTimelineResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListLatestTweetsTimelineResponseCopyWith<$Res> {
  factory $ListLatestTweetsTimelineResponseCopyWith(
          ListLatestTweetsTimelineResponse value,
          $Res Function(ListLatestTweetsTimelineResponse) then) =
      _$ListLatestTweetsTimelineResponseCopyWithImpl<$Res,
          ListLatestTweetsTimelineResponse>;
  @useResult
  $Res call({ListTweetsTimelineData data});

  $ListTweetsTimelineDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ListLatestTweetsTimelineResponseCopyWithImpl<$Res,
        $Val extends ListLatestTweetsTimelineResponse>
    implements $ListLatestTweetsTimelineResponseCopyWith<$Res> {
  _$ListLatestTweetsTimelineResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListLatestTweetsTimelineResponse
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
              as ListTweetsTimelineData,
    ) as $Val);
  }

  /// Create a copy of ListLatestTweetsTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListTweetsTimelineDataCopyWith<$Res> get data {
    return $ListTweetsTimelineDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListLatestTweetsTimelineResponseImplCopyWith<$Res>
    implements $ListLatestTweetsTimelineResponseCopyWith<$Res> {
  factory _$$ListLatestTweetsTimelineResponseImplCopyWith(
          _$ListLatestTweetsTimelineResponseImpl value,
          $Res Function(_$ListLatestTweetsTimelineResponseImpl) then) =
      __$$ListLatestTweetsTimelineResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTweetsTimelineData data});

  @override
  $ListTweetsTimelineDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ListLatestTweetsTimelineResponseImplCopyWithImpl<$Res>
    extends _$ListLatestTweetsTimelineResponseCopyWithImpl<$Res,
        _$ListLatestTweetsTimelineResponseImpl>
    implements _$$ListLatestTweetsTimelineResponseImplCopyWith<$Res> {
  __$$ListLatestTweetsTimelineResponseImplCopyWithImpl(
      _$ListLatestTweetsTimelineResponseImpl _value,
      $Res Function(_$ListLatestTweetsTimelineResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListLatestTweetsTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ListLatestTweetsTimelineResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ListTweetsTimelineData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListLatestTweetsTimelineResponseImpl
    implements _ListLatestTweetsTimelineResponse {
  const _$ListLatestTweetsTimelineResponseImpl({required this.data});

  factory _$ListLatestTweetsTimelineResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ListLatestTweetsTimelineResponseImplFromJson(json);

  @override
  final ListTweetsTimelineData data;

  @override
  String toString() {
    return 'ListLatestTweetsTimelineResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListLatestTweetsTimelineResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ListLatestTweetsTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListLatestTweetsTimelineResponseImplCopyWith<
          _$ListLatestTweetsTimelineResponseImpl>
      get copyWith => __$$ListLatestTweetsTimelineResponseImplCopyWithImpl<
          _$ListLatestTweetsTimelineResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListLatestTweetsTimelineResponseImplToJson(
      this,
    );
  }
}

abstract class _ListLatestTweetsTimelineResponse
    implements ListLatestTweetsTimelineResponse {
  const factory _ListLatestTweetsTimelineResponse(
          {required final ListTweetsTimelineData data}) =
      _$ListLatestTweetsTimelineResponseImpl;

  factory _ListLatestTweetsTimelineResponse.fromJson(
          Map<String, dynamic> json) =
      _$ListLatestTweetsTimelineResponseImpl.fromJson;

  @override
  ListTweetsTimelineData get data;

  /// Create a copy of ListLatestTweetsTimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListLatestTweetsTimelineResponseImplCopyWith<
          _$ListLatestTweetsTimelineResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
