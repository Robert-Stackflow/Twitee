// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_leave_action_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityLeaveActionResult _$CommunityLeaveActionResultFromJson(
    Map<String, dynamic> json) {
  return _CommunityLeaveActionResult.fromJson(json);
}

/// @nodoc
mixin _$CommunityLeaveActionResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  CommunityLeaveActionResultReason get reason =>
      throw _privateConstructorUsedError;

  /// Serializes this CommunityLeaveActionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityLeaveActionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityLeaveActionResultCopyWith<CommunityLeaveActionResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityLeaveActionResultCopyWith<$Res> {
  factory $CommunityLeaveActionResultCopyWith(CommunityLeaveActionResult value,
          $Res Function(CommunityLeaveActionResult) then) =
      _$CommunityLeaveActionResultCopyWithImpl<$Res,
          CommunityLeaveActionResult>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      String message,
      CommunityLeaveActionResultReason reason});
}

/// @nodoc
class _$CommunityLeaveActionResultCopyWithImpl<$Res,
        $Val extends CommunityLeaveActionResult>
    implements $CommunityLeaveActionResultCopyWith<$Res> {
  _$CommunityLeaveActionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityLeaveActionResult
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
              as CommunityLeaveActionResultReason,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityLeaveActionResultImplCopyWith<$Res>
    implements $CommunityLeaveActionResultCopyWith<$Res> {
  factory _$$CommunityLeaveActionResultImplCopyWith(
          _$CommunityLeaveActionResultImpl value,
          $Res Function(_$CommunityLeaveActionResultImpl) then) =
      __$$CommunityLeaveActionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      String message,
      CommunityLeaveActionResultReason reason});
}

/// @nodoc
class __$$CommunityLeaveActionResultImplCopyWithImpl<$Res>
    extends _$CommunityLeaveActionResultCopyWithImpl<$Res,
        _$CommunityLeaveActionResultImpl>
    implements _$$CommunityLeaveActionResultImplCopyWith<$Res> {
  __$$CommunityLeaveActionResultImplCopyWithImpl(
      _$CommunityLeaveActionResultImpl _value,
      $Res Function(_$CommunityLeaveActionResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityLeaveActionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? message = null,
    Object? reason = null,
  }) {
    return _then(_$CommunityLeaveActionResultImpl(
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
              as CommunityLeaveActionResultReason,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityLeaveActionResultImpl implements _CommunityLeaveActionResult {
  const _$CommunityLeaveActionResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.message,
      required this.reason});

  factory _$CommunityLeaveActionResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CommunityLeaveActionResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final String message;
  @override
  final CommunityLeaveActionResultReason reason;

  @override
  String toString() {
    return 'CommunityLeaveActionResult(privateTypename: $privateTypename, message: $message, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityLeaveActionResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, privateTypename, message, reason);

  /// Create a copy of CommunityLeaveActionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityLeaveActionResultImplCopyWith<_$CommunityLeaveActionResultImpl>
      get copyWith => __$$CommunityLeaveActionResultImplCopyWithImpl<
          _$CommunityLeaveActionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityLeaveActionResultImplToJson(
      this,
    );
  }
}

abstract class _CommunityLeaveActionResult
    implements CommunityLeaveActionResult {
  const factory _CommunityLeaveActionResult(
          {@JsonKey(name: '__typename') required final TypeName privateTypename,
          required final String message,
          required final CommunityLeaveActionResultReason reason}) =
      _$CommunityLeaveActionResultImpl;

  factory _CommunityLeaveActionResult.fromJson(Map<String, dynamic> json) =
      _$CommunityLeaveActionResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  String get message;
  @override
  CommunityLeaveActionResultReason get reason;

  /// Create a copy of CommunityLeaveActionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityLeaveActionResultImplCopyWith<_$CommunityLeaveActionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
