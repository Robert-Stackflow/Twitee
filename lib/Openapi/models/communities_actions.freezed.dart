// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'communities_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunitiesActions _$CommunitiesActionsFromJson(Map<String, dynamic> json) {
  return _CommunitiesActions.fromJson(json);
}

/// @nodoc
mixin _$CommunitiesActions {
  bool get create => throw _privateConstructorUsedError;

  /// Serializes this CommunitiesActions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunitiesActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunitiesActionsCopyWith<CommunitiesActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunitiesActionsCopyWith<$Res> {
  factory $CommunitiesActionsCopyWith(
          CommunitiesActions value, $Res Function(CommunitiesActions) then) =
      _$CommunitiesActionsCopyWithImpl<$Res, CommunitiesActions>;
  @useResult
  $Res call({bool create});
}

/// @nodoc
class _$CommunitiesActionsCopyWithImpl<$Res, $Val extends CommunitiesActions>
    implements $CommunitiesActionsCopyWith<$Res> {
  _$CommunitiesActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunitiesActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? create = null,
  }) {
    return _then(_value.copyWith(
      create: null == create
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunitiesActionsImplCopyWith<$Res>
    implements $CommunitiesActionsCopyWith<$Res> {
  factory _$$CommunitiesActionsImplCopyWith(_$CommunitiesActionsImpl value,
          $Res Function(_$CommunitiesActionsImpl) then) =
      __$$CommunitiesActionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool create});
}

/// @nodoc
class __$$CommunitiesActionsImplCopyWithImpl<$Res>
    extends _$CommunitiesActionsCopyWithImpl<$Res, _$CommunitiesActionsImpl>
    implements _$$CommunitiesActionsImplCopyWith<$Res> {
  __$$CommunitiesActionsImplCopyWithImpl(_$CommunitiesActionsImpl _value,
      $Res Function(_$CommunitiesActionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunitiesActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? create = null,
  }) {
    return _then(_$CommunitiesActionsImpl(
      create: null == create
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunitiesActionsImpl implements _CommunitiesActions {
  const _$CommunitiesActionsImpl({required this.create});

  factory _$CommunitiesActionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunitiesActionsImplFromJson(json);

  @override
  final bool create;

  @override
  String toString() {
    return 'CommunitiesActions(create: $create)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunitiesActionsImpl &&
            (identical(other.create, create) || other.create == create));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, create);

  /// Create a copy of CommunitiesActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunitiesActionsImplCopyWith<_$CommunitiesActionsImpl> get copyWith =>
      __$$CommunitiesActionsImplCopyWithImpl<_$CommunitiesActionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunitiesActionsImplToJson(
      this,
    );
  }
}

abstract class _CommunitiesActions implements CommunitiesActions {
  const factory _CommunitiesActions({required final bool create}) =
      _$CommunitiesActionsImpl;

  factory _CommunitiesActions.fromJson(Map<String, dynamic> json) =
      _$CommunitiesActionsImpl.fromJson;

  @override
  bool get create;

  /// Create a copy of CommunitiesActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunitiesActionsImplCopyWith<_$CommunitiesActionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
