// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_join_requests_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityJoinRequestsResult _$CommunityJoinRequestsResultFromJson(
    Map<String, dynamic> json) {
  return _CommunityJoinRequestsResult.fromJson(json);
}

/// @nodoc
mixin _$CommunityJoinRequestsResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;

  /// Serializes this CommunityJoinRequestsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityJoinRequestsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityJoinRequestsResultCopyWith<CommunityJoinRequestsResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityJoinRequestsResultCopyWith<$Res> {
  factory $CommunityJoinRequestsResultCopyWith(
          CommunityJoinRequestsResult value,
          $Res Function(CommunityJoinRequestsResult) then) =
      _$CommunityJoinRequestsResultCopyWithImpl<$Res,
          CommunityJoinRequestsResult>;
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class _$CommunityJoinRequestsResultCopyWithImpl<$Res,
        $Val extends CommunityJoinRequestsResult>
    implements $CommunityJoinRequestsResultCopyWith<$Res> {
  _$CommunityJoinRequestsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityJoinRequestsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityJoinRequestsResultImplCopyWith<$Res>
    implements $CommunityJoinRequestsResultCopyWith<$Res> {
  factory _$$CommunityJoinRequestsResultImplCopyWith(
          _$CommunityJoinRequestsResultImpl value,
          $Res Function(_$CommunityJoinRequestsResultImpl) then) =
      __$$CommunityJoinRequestsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class __$$CommunityJoinRequestsResultImplCopyWithImpl<$Res>
    extends _$CommunityJoinRequestsResultCopyWithImpl<$Res,
        _$CommunityJoinRequestsResultImpl>
    implements _$$CommunityJoinRequestsResultImplCopyWith<$Res> {
  __$$CommunityJoinRequestsResultImplCopyWithImpl(
      _$CommunityJoinRequestsResultImpl _value,
      $Res Function(_$CommunityJoinRequestsResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityJoinRequestsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
  }) {
    return _then(_$CommunityJoinRequestsResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityJoinRequestsResultImpl
    implements _CommunityJoinRequestsResult {
  const _$CommunityJoinRequestsResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename});

  factory _$CommunityJoinRequestsResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CommunityJoinRequestsResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;

  @override
  String toString() {
    return 'CommunityJoinRequestsResult(privateTypename: $privateTypename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityJoinRequestsResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename);

  /// Create a copy of CommunityJoinRequestsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityJoinRequestsResultImplCopyWith<_$CommunityJoinRequestsResultImpl>
      get copyWith => __$$CommunityJoinRequestsResultImplCopyWithImpl<
          _$CommunityJoinRequestsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityJoinRequestsResultImplToJson(
      this,
    );
  }
}

abstract class _CommunityJoinRequestsResult
    implements CommunityJoinRequestsResult {
  const factory _CommunityJoinRequestsResult(
          {@JsonKey(name: '__typename')
          required final TypeName privateTypename}) =
      _$CommunityJoinRequestsResultImpl;

  factory _CommunityJoinRequestsResult.fromJson(Map<String, dynamic> json) =
      _$CommunityJoinRequestsResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;

  /// Create a copy of CommunityJoinRequestsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityJoinRequestsResultImplCopyWith<_$CommunityJoinRequestsResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
