// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemResult _$ItemResultFromJson(Map<String, dynamic> json) {
  return _ItemResult.fromJson(json);
}

/// @nodoc
mixin _$ItemResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  TweetUnion get result => throw _privateConstructorUsedError;

  /// Serializes this ItemResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemResultCopyWith<ItemResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemResultCopyWith<$Res> {
  factory $ItemResultCopyWith(
          ItemResult value, $Res Function(ItemResult) then) =
      _$ItemResultCopyWithImpl<$Res, ItemResult>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      TweetUnion result});

  $TweetUnionCopyWith<$Res> get result;
}

/// @nodoc
class _$ItemResultCopyWithImpl<$Res, $Val extends ItemResult>
    implements $ItemResultCopyWith<$Res> {
  _$ItemResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TweetUnion,
    ) as $Val);
  }

  /// Create a copy of ItemResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TweetUnionCopyWith<$Res> get result {
    return $TweetUnionCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemResultImplCopyWith<$Res>
    implements $ItemResultCopyWith<$Res> {
  factory _$$ItemResultImplCopyWith(
          _$ItemResultImpl value, $Res Function(_$ItemResultImpl) then) =
      __$$ItemResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      TweetUnion result});

  @override
  $TweetUnionCopyWith<$Res> get result;
}

/// @nodoc
class __$$ItemResultImplCopyWithImpl<$Res>
    extends _$ItemResultCopyWithImpl<$Res, _$ItemResultImpl>
    implements _$$ItemResultImplCopyWith<$Res> {
  __$$ItemResultImplCopyWithImpl(
      _$ItemResultImpl _value, $Res Function(_$ItemResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? result = null,
  }) {
    return _then(_$ItemResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TweetUnion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemResultImpl implements _ItemResult {
  const _$ItemResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.result});

  factory _$ItemResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final TweetUnion result;

  @override
  String toString() {
    return 'ItemResult(privateTypename: $privateTypename, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, result);

  /// Create a copy of ItemResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemResultImplCopyWith<_$ItemResultImpl> get copyWith =>
      __$$ItemResultImplCopyWithImpl<_$ItemResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemResultImplToJson(
      this,
    );
  }
}

abstract class _ItemResult implements ItemResult {
  const factory _ItemResult(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      required final TweetUnion result}) = _$ItemResultImpl;

  factory _ItemResult.fromJson(Map<String, dynamic> json) =
      _$ItemResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  TweetUnion get result;

  /// Create a copy of ItemResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemResultImplCopyWith<_$ItemResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
