// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_retweet_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRetweetResponseData _$CreateRetweetResponseDataFromJson(
    Map<String, dynamic> json) {
  return _CreateRetweetResponseData.fromJson(json);
}

/// @nodoc
mixin _$CreateRetweetResponseData {
  @JsonKey(name: 'create_retweet')
  CreateRetweetResponseResult get createRetweet =>
      throw _privateConstructorUsedError;

  /// Serializes this CreateRetweetResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateRetweetResponseDataCopyWith<CreateRetweetResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRetweetResponseDataCopyWith<$Res> {
  factory $CreateRetweetResponseDataCopyWith(CreateRetweetResponseData value,
          $Res Function(CreateRetweetResponseData) then) =
      _$CreateRetweetResponseDataCopyWithImpl<$Res, CreateRetweetResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'create_retweet')
      CreateRetweetResponseResult createRetweet});

  $CreateRetweetResponseResultCopyWith<$Res> get createRetweet;
}

/// @nodoc
class _$CreateRetweetResponseDataCopyWithImpl<$Res,
        $Val extends CreateRetweetResponseData>
    implements $CreateRetweetResponseDataCopyWith<$Res> {
  _$CreateRetweetResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createRetweet = null,
  }) {
    return _then(_value.copyWith(
      createRetweet: null == createRetweet
          ? _value.createRetweet
          : createRetweet // ignore: cast_nullable_to_non_nullable
              as CreateRetweetResponseResult,
    ) as $Val);
  }

  /// Create a copy of CreateRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateRetweetResponseResultCopyWith<$Res> get createRetweet {
    return $CreateRetweetResponseResultCopyWith<$Res>(_value.createRetweet,
        (value) {
      return _then(_value.copyWith(createRetweet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateRetweetResponseDataImplCopyWith<$Res>
    implements $CreateRetweetResponseDataCopyWith<$Res> {
  factory _$$CreateRetweetResponseDataImplCopyWith(
          _$CreateRetweetResponseDataImpl value,
          $Res Function(_$CreateRetweetResponseDataImpl) then) =
      __$$CreateRetweetResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'create_retweet')
      CreateRetweetResponseResult createRetweet});

  @override
  $CreateRetweetResponseResultCopyWith<$Res> get createRetweet;
}

/// @nodoc
class __$$CreateRetweetResponseDataImplCopyWithImpl<$Res>
    extends _$CreateRetweetResponseDataCopyWithImpl<$Res,
        _$CreateRetweetResponseDataImpl>
    implements _$$CreateRetweetResponseDataImplCopyWith<$Res> {
  __$$CreateRetweetResponseDataImplCopyWithImpl(
      _$CreateRetweetResponseDataImpl _value,
      $Res Function(_$CreateRetweetResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createRetweet = null,
  }) {
    return _then(_$CreateRetweetResponseDataImpl(
      createRetweet: null == createRetweet
          ? _value.createRetweet
          : createRetweet // ignore: cast_nullable_to_non_nullable
              as CreateRetweetResponseResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRetweetResponseDataImpl implements _CreateRetweetResponseData {
  const _$CreateRetweetResponseDataImpl(
      {@JsonKey(name: 'create_retweet') required this.createRetweet});

  factory _$CreateRetweetResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRetweetResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'create_retweet')
  final CreateRetweetResponseResult createRetweet;

  @override
  String toString() {
    return 'CreateRetweetResponseData(createRetweet: $createRetweet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRetweetResponseDataImpl &&
            (identical(other.createRetweet, createRetweet) ||
                other.createRetweet == createRetweet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createRetweet);

  /// Create a copy of CreateRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRetweetResponseDataImplCopyWith<_$CreateRetweetResponseDataImpl>
      get copyWith => __$$CreateRetweetResponseDataImplCopyWithImpl<
          _$CreateRetweetResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRetweetResponseDataImplToJson(
      this,
    );
  }
}

abstract class _CreateRetweetResponseData implements CreateRetweetResponseData {
  const factory _CreateRetweetResponseData(
          {@JsonKey(name: 'create_retweet')
          required final CreateRetweetResponseResult createRetweet}) =
      _$CreateRetweetResponseDataImpl;

  factory _CreateRetweetResponseData.fromJson(Map<String, dynamic> json) =
      _$CreateRetweetResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'create_retweet')
  CreateRetweetResponseResult get createRetweet;

  /// Create a copy of CreateRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRetweetResponseDataImplCopyWith<_$CreateRetweetResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
