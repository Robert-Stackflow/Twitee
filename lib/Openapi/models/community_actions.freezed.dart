// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityActions _$CommunityActionsFromJson(Map<String, dynamic> json) {
  return _CommunityActions.fromJson(json);
}

/// @nodoc
mixin _$CommunityActions {
  @JsonKey(name: 'delete_action_result')
  CommunityDeleteActionResult get deleteActionResult =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'join_action_result')
  CommunityJoinActionResult get joinActionResult =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_action_result')
  CommunityLeaveActionResult get leaveActionResult =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_action_result')
  CommunityPinActionResult get pinActionResult =>
      throw _privateConstructorUsedError;

  /// Serializes this CommunityActions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityActionsCopyWith<CommunityActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityActionsCopyWith<$Res> {
  factory $CommunityActionsCopyWith(
          CommunityActions value, $Res Function(CommunityActions) then) =
      _$CommunityActionsCopyWithImpl<$Res, CommunityActions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'delete_action_result')
      CommunityDeleteActionResult deleteActionResult,
      @JsonKey(name: 'join_action_result')
      CommunityJoinActionResult joinActionResult,
      @JsonKey(name: 'leave_action_result')
      CommunityLeaveActionResult leaveActionResult,
      @JsonKey(name: 'pin_action_result')
      CommunityPinActionResult pinActionResult});

  $CommunityDeleteActionResultCopyWith<$Res> get deleteActionResult;
  $CommunityJoinActionResultCopyWith<$Res> get joinActionResult;
  $CommunityLeaveActionResultCopyWith<$Res> get leaveActionResult;
  $CommunityPinActionResultCopyWith<$Res> get pinActionResult;
}

