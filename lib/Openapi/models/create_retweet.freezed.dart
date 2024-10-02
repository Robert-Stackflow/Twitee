// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_retweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRetweet _$CreateRetweetFromJson(Map<String, dynamic> json) {
  return _CreateRetweet.fromJson(json);
}

/// @nodoc
mixin _$CreateRetweet {
  Retweet get result => throw _privateConstructorUsedError;

  /// Serializes this CreateRetweet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateRetweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateRetweetCopyWith<CreateRetweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRetweetCopyWith<$Res> {
  factory $CreateRetweetCopyWith(
          CreateRetweet value, $Res Function(CreateRetweet) then) =
      _$CreateRetweetCopyWithImpl<$Res, CreateRetweet>;
  @useResult
  $Res call({Retweet result});

  $RetweetCopyWith<$Res> get result;
}

/// @nodoc
class _$CreateRetweetCopyWithImpl<$Res, $Val extends CreateRetweet>
    implements $CreateRetweetCopyWith<$Res> {
  _$CreateRetweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateRetweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Retweet,
    ) as $Val);
  }

  /// Create a copy of CreateRetweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RetweetCopyWith<$Res> get result {
    return $RetweetCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateRetweetImplCopyWith<$Res>
    implements $CreateRetweetCopyWith<$Res> {
  factory _$$CreateRetweetImplCopyWith(
          _$CreateRetweetImpl value, $Res Function(_$CreateRetweetImpl) then) =
      __$$CreateRetweetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Retweet result});

  @override
  $RetweetCopyWith<$Res> get result;
}

/// @nodoc
class __$$CreateRetweetImplCopyWithImpl<$Res>
    extends _$CreateRetweetCopyWithImpl<$Res, _$CreateRetweetImpl>
    implements _$$CreateRetweetImplCopyWith<$Res> {
  __$$CreateRetweetImplCopyWithImpl(
      _$CreateRetweetImpl _value, $Res Function(_$CreateRetweetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateRetweet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$CreateRetweetImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Retweet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRetweetImpl implements _CreateRetweet {
  const _$CreateRetweetImpl({required this.result});

  factory _$CreateRetweetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRetweetImplFromJson(json);

  @override
  final Retweet result;

  @override
  String toString() {
    return 'CreateRetweet(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRetweetImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of CreateRetweet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRetweetImplCopyWith<_$CreateRetweetImpl> get copyWith =>
      __$$CreateRetweetImplCopyWithImpl<_$CreateRetweetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRetweetImplToJson(
      this,
    );
  }
}

abstract class _CreateRetweet implements CreateRetweet {
  const factory _CreateRetweet({required final Retweet result}) =
      _$CreateRetweetImpl;

  factory _CreateRetweet.fromJson(Map<String, dynamic> json) =
      _$CreateRetweetImpl.fromJson;

  @override
  Retweet get result;

  /// Create a copy of CreateRetweet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRetweetImplCopyWith<_$CreateRetweetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
