// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_follows_reply_user_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuperFollowsReplyUserResultData _$SuperFollowsReplyUserResultDataFromJson(
    Map<String, dynamic> json) {
  return _SuperFollowsReplyUserResultData.fromJson(json);
}

/// @nodoc
mixin _$SuperFollowsReplyUserResultData {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  SuperFollowsReplyUserResultLegacy get legacy =>
      throw _privateConstructorUsedError;

  /// Serializes this SuperFollowsReplyUserResultData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperFollowsReplyUserResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperFollowsReplyUserResultDataCopyWith<SuperFollowsReplyUserResultData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperFollowsReplyUserResultDataCopyWith<$Res> {
  factory $SuperFollowsReplyUserResultDataCopyWith(
          SuperFollowsReplyUserResultData value,
          $Res Function(SuperFollowsReplyUserResultData) then) =
      _$SuperFollowsReplyUserResultDataCopyWithImpl<$Res,
          SuperFollowsReplyUserResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      SuperFollowsReplyUserResultLegacy legacy});

  $SuperFollowsReplyUserResultLegacyCopyWith<$Res> get legacy;
}

/// @nodoc
class _$SuperFollowsReplyUserResultDataCopyWithImpl<$Res,
        $Val extends SuperFollowsReplyUserResultData>
    implements $SuperFollowsReplyUserResultDataCopyWith<$Res> {
  _$SuperFollowsReplyUserResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperFollowsReplyUserResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? legacy = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as SuperFollowsReplyUserResultLegacy,
    ) as $Val);
  }

  /// Create a copy of SuperFollowsReplyUserResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuperFollowsReplyUserResultLegacyCopyWith<$Res> get legacy {
    return $SuperFollowsReplyUserResultLegacyCopyWith<$Res>(_value.legacy,
        (value) {
      return _then(_value.copyWith(legacy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SuperFollowsReplyUserResultDataImplCopyWith<$Res>
    implements $SuperFollowsReplyUserResultDataCopyWith<$Res> {
  factory _$$SuperFollowsReplyUserResultDataImplCopyWith(
          _$SuperFollowsReplyUserResultDataImpl value,
          $Res Function(_$SuperFollowsReplyUserResultDataImpl) then) =
      __$$SuperFollowsReplyUserResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      SuperFollowsReplyUserResultLegacy legacy});

  @override
  $SuperFollowsReplyUserResultLegacyCopyWith<$Res> get legacy;
}

/// @nodoc
class __$$SuperFollowsReplyUserResultDataImplCopyWithImpl<$Res>
    extends _$SuperFollowsReplyUserResultDataCopyWithImpl<$Res,
        _$SuperFollowsReplyUserResultDataImpl>
    implements _$$SuperFollowsReplyUserResultDataImplCopyWith<$Res> {
  __$$SuperFollowsReplyUserResultDataImplCopyWithImpl(
      _$SuperFollowsReplyUserResultDataImpl _value,
      $Res Function(_$SuperFollowsReplyUserResultDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperFollowsReplyUserResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? legacy = null,
  }) {
    return _then(_$SuperFollowsReplyUserResultDataImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as SuperFollowsReplyUserResultLegacy,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperFollowsReplyUserResultDataImpl
    implements _SuperFollowsReplyUserResultData {
  const _$SuperFollowsReplyUserResultDataImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.legacy});

  factory _$SuperFollowsReplyUserResultDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SuperFollowsReplyUserResultDataImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final SuperFollowsReplyUserResultLegacy legacy;

  @override
  String toString() {
    return 'SuperFollowsReplyUserResultData(privateTypename: $privateTypename, legacy: $legacy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperFollowsReplyUserResultDataImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.legacy, legacy) || other.legacy == legacy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, legacy);

  /// Create a copy of SuperFollowsReplyUserResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperFollowsReplyUserResultDataImplCopyWith<
          _$SuperFollowsReplyUserResultDataImpl>
      get copyWith => __$$SuperFollowsReplyUserResultDataImplCopyWithImpl<
          _$SuperFollowsReplyUserResultDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperFollowsReplyUserResultDataImplToJson(
      this,
    );
  }
}

abstract class _SuperFollowsReplyUserResultData
    implements SuperFollowsReplyUserResultData {
  const factory _SuperFollowsReplyUserResultData(
          {@JsonKey(name: '__typename') required final TypeName privateTypename,
          required final SuperFollowsReplyUserResultLegacy legacy}) =
      _$SuperFollowsReplyUserResultDataImpl;

  factory _SuperFollowsReplyUserResultData.fromJson(Map<String, dynamic> json) =
      _$SuperFollowsReplyUserResultDataImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  SuperFollowsReplyUserResultLegacy get legacy;

  /// Create a copy of SuperFollowsReplyUserResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperFollowsReplyUserResultDataImplCopyWith<
          _$SuperFollowsReplyUserResultDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
