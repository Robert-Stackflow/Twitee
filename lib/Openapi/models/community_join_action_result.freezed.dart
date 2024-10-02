// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_join_action_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityJoinActionResult _$CommunityJoinActionResultFromJson(
    Map<String, dynamic> json) {
  return _CommunityJoinActionResult.fromJson(json);
}

/// @nodoc
mixin _$CommunityJoinActionResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;

  /// Serializes this CommunityJoinActionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityJoinActionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityJoinActionResultCopyWith<CommunityJoinActionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityJoinActionResultCopyWith<$Res> {
  factory $CommunityJoinActionResultCopyWith(CommunityJoinActionResult value,
          $Res Function(CommunityJoinActionResult) then) =
      _$CommunityJoinActionResultCopyWithImpl<$Res, CommunityJoinActionResult>;
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class _$CommunityJoinActionResultCopyWithImpl<$Res,
        $Val extends CommunityJoinActionResult>
    implements $CommunityJoinActionResultCopyWith<$Res> {
  _$CommunityJoinActionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityJoinActionResult
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
abstract class _$$CommunityJoinActionResultImplCopyWith<$Res>
    implements $CommunityJoinActionResultCopyWith<$Res> {
  factory _$$CommunityJoinActionResultImplCopyWith(
          _$CommunityJoinActionResultImpl value,
          $Res Function(_$CommunityJoinActionResultImpl) then) =
      __$$CommunityJoinActionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class __$$CommunityJoinActionResultImplCopyWithImpl<$Res>
    extends _$CommunityJoinActionResultCopyWithImpl<$Res,
        _$CommunityJoinActionResultImpl>
    implements _$$CommunityJoinActionResultImplCopyWith<$Res> {
  __$$CommunityJoinActionResultImplCopyWithImpl(
      _$CommunityJoinActionResultImpl _value,
      $Res Function(_$CommunityJoinActionResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityJoinActionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
  }) {
    return _then(_$CommunityJoinActionResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityJoinActionResultImpl implements _CommunityJoinActionResult {
  const _$CommunityJoinActionResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename});

  factory _$CommunityJoinActionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityJoinActionResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;

  @override
  String toString() {
    return 'CommunityJoinActionResult(privateTypename: $privateTypename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityJoinActionResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename);

  /// Create a copy of CommunityJoinActionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityJoinActionResultImplCopyWith<_$CommunityJoinActionResultImpl>
      get copyWith => __$$CommunityJoinActionResultImplCopyWithImpl<
          _$CommunityJoinActionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityJoinActionResultImplToJson(
      this,
    );
  }
}

abstract class _CommunityJoinActionResult implements CommunityJoinActionResult {
  const factory _CommunityJoinActionResult(
          {@JsonKey(name: '__typename')
          required final TypeName privateTypename}) =
      _$CommunityJoinActionResultImpl;

  factory _CommunityJoinActionResult.fromJson(Map<String, dynamic> json) =
      _$CommunityJoinActionResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;

  /// Create a copy of CommunityJoinActionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityJoinActionResultImplCopyWith<_$CommunityJoinActionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
