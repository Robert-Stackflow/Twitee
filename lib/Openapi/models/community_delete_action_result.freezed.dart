// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_delete_action_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityDeleteActionResult _$CommunityDeleteActionResultFromJson(
    Map<String, dynamic> json) {
  return _CommunityDeleteActionResult.fromJson(json);
}

/// @nodoc
mixin _$CommunityDeleteActionResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  CommunityDeleteActionResultReason get reason =>
      throw _privateConstructorUsedError;

  /// Serializes this CommunityDeleteActionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityDeleteActionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityDeleteActionResultCopyWith<CommunityDeleteActionResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityDeleteActionResultCopyWith<$Res> {
  factory $CommunityDeleteActionResultCopyWith(
          CommunityDeleteActionResult value,
          $Res Function(CommunityDeleteActionResult) then) =
      _$CommunityDeleteActionResultCopyWithImpl<$Res,
          CommunityDeleteActionResult>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      CommunityDeleteActionResultReason reason});
}

/// @nodoc
class _$CommunityDeleteActionResultCopyWithImpl<$Res,
        $Val extends CommunityDeleteActionResult>
    implements $CommunityDeleteActionResultCopyWith<$Res> {
  _$CommunityDeleteActionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityDeleteActionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as CommunityDeleteActionResultReason,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityDeleteActionResultImplCopyWith<$Res>
    implements $CommunityDeleteActionResultCopyWith<$Res> {
  factory _$$CommunityDeleteActionResultImplCopyWith(
          _$CommunityDeleteActionResultImpl value,
          $Res Function(_$CommunityDeleteActionResultImpl) then) =
      __$$CommunityDeleteActionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      CommunityDeleteActionResultReason reason});
}

/// @nodoc
class __$$CommunityDeleteActionResultImplCopyWithImpl<$Res>
    extends _$CommunityDeleteActionResultCopyWithImpl<$Res,
        _$CommunityDeleteActionResultImpl>
    implements _$$CommunityDeleteActionResultImplCopyWith<$Res> {
  __$$CommunityDeleteActionResultImplCopyWithImpl(
      _$CommunityDeleteActionResultImpl _value,
      $Res Function(_$CommunityDeleteActionResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityDeleteActionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? reason = null,
  }) {
    return _then(_$CommunityDeleteActionResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as CommunityDeleteActionResultReason,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityDeleteActionResultImpl
    implements _CommunityDeleteActionResult {
  const _$CommunityDeleteActionResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.reason});

  factory _$CommunityDeleteActionResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CommunityDeleteActionResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final CommunityDeleteActionResultReason reason;

  @override
  String toString() {
    return 'CommunityDeleteActionResult(privateTypename: $privateTypename, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityDeleteActionResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, reason);

  /// Create a copy of CommunityDeleteActionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityDeleteActionResultImplCopyWith<_$CommunityDeleteActionResultImpl>
      get copyWith => __$$CommunityDeleteActionResultImplCopyWithImpl<
          _$CommunityDeleteActionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityDeleteActionResultImplToJson(
      this,
    );
  }
}

abstract class _CommunityDeleteActionResult
    implements CommunityDeleteActionResult {
  const factory _CommunityDeleteActionResult(
          {@JsonKey(name: '__typename') required final TypeName privateTypename,
          required final CommunityDeleteActionResultReason reason}) =
      _$CommunityDeleteActionResultImpl;

  factory _CommunityDeleteActionResult.fromJson(Map<String, dynamic> json) =
      _$CommunityDeleteActionResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  CommunityDeleteActionResultReason get reason;

  /// Create a copy of CommunityDeleteActionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityDeleteActionResultImplCopyWith<_$CommunityDeleteActionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
