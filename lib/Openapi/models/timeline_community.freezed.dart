// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_community.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineCommunity _$TimelineCommunityFromJson(Map<String, dynamic> json) {
  return _TimelineCommunity.fromJson(json);
}

/// @nodoc
mixin _$TimelineCommunity {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;

  /// Serializes this TimelineCommunity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineCommunity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineCommunityCopyWith<TimelineCommunity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineCommunityCopyWith<$Res> {
  factory $TimelineCommunityCopyWith(
          TimelineCommunity value, $Res Function(TimelineCommunity) then) =
      _$TimelineCommunityCopyWithImpl<$Res, TimelineCommunity>;
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class _$TimelineCommunityCopyWithImpl<$Res, $Val extends TimelineCommunity>
    implements $TimelineCommunityCopyWith<$Res> {
  _$TimelineCommunityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineCommunity
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
abstract class _$$TimelineCommunityImplCopyWith<$Res>
    implements $TimelineCommunityCopyWith<$Res> {
  factory _$$TimelineCommunityImplCopyWith(_$TimelineCommunityImpl value,
          $Res Function(_$TimelineCommunityImpl) then) =
      __$$TimelineCommunityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class __$$TimelineCommunityImplCopyWithImpl<$Res>
    extends _$TimelineCommunityCopyWithImpl<$Res, _$TimelineCommunityImpl>
    implements _$$TimelineCommunityImplCopyWith<$Res> {
  __$$TimelineCommunityImplCopyWithImpl(_$TimelineCommunityImpl _value,
      $Res Function(_$TimelineCommunityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineCommunity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
  }) {
    return _then(_$TimelineCommunityImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineCommunityImpl implements _TimelineCommunity {
  const _$TimelineCommunityImpl(
      {@JsonKey(name: '__typename') required this.privateTypename});

  factory _$TimelineCommunityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineCommunityImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;

  @override
  String toString() {
    return 'TimelineCommunity(privateTypename: $privateTypename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineCommunityImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename);

  /// Create a copy of TimelineCommunity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineCommunityImplCopyWith<_$TimelineCommunityImpl> get copyWith =>
      __$$TimelineCommunityImplCopyWithImpl<_$TimelineCommunityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineCommunityImplToJson(
      this,
    );
  }
}

abstract class _TimelineCommunity implements TimelineCommunity {
  const factory _TimelineCommunity(
      {@JsonKey(name: '__typename')
      required final TypeName privateTypename}) = _$TimelineCommunityImpl;

  factory _TimelineCommunity.fromJson(Map<String, dynamic> json) =
      _$TimelineCommunityImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;

  /// Create a copy of TimelineCommunity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineCommunityImplCopyWith<_$TimelineCommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
