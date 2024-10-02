// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_retweet_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteRetweetResponseData _$DeleteRetweetResponseDataFromJson(
    Map<String, dynamic> json) {
  return _DeleteRetweetResponseData.fromJson(json);
}

/// @nodoc
mixin _$DeleteRetweetResponseData {
  @JsonKey(name: 'create_retweet')
  CreateRetweetResponseResult get createRetweet =>
      throw _privateConstructorUsedError;

  /// Serializes this DeleteRetweetResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteRetweetResponseDataCopyWith<DeleteRetweetResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRetweetResponseDataCopyWith<$Res> {
  factory $DeleteRetweetResponseDataCopyWith(DeleteRetweetResponseData value,
          $Res Function(DeleteRetweetResponseData) then) =
      _$DeleteRetweetResponseDataCopyWithImpl<$Res, DeleteRetweetResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'create_retweet')
      CreateRetweetResponseResult createRetweet});

  $CreateRetweetResponseResultCopyWith<$Res> get createRetweet;
}

/// @nodoc
class _$DeleteRetweetResponseDataCopyWithImpl<$Res,
        $Val extends DeleteRetweetResponseData>
    implements $DeleteRetweetResponseDataCopyWith<$Res> {
  _$DeleteRetweetResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteRetweetResponseData
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

  /// Create a copy of DeleteRetweetResponseData
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
abstract class _$$DeleteRetweetResponseDataImplCopyWith<$Res>
    implements $DeleteRetweetResponseDataCopyWith<$Res> {
  factory _$$DeleteRetweetResponseDataImplCopyWith(
          _$DeleteRetweetResponseDataImpl value,
          $Res Function(_$DeleteRetweetResponseDataImpl) then) =
      __$$DeleteRetweetResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'create_retweet')
      CreateRetweetResponseResult createRetweet});

  @override
  $CreateRetweetResponseResultCopyWith<$Res> get createRetweet;
}

/// @nodoc
class __$$DeleteRetweetResponseDataImplCopyWithImpl<$Res>
    extends _$DeleteRetweetResponseDataCopyWithImpl<$Res,
        _$DeleteRetweetResponseDataImpl>
    implements _$$DeleteRetweetResponseDataImplCopyWith<$Res> {
  __$$DeleteRetweetResponseDataImplCopyWithImpl(
      _$DeleteRetweetResponseDataImpl _value,
      $Res Function(_$DeleteRetweetResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createRetweet = null,
  }) {
    return _then(_$DeleteRetweetResponseDataImpl(
      createRetweet: null == createRetweet
          ? _value.createRetweet
          : createRetweet // ignore: cast_nullable_to_non_nullable
              as CreateRetweetResponseResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteRetweetResponseDataImpl implements _DeleteRetweetResponseData {
  const _$DeleteRetweetResponseDataImpl(
      {@JsonKey(name: 'create_retweet') required this.createRetweet});

  factory _$DeleteRetweetResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteRetweetResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'create_retweet')
  final CreateRetweetResponseResult createRetweet;

  @override
  String toString() {
    return 'DeleteRetweetResponseData(createRetweet: $createRetweet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRetweetResponseDataImpl &&
            (identical(other.createRetweet, createRetweet) ||
                other.createRetweet == createRetweet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createRetweet);

  /// Create a copy of DeleteRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRetweetResponseDataImplCopyWith<_$DeleteRetweetResponseDataImpl>
      get copyWith => __$$DeleteRetweetResponseDataImplCopyWithImpl<
          _$DeleteRetweetResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRetweetResponseDataImplToJson(
      this,
    );
  }
}

abstract class _DeleteRetweetResponseData implements DeleteRetweetResponseData {
  const factory _DeleteRetweetResponseData(
          {@JsonKey(name: 'create_retweet')
          required final CreateRetweetResponseResult createRetweet}) =
      _$DeleteRetweetResponseDataImpl;

  factory _DeleteRetweetResponseData.fromJson(Map<String, dynamic> json) =
      _$DeleteRetweetResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'create_retweet')
  CreateRetweetResponseResult get createRetweet;

  /// Create a copy of DeleteRetweetResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteRetweetResponseDataImplCopyWith<_$DeleteRetweetResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
