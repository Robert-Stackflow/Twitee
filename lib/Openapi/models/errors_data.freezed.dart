// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'errors_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorsData _$ErrorsDataFromJson(Map<String, dynamic> json) {
  return _ErrorsData.fromJson(json);
}

/// @nodoc
mixin _$ErrorsData {
  String get user => throw _privateConstructorUsedError;

  /// Serializes this ErrorsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorsDataCopyWith<ErrorsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsDataCopyWith<$Res> {
  factory $ErrorsDataCopyWith(
          ErrorsData value, $Res Function(ErrorsData) then) =
      _$ErrorsDataCopyWithImpl<$Res, ErrorsData>;
  @useResult
  $Res call({String user});
}

/// @nodoc
class _$ErrorsDataCopyWithImpl<$Res, $Val extends ErrorsData>
    implements $ErrorsDataCopyWith<$Res> {
  _$ErrorsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorsDataImplCopyWith<$Res>
    implements $ErrorsDataCopyWith<$Res> {
  factory _$$ErrorsDataImplCopyWith(
          _$ErrorsDataImpl value, $Res Function(_$ErrorsDataImpl) then) =
      __$$ErrorsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String user});
}

/// @nodoc
class __$$ErrorsDataImplCopyWithImpl<$Res>
    extends _$ErrorsDataCopyWithImpl<$Res, _$ErrorsDataImpl>
    implements _$$ErrorsDataImplCopyWith<$Res> {
  __$$ErrorsDataImplCopyWithImpl(
      _$ErrorsDataImpl _value, $Res Function(_$ErrorsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ErrorsDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorsDataImpl implements _ErrorsData {
  const _$ErrorsDataImpl({required this.user});

  factory _$ErrorsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorsDataImplFromJson(json);

  @override
  final String user;

  @override
  String toString() {
    return 'ErrorsData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorsDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of ErrorsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorsDataImplCopyWith<_$ErrorsDataImpl> get copyWith =>
      __$$ErrorsDataImplCopyWithImpl<_$ErrorsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorsDataImplToJson(
      this,
    );
  }
}

abstract class _ErrorsData implements ErrorsData {
  const factory _ErrorsData({required final String user}) = _$ErrorsDataImpl;

  factory _ErrorsData.fromJson(Map<String, dynamic> json) =
      _$ErrorsDataImpl.fromJson;

  @override
  String get user;

  /// Create a copy of ErrorsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorsDataImplCopyWith<_$ErrorsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
