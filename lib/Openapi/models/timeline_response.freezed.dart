// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineResponse _$TimelineResponseFromJson(Map<String, dynamic> json) {
  return _TimelineResponse.fromJson(json);
}

/// @nodoc
mixin _$TimelineResponse {
  HomeTimelineResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this TimelineResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineResponseCopyWith<TimelineResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineResponseCopyWith<$Res> {
  factory $TimelineResponseCopyWith(
          TimelineResponse value, $Res Function(TimelineResponse) then) =
      _$TimelineResponseCopyWithImpl<$Res, TimelineResponse>;
  @useResult
  $Res call({HomeTimelineResponseData data});

  $HomeTimelineResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TimelineResponseCopyWithImpl<$Res, $Val extends TimelineResponse>
    implements $TimelineResponseCopyWith<$Res> {
  _$TimelineResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineResponse
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
              as HomeTimelineResponseData,
    ) as $Val);
  }

  /// Create a copy of TimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeTimelineResponseDataCopyWith<$Res> get data {
    return $HomeTimelineResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineResponseImplCopyWith<$Res>
    implements $TimelineResponseCopyWith<$Res> {
  factory _$$TimelineResponseImplCopyWith(_$TimelineResponseImpl value,
          $Res Function(_$TimelineResponseImpl) then) =
      __$$TimelineResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeTimelineResponseData data});

  @override
  $HomeTimelineResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TimelineResponseImplCopyWithImpl<$Res>
    extends _$TimelineResponseCopyWithImpl<$Res, _$TimelineResponseImpl>
    implements _$$TimelineResponseImplCopyWith<$Res> {
  __$$TimelineResponseImplCopyWithImpl(_$TimelineResponseImpl _value,
      $Res Function(_$TimelineResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TimelineResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeTimelineResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineResponseImpl implements _TimelineResponse {
  const _$TimelineResponseImpl({required this.data});

  factory _$TimelineResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineResponseImplFromJson(json);

  @override
  final HomeTimelineResponseData data;

  @override
  String toString() {
    return 'TimelineResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineResponseImplCopyWith<_$TimelineResponseImpl> get copyWith =>
      __$$TimelineResponseImplCopyWithImpl<_$TimelineResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineResponseImplToJson(
      this,
    );
  }
}

abstract class _TimelineResponse implements TimelineResponse {
  const factory _TimelineResponse(
      {required final HomeTimelineResponseData data}) = _$TimelineResponseImpl;

  factory _TimelineResponse.fromJson(Map<String, dynamic> json) =
      _$TimelineResponseImpl.fromJson;

  @override
  HomeTimelineResponseData get data;

  /// Create a copy of TimelineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineResponseImplCopyWith<_$TimelineResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
