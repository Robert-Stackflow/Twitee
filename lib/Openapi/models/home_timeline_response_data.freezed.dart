// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_timeline_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeTimelineResponseData _$HomeTimelineResponseDataFromJson(
    Map<String, dynamic> json) {
  return _HomeTimelineResponseData.fromJson(json);
}

/// @nodoc
mixin _$HomeTimelineResponseData {
  HomeTimelineHome get home => throw _privateConstructorUsedError;

  /// Serializes this HomeTimelineResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeTimelineResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeTimelineResponseDataCopyWith<HomeTimelineResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTimelineResponseDataCopyWith<$Res> {
  factory $HomeTimelineResponseDataCopyWith(HomeTimelineResponseData value,
          $Res Function(HomeTimelineResponseData) then) =
      _$HomeTimelineResponseDataCopyWithImpl<$Res, HomeTimelineResponseData>;
  @useResult
  $Res call({HomeTimelineHome home});

  $HomeTimelineHomeCopyWith<$Res> get home;
}

/// @nodoc
class _$HomeTimelineResponseDataCopyWithImpl<$Res,
        $Val extends HomeTimelineResponseData>
    implements $HomeTimelineResponseDataCopyWith<$Res> {
  _$HomeTimelineResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeTimelineResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
  }) {
    return _then(_value.copyWith(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as HomeTimelineHome,
    ) as $Val);
  }

  /// Create a copy of HomeTimelineResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeTimelineHomeCopyWith<$Res> get home {
    return $HomeTimelineHomeCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeTimelineResponseDataImplCopyWith<$Res>
    implements $HomeTimelineResponseDataCopyWith<$Res> {
  factory _$$HomeTimelineResponseDataImplCopyWith(
          _$HomeTimelineResponseDataImpl value,
          $Res Function(_$HomeTimelineResponseDataImpl) then) =
      __$$HomeTimelineResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeTimelineHome home});

  @override
  $HomeTimelineHomeCopyWith<$Res> get home;
}

/// @nodoc
class __$$HomeTimelineResponseDataImplCopyWithImpl<$Res>
    extends _$HomeTimelineResponseDataCopyWithImpl<$Res,
        _$HomeTimelineResponseDataImpl>
    implements _$$HomeTimelineResponseDataImplCopyWith<$Res> {
  __$$HomeTimelineResponseDataImplCopyWithImpl(
      _$HomeTimelineResponseDataImpl _value,
      $Res Function(_$HomeTimelineResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTimelineResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
  }) {
    return _then(_$HomeTimelineResponseDataImpl(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as HomeTimelineHome,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeTimelineResponseDataImpl implements _HomeTimelineResponseData {
  const _$HomeTimelineResponseDataImpl({required this.home});

  factory _$HomeTimelineResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeTimelineResponseDataImplFromJson(json);

  @override
  final HomeTimelineHome home;

  @override
  String toString() {
    return 'HomeTimelineResponseData(home: $home)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTimelineResponseDataImpl &&
            (identical(other.home, home) || other.home == home));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, home);

  /// Create a copy of HomeTimelineResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTimelineResponseDataImplCopyWith<_$HomeTimelineResponseDataImpl>
      get copyWith => __$$HomeTimelineResponseDataImplCopyWithImpl<
          _$HomeTimelineResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeTimelineResponseDataImplToJson(
      this,
    );
  }
}

abstract class _HomeTimelineResponseData implements HomeTimelineResponseData {
  const factory _HomeTimelineResponseData(
      {required final HomeTimelineHome home}) = _$HomeTimelineResponseDataImpl;

  factory _HomeTimelineResponseData.fromJson(Map<String, dynamic> json) =
      _$HomeTimelineResponseDataImpl.fromJson;

  @override
  HomeTimelineHome get home;

  /// Create a copy of HomeTimelineResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTimelineResponseDataImplCopyWith<_$HomeTimelineResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
