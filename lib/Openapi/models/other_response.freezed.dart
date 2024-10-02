// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtherResponse _$OtherResponseFromJson(Map<String, dynamic> json) {
  return _OtherResponse.fromJson(json);
}

/// @nodoc
mixin _$OtherResponse {
  @JsonKey(name: 'Session')
  Session get session => throw _privateConstructorUsedError;

  /// Serializes this OtherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtherResponseCopyWith<OtherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherResponseCopyWith<$Res> {
  factory $OtherResponseCopyWith(
          OtherResponse value, $Res Function(OtherResponse) then) =
      _$OtherResponseCopyWithImpl<$Res, OtherResponse>;
  @useResult
  $Res call({@JsonKey(name: 'Session') Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class _$OtherResponseCopyWithImpl<$Res, $Val extends OtherResponse>
    implements $OtherResponseCopyWith<$Res> {
  _$OtherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_value.copyWith(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ) as $Val);
  }

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherResponseImplCopyWith<$Res>
    implements $OtherResponseCopyWith<$Res> {
  factory _$$OtherResponseImplCopyWith(
          _$OtherResponseImpl value, $Res Function(_$OtherResponseImpl) then) =
      __$$OtherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Session') Session session});

  @override
  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$OtherResponseImplCopyWithImpl<$Res>
    extends _$OtherResponseCopyWithImpl<$Res, _$OtherResponseImpl>
    implements _$$OtherResponseImplCopyWith<$Res> {
  __$$OtherResponseImplCopyWithImpl(
      _$OtherResponseImpl _value, $Res Function(_$OtherResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$OtherResponseImpl(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherResponseImpl implements _OtherResponse {
  const _$OtherResponseImpl({@JsonKey(name: 'Session') required this.session});

  factory _$OtherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Session')
  final Session session;

  @override
  String toString() {
    return 'OtherResponse(session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherResponseImpl &&
            (identical(other.session, session) || other.session == session));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, session);

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherResponseImplCopyWith<_$OtherResponseImpl> get copyWith =>
      __$$OtherResponseImplCopyWithImpl<_$OtherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherResponseImplToJson(
      this,
    );
  }
}

abstract class _OtherResponse implements OtherResponse {
  const factory _OtherResponse(
          {@JsonKey(name: 'Session') required final Session session}) =
      _$OtherResponseImpl;

  factory _OtherResponse.fromJson(Map<String, dynamic> json) =
      _$OtherResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Session')
  Session get session;

  /// Create a copy of OtherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherResponseImplCopyWith<_$OtherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
