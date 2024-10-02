// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_timeline_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeTimelineHome _$HomeTimelineHomeFromJson(Map<String, dynamic> json) {
  return _HomeTimelineHome.fromJson(json);
}

/// @nodoc
mixin _$HomeTimelineHome {
  @JsonKey(name: 'home_timeline_urt')
  Timeline get homeTimelineUrt => throw _privateConstructorUsedError;

  /// Serializes this HomeTimelineHome to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeTimelineHome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeTimelineHomeCopyWith<HomeTimelineHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTimelineHomeCopyWith<$Res> {
  factory $HomeTimelineHomeCopyWith(
          HomeTimelineHome value, $Res Function(HomeTimelineHome) then) =
      _$HomeTimelineHomeCopyWithImpl<$Res, HomeTimelineHome>;
  @useResult
  $Res call({@JsonKey(name: 'home_timeline_urt') Timeline homeTimelineUrt});

  $TimelineCopyWith<$Res> get homeTimelineUrt;
}

/// @nodoc
class _$HomeTimelineHomeCopyWithImpl<$Res, $Val extends HomeTimelineHome>
    implements $HomeTimelineHomeCopyWith<$Res> {
  _$HomeTimelineHomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeTimelineHome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTimelineUrt = null,
  }) {
    return _then(_value.copyWith(
      homeTimelineUrt: null == homeTimelineUrt
          ? _value.homeTimelineUrt
          : homeTimelineUrt // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ) as $Val);
  }

  /// Create a copy of HomeTimelineHome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineCopyWith<$Res> get homeTimelineUrt {
    return $TimelineCopyWith<$Res>(_value.homeTimelineUrt, (value) {
      return _then(_value.copyWith(homeTimelineUrt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeTimelineHomeImplCopyWith<$Res>
    implements $HomeTimelineHomeCopyWith<$Res> {
  factory _$$HomeTimelineHomeImplCopyWith(_$HomeTimelineHomeImpl value,
          $Res Function(_$HomeTimelineHomeImpl) then) =
      __$$HomeTimelineHomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'home_timeline_urt') Timeline homeTimelineUrt});

  @override
  $TimelineCopyWith<$Res> get homeTimelineUrt;
}

/// @nodoc
class __$$HomeTimelineHomeImplCopyWithImpl<$Res>
    extends _$HomeTimelineHomeCopyWithImpl<$Res, _$HomeTimelineHomeImpl>
    implements _$$HomeTimelineHomeImplCopyWith<$Res> {
  __$$HomeTimelineHomeImplCopyWithImpl(_$HomeTimelineHomeImpl _value,
      $Res Function(_$HomeTimelineHomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTimelineHome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTimelineUrt = null,
  }) {
    return _then(_$HomeTimelineHomeImpl(
      homeTimelineUrt: null == homeTimelineUrt
          ? _value.homeTimelineUrt
          : homeTimelineUrt // ignore: cast_nullable_to_non_nullable
              as Timeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeTimelineHomeImpl implements _HomeTimelineHome {
  const _$HomeTimelineHomeImpl(
      {@JsonKey(name: 'home_timeline_urt') required this.homeTimelineUrt});

  factory _$HomeTimelineHomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeTimelineHomeImplFromJson(json);

  @override
  @JsonKey(name: 'home_timeline_urt')
  final Timeline homeTimelineUrt;

  @override
  String toString() {
    return 'HomeTimelineHome(homeTimelineUrt: $homeTimelineUrt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTimelineHomeImpl &&
            (identical(other.homeTimelineUrt, homeTimelineUrt) ||
                other.homeTimelineUrt == homeTimelineUrt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, homeTimelineUrt);

  /// Create a copy of HomeTimelineHome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTimelineHomeImplCopyWith<_$HomeTimelineHomeImpl> get copyWith =>
      __$$HomeTimelineHomeImplCopyWithImpl<_$HomeTimelineHomeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeTimelineHomeImplToJson(
      this,
    );
  }
}

abstract class _HomeTimelineHome implements HomeTimelineHome {
  const factory _HomeTimelineHome(
      {@JsonKey(name: 'home_timeline_urt')
      required final Timeline homeTimelineUrt}) = _$HomeTimelineHomeImpl;

  factory _HomeTimelineHome.fromJson(Map<String, dynamic> json) =
      _$HomeTimelineHomeImpl.fromJson;

  @override
  @JsonKey(name: 'home_timeline_urt')
  Timeline get homeTimelineUrt;

  /// Create a copy of HomeTimelineHome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTimelineHomeImplCopyWith<_$HomeTimelineHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
