// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_pin_action_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityPinActionResult _$CommunityPinActionResultFromJson(
    Map<String, dynamic> json) {
  return _CommunityPinActionResult.fromJson(json);
}

/// @nodoc
mixin _$CommunityPinActionResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;

  /// Serializes this CommunityPinActionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityPinActionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityPinActionResultCopyWith<CommunityPinActionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityPinActionResultCopyWith<$Res> {
  factory $CommunityPinActionResultCopyWith(CommunityPinActionResult value,
          $Res Function(CommunityPinActionResult) then) =
      _$CommunityPinActionResultCopyWithImpl<$Res, CommunityPinActionResult>;
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class _$CommunityPinActionResultCopyWithImpl<$Res,
        $Val extends CommunityPinActionResult>
    implements $CommunityPinActionResultCopyWith<$Res> {
  _$CommunityPinActionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityPinActionResult
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
abstract class _$$CommunityPinActionResultImplCopyWith<$Res>
    implements $CommunityPinActionResultCopyWith<$Res> {
  factory _$$CommunityPinActionResultImplCopyWith(
          _$CommunityPinActionResultImpl value,
          $Res Function(_$CommunityPinActionResultImpl) then) =
      __$$CommunityPinActionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class __$$CommunityPinActionResultImplCopyWithImpl<$Res>
    extends _$CommunityPinActionResultCopyWithImpl<$Res,
        _$CommunityPinActionResultImpl>
    implements _$$CommunityPinActionResultImplCopyWith<$Res> {
  __$$CommunityPinActionResultImplCopyWithImpl(
      _$CommunityPinActionResultImpl _value,
      $Res Function(_$CommunityPinActionResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityPinActionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
  }) {
    return _then(_$CommunityPinActionResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityPinActionResultImpl implements _CommunityPinActionResult {
  const _$CommunityPinActionResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename});

  factory _$CommunityPinActionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityPinActionResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;

  @override
  String toString() {
    return 'CommunityPinActionResult(privateTypename: $privateTypename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityPinActionResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename);

  /// Create a copy of CommunityPinActionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityPinActionResultImplCopyWith<_$CommunityPinActionResultImpl>
      get copyWith => __$$CommunityPinActionResultImplCopyWithImpl<
          _$CommunityPinActionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityPinActionResultImplToJson(
      this,
    );
  }
}

abstract class _CommunityPinActionResult implements CommunityPinActionResult {
  const factory _CommunityPinActionResult(
          {@JsonKey(name: '__typename')
          required final TypeName privateTypename}) =
      _$CommunityPinActionResultImpl;

  factory _CommunityPinActionResult.fromJson(Map<String, dynamic> json) =
      _$CommunityPinActionResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;

  /// Create a copy of CommunityPinActionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityPinActionResultImplCopyWith<_$CommunityPinActionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
