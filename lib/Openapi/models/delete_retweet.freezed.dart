// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_retweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteRetweet _$DeleteRetweetFromJson(Map<String, dynamic> json) {
  return _DeleteRetweet.fromJson(json);
}

/// @nodoc
mixin _$DeleteRetweet {
  dynamic get result => throw _privateConstructorUsedError;

  /// Serializes this DeleteRetweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteRetweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteRetweetCopyWith<DeleteRetweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRetweetCopyWith<$Res> {
  factory $DeleteRetweetCopyWith(
          DeleteRetweet value, $Res Function(DeleteRetweet) then) =
      _$DeleteRetweetCopyWithImpl<$Res, DeleteRetweet>;
  @useResult
  $Res call({dynamic result});
}

/// @nodoc
class _$DeleteRetweetCopyWithImpl<$Res, $Val extends DeleteRetweet>
    implements $DeleteRetweetCopyWith<$Res> {
  _$DeleteRetweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteRetweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteRetweetImplCopyWith<$Res>
    implements $DeleteRetweetCopyWith<$Res> {
  factory _$$DeleteRetweetImplCopyWith(
          _$DeleteRetweetImpl value, $Res Function(_$DeleteRetweetImpl) then) =
      __$$DeleteRetweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic result});
}

/// @nodoc
class __$$DeleteRetweetImplCopyWithImpl<$Res>
    extends _$DeleteRetweetCopyWithImpl<$Res, _$DeleteRetweetImpl>
    implements _$$DeleteRetweetImplCopyWith<$Res> {
  __$$DeleteRetweetImplCopyWithImpl(
      _$DeleteRetweetImpl _value, $Res Function(_$DeleteRetweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteRetweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$DeleteRetweetImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteRetweetImpl implements _DeleteRetweet {
  const _$DeleteRetweetImpl({required this.result});

  factory _$DeleteRetweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteRetweetImplFromJson(json);

  @override
  final dynamic result;

  @override
  String toString() {
    return 'DeleteRetweet(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRetweetImpl &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  /// Create a copy of DeleteRetweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRetweetImplCopyWith<_$DeleteRetweetImpl> get copyWith =>
      __$$DeleteRetweetImplCopyWithImpl<_$DeleteRetweetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRetweetImplToJson(
      this,
    );
  }
}

abstract class _DeleteRetweet implements DeleteRetweet {
  const factory _DeleteRetweet({required final dynamic result}) =
      _$DeleteRetweetImpl;

  factory _DeleteRetweet.fromJson(Map<String, dynamic> json) =
      _$DeleteRetweetImpl.fromJson;

  @override
  dynamic get result;

  /// Create a copy of DeleteRetweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteRetweetImplCopyWith<_$DeleteRetweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
