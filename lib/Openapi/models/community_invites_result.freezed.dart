// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_invites_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityInvitesResult _$CommunityInvitesResultFromJson(
    Map<String, dynamic> json) {
  return _CommunityInvitesResult.fromJson(json);
}

/// @nodoc
mixin _$CommunityInvitesResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  CommunityInvitesResultReason get reason => throw _privateConstructorUsedError;

  /// Serializes this CommunityInvitesResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityInvitesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityInvitesResultCopyWith<CommunityInvitesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityInvitesResultCopyWith<$Res> {
  factory $CommunityInvitesResultCopyWith(CommunityInvitesResult value,
          $Res Function(CommunityInvitesResult) then) =
      _$CommunityInvitesResultCopyWithImpl<$Res, CommunityInvitesResult>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      String message,
      CommunityInvitesResultReason reason});
}

/// @nodoc
class _$CommunityInvitesResultCopyWithImpl<$Res,
        $Val extends CommunityInvitesResult>
    implements $CommunityInvitesResultCopyWith<$Res> {
  _$CommunityInvitesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityInvitesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? message = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as CommunityInvitesResultReason,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityInvitesResultImplCopyWith<$Res>
    implements $CommunityInvitesResultCopyWith<$Res> {
  factory _$$CommunityInvitesResultImplCopyWith(
          _$CommunityInvitesResultImpl value,
          $Res Function(_$CommunityInvitesResultImpl) then) =
      __$$CommunityInvitesResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      String message,
      CommunityInvitesResultReason reason});
}

/// @nodoc
class __$$CommunityInvitesResultImplCopyWithImpl<$Res>
    extends _$CommunityInvitesResultCopyWithImpl<$Res,
        _$CommunityInvitesResultImpl>
    implements _$$CommunityInvitesResultImplCopyWith<$Res> {
  __$$CommunityInvitesResultImplCopyWithImpl(
      _$CommunityInvitesResultImpl _value,
      $Res Function(_$CommunityInvitesResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityInvitesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? message = null,
    Object? reason = null,
  }) {
    return _then(_$CommunityInvitesResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as CommunityInvitesResultReason,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityInvitesResultImpl implements _CommunityInvitesResult {
  const _$CommunityInvitesResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.message,
      required this.reason});

  factory _$CommunityInvitesResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityInvitesResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final String message;
  @override
  final CommunityInvitesResultReason reason;

  @override
  String toString() {
    return 'CommunityInvitesResult(privateTypename: $privateTypename, message: $message, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityInvitesResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, privateTypename, message, reason);

  /// Create a copy of CommunityInvitesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityInvitesResultImplCopyWith<_$CommunityInvitesResultImpl>
      get copyWith => __$$CommunityInvitesResultImplCopyWithImpl<
          _$CommunityInvitesResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityInvitesResultImplToJson(
      this,
    );
  }
}

abstract class _CommunityInvitesResult implements CommunityInvitesResult {
  const factory _CommunityInvitesResult(
          {@JsonKey(name: '__typename') required final TypeName privateTypename,
          required final String message,
          required final CommunityInvitesResultReason reason}) =
      _$CommunityInvitesResultImpl;

  factory _CommunityInvitesResult.fromJson(Map<String, dynamic> json) =
      _$CommunityInvitesResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  String get message;
  @override
  CommunityInvitesResultReason get reason;

  /// Create a copy of CommunityInvitesResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityInvitesResultImplCopyWith<_$CommunityInvitesResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
