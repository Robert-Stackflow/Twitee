// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tweets_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTweetsResult _$UserTweetsResultFromJson(Map<String, dynamic> json) {
  return _UserTweetsResult.fromJson(json);
}

/// @nodoc
mixin _$UserTweetsResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeline_v2')
  TimelineV get timelineV2 => throw _privateConstructorUsedError;

  /// Serializes this UserTweetsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserTweetsResultCopyWith<UserTweetsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTweetsResultCopyWith<$Res> {
  factory $UserTweetsResultCopyWith(
          UserTweetsResult value, $Res Function(UserTweetsResult) then) =
      _$UserTweetsResultCopyWithImpl<$Res, UserTweetsResult>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      @JsonKey(name: 'timeline_v2') TimelineV timelineV2});

  $TimelineVCopyWith<$Res> get timelineV2;
}

/// @nodoc
class _$UserTweetsResultCopyWithImpl<$Res, $Val extends UserTweetsResult>
    implements $UserTweetsResultCopyWith<$Res> {
  _$UserTweetsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? timelineV2 = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      timelineV2: null == timelineV2
          ? _value.timelineV2
          : timelineV2 // ignore: cast_nullable_to_non_nullable
              as TimelineV,
    ) as $Val);
  }

  /// Create a copy of UserTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineVCopyWith<$Res> get timelineV2 {
    return $TimelineVCopyWith<$Res>(_value.timelineV2, (value) {
      return _then(_value.copyWith(timelineV2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserTweetsResultImplCopyWith<$Res>
    implements $UserTweetsResultCopyWith<$Res> {
  factory _$$UserTweetsResultImplCopyWith(_$UserTweetsResultImpl value,
          $Res Function(_$UserTweetsResultImpl) then) =
      __$$UserTweetsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      @JsonKey(name: 'timeline_v2') TimelineV timelineV2});

  @override
  $TimelineVCopyWith<$Res> get timelineV2;
}

/// @nodoc
class __$$UserTweetsResultImplCopyWithImpl<$Res>
    extends _$UserTweetsResultCopyWithImpl<$Res, _$UserTweetsResultImpl>
    implements _$$UserTweetsResultImplCopyWith<$Res> {
  __$$UserTweetsResultImplCopyWithImpl(_$UserTweetsResultImpl _value,
      $Res Function(_$UserTweetsResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? timelineV2 = null,
  }) {
    return _then(_$UserTweetsResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      timelineV2: null == timelineV2
          ? _value.timelineV2
          : timelineV2 // ignore: cast_nullable_to_non_nullable
              as TimelineV,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTweetsResultImpl implements _UserTweetsResult {
  const _$UserTweetsResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      @JsonKey(name: 'timeline_v2') required this.timelineV2});

  factory _$UserTweetsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTweetsResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  @JsonKey(name: 'timeline_v2')
  final TimelineV timelineV2;

  @override
  String toString() {
    return 'UserTweetsResult(privateTypename: $privateTypename, timelineV2: $timelineV2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTweetsResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.timelineV2, timelineV2) ||
                other.timelineV2 == timelineV2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, timelineV2);

  /// Create a copy of UserTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTweetsResultImplCopyWith<_$UserTweetsResultImpl> get copyWith =>
      __$$UserTweetsResultImplCopyWithImpl<_$UserTweetsResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTweetsResultImplToJson(
      this,
    );
  }
}

abstract class _UserTweetsResult implements UserTweetsResult {
  const factory _UserTweetsResult(
          {@JsonKey(name: '__typename') required final TypeName privateTypename,
          @JsonKey(name: 'timeline_v2') required final TimelineV timelineV2}) =
      _$UserTweetsResultImpl;

  factory _UserTweetsResult.fromJson(Map<String, dynamic> json) =
      _$UserTweetsResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  @JsonKey(name: 'timeline_v2')
  TimelineV get timelineV2;

  /// Create a copy of UserTweetsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTweetsResultImplCopyWith<_$UserTweetsResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