/// @nodoc
class _$CommunityActionsCopyWithImpl<$Res, $Val extends CommunityActions>
    implements $CommunityActionsCopyWith<$Res> {
  _$CommunityActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteActionResult = null,
    Object? joinActionResult = null,
    Object? leaveActionResult = null,
    Object? pinActionResult = null,
  }) {
    return _then(_value.copyWith(
      deleteActionResult: null == deleteActionResult
          ? _value.deleteActionResult
          : deleteActionResult // ignore: cast_nullable_to_non_nullable
              as CommunityDeleteActionResult,
      joinActionResult: null == joinActionResult
          ? _value.joinActionResult
          : joinActionResult // ignore: cast_nullable_to_non_nullable
              as CommunityJoinActionResult,
      leaveActionResult: null == leaveActionResult
          ? _value.leaveActionResult
          : leaveActionResult // ignore: cast_nullable_to_non_nullable
              as CommunityLeaveActionResult,
      pinActionResult: null == pinActionResult
          ? _value.pinActionResult
          : pinActionResult // ignore: cast_nullable_to_non_nullable
              as CommunityPinActionResult,
    ) as $Val);
  }

  /// Create a copy of CommunityActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityDeleteActionResultCopyWith<$Res> get deleteActionResult {
    return $CommunityDeleteActionResultCopyWith<$Res>(_value.deleteActionResult,
        (value) {
      return _then(_value.copyWith(deleteActionResult: value) as $Val);
    });
  }

  /// Create a copy of CommunityActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityJoinActionResultCopyWith<$Res> get joinActionResult {
    return $CommunityJoinActionResultCopyWith<$Res>(_value.joinActionResult,
        (value) {
      return _then(_value.copyWith(joinActionResult: value) as $Val);
    });
  }

  /// Create a copy of CommunityActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityLeaveActionResultCopyWith<$Res> get leaveActionResult {
    return $CommunityLeaveActionResultCopyWith<$Res>(_value.leaveActionResult,
        (value) {
      return _then(_value.copyWith(leaveActionResult: value) as $Val);
    });
  }

  /// Create a copy of CommunityActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityPinActionResultCopyWith<$Res> get pinActionResult {
    return $CommunityPinActionResultCopyWith<$Res>(_value.pinActionResult,
        (value) {
      return _then(_value.copyWith(pinActionResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommunityActionsImplCopyWith<$Res>
    implements $CommunityActionsCopyWith<$Res> {
  factory _$$CommunityActionsImplCopyWith(_$CommunityActionsImpl value,
          $Res Function(_$CommunityActionsImpl) then) =
      __$$CommunityActionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'delete_action_result')
      CommunityDeleteActionResult deleteActionResult,
      @JsonKey(name: 'join_action_result')
      CommunityJoinActionResult joinActionResult,
      @JsonKey(name: 'leave_action_result')
      CommunityLeaveActionResult leaveActionResult,
      @JsonKey(name: 'pin_action_result')
      CommunityPinActionResult pinActionResult});

  @override
  $CommunityDeleteActionResultCopyWith<$Res> get deleteActionResult;
  @override
  $CommunityJoinActionResultCopyWith<$Res> get joinActionResult;
  @override
  $CommunityLeaveActionResultCopyWith<$Res> get leaveActionResult;
  @override
  $CommunityPinActionResultCopyWith<$Res> get pinActionResult;
}

/// @nodoc
class __$$CommunityActionsImplCopyWithImpl<$Res>
    extends _$CommunityActionsCopyWithImpl<$Res, _$CommunityActionsImpl>
    implements _$$CommunityActionsImplCopyWith<$Res> {
  __$$CommunityActionsImplCopyWithImpl(_$CommunityActionsImpl _value,
      $Res Function(_$CommunityActionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteActionResult = null,
    Object? joinActionResult = null,
    Object? leaveActionResult = null,
    Object? pinActionResult = null,
  }) {
    return _then(_$CommunityActionsImpl(
      deleteActionResult: null == deleteActionResult
          ? _value.deleteActionResult
          : deleteActionResult // ignore: cast_nullable_to_non_nullable
              as CommunityDeleteActionResult,
      joinActionResult: null == joinActionResult
          ? _value.joinActionResult
          : joinActionResult // ignore: cast_nullable_to_non_nullable
              as CommunityJoinActionResult,
      leaveActionResult: null == leaveActionResult
          ? _value.leaveActionResult
          : leaveActionResult // ignore: cast_nullable_to_non_nullable
              as CommunityLeaveActionResult,
      pinActionResult: null == pinActionResult
          ? _value.pinActionResult
          : pinActionResult // ignore: cast_nullable_to_non_nullable
              as CommunityPinActionResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityActionsImpl implements _CommunityActions {
  const _$CommunityActionsImpl(
      {@JsonKey(name: 'delete_action_result') required this.deleteActionResult,
      @JsonKey(name: 'join_action_result') required this.joinActionResult,
      @JsonKey(name: 'leave_action_result') required this.leaveActionResult,
      @JsonKey(name: 'pin_action_result') required this.pinActionResult});

  factory _$CommunityActionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityActionsImplFromJson(json);

  @override
  @JsonKey(name: 'delete_action_result')
  final CommunityDeleteActionResult deleteActionResult;
  @override
  @JsonKey(name: 'join_action_result')
  final CommunityJoinActionResult joinActionResult;
  @override
  @JsonKey(name: 'leave_action_result')
  final CommunityLeaveActionResult leaveActionResult;
  @override
  @JsonKey(name: 'pin_action_result')
  final CommunityPinActionResult pinActionResult;

  @override
  String toString() {
    return 'CommunityActions(deleteActionResult: $deleteActionResult, joinActionResult: $joinActionResult, leaveActionResult: $leaveActionResult, pinActionResult: $pinActionResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityActionsImpl &&
            (identical(other.deleteActionResult, deleteActionResult) ||
                other.deleteActionResult == deleteActionResult) &&
            (identical(other.joinActionResult, joinActionResult) ||
                other.joinActionResult == joinActionResult) &&
            (identical(other.leaveActionResult, leaveActionResult) ||
                other.leaveActionResult == leaveActionResult) &&
            (identical(other.pinActionResult, pinActionResult) ||
                other.pinActionResult == pinActionResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deleteActionResult,
      joinActionResult, leaveActionResult, pinActionResult);

  /// Create a copy of CommunityActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityActionsImplCopyWith<_$CommunityActionsImpl> get copyWith =>
      __$$CommunityActionsImplCopyWithImpl<_$CommunityActionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityActionsImplToJson(
      this,
    );
  }
}

abstract class _CommunityActions implements CommunityActions {
  const factory _CommunityActions(
          {@JsonKey(name: 'delete_action_result')
          required final CommunityDeleteActionResult deleteActionResult,
          @JsonKey(name: 'join_action_result')
          required final CommunityJoinActionResult joinActionResult,
          @JsonKey(name: 'leave_action_result')
          required final CommunityLeaveActionResult leaveActionResult,
          @JsonKey(name: 'pin_action_result')
          required final CommunityPinActionResult pinActionResult}) =
      _$CommunityActionsImpl;

  factory _CommunityActions.fromJson(Map<String, dynamic> json) =
      _$CommunityActionsImpl.fromJson;

  @override
  @JsonKey(name: 'delete_action_result')
  CommunityDeleteActionResult get deleteActionResult;
  @override
  @JsonKey(name: 'join_action_result')
  CommunityJoinActionResult get joinActionResult;
  @override
  @JsonKey(name: 'leave_action_result')
  CommunityLeaveActionResult get leaveActionResult;
  @override
  @JsonKey(name: 'pin_action_result')
  CommunityPinActionResult get pinActionResult;

  /// Create a copy of CommunityActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityActionsImplCopyWith<_$CommunityActionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
