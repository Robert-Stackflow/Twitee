// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_response_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowResponseResult _$FollowResponseResultFromJson(Map<String, dynamic> json) {
  return _FollowResponseResult.fromJson(json);
}

/// @nodoc
mixin _$FollowResponseResult {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  FollowTimeline get timeline => throw _privateConstructorUsedError;

  /// Serializes this FollowResponseResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowResponseResultCopyWith<FollowResponseResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowResponseResultCopyWith<$Res> {
  factory $FollowResponseResultCopyWith(FollowResponseResult value,
          $Res Function(FollowResponseResult) then) =
      _$FollowResponseResultCopyWithImpl<$Res, FollowResponseResult>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      FollowTimeline timeline});

  $FollowTimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class _$FollowResponseResultCopyWithImpl<$Res,
        $Val extends FollowResponseResult>
    implements $FollowResponseResultCopyWith<$Res> {
  _$FollowResponseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? timeline = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as FollowTimeline,
    ) as $Val);
  }

  /// Create a copy of FollowResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FollowTimelineCopyWith<$Res> get timeline {
    return $FollowTimelineCopyWith<$Res>(_value.timeline, (value) {
      return _then(_value.copyWith(timeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowResponseResultImplCopyWith<$Res>
    implements $FollowResponseResultCopyWith<$Res> {
  factory _$$FollowResponseResultImplCopyWith(_$FollowResponseResultImpl value,
          $Res Function(_$FollowResponseResultImpl) then) =
      __$$FollowResponseResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename,
      FollowTimeline timeline});

  @override
  $FollowTimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class __$$FollowResponseResultImplCopyWithImpl<$Res>
    extends _$FollowResponseResultCopyWithImpl<$Res, _$FollowResponseResultImpl>
    implements _$$FollowResponseResultImplCopyWith<$Res> {
  __$$FollowResponseResultImplCopyWithImpl(_$FollowResponseResultImpl _value,
      $Res Function(_$FollowResponseResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? timeline = null,
  }) {
    return _then(_$FollowResponseResultImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as FollowTimeline,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowResponseResultImpl implements _FollowResponseResult {
  const _$FollowResponseResultImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.timeline});

  factory _$FollowResponseResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowResponseResultImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final FollowTimeline timeline;

  @override
  String toString() {
    return 'FollowResponseResult(privateTypename: $privateTypename, timeline: $timeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowResponseResultImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, timeline);

  /// Create a copy of FollowResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowResponseResultImplCopyWith<_$FollowResponseResultImpl>
      get copyWith =>
          __$$FollowResponseResultImplCopyWithImpl<_$FollowResponseResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowResponseResultImplToJson(
      this,
    );
  }
}

abstract class _FollowResponseResult implements FollowResponseResult {
  const factory _FollowResponseResult(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      required final FollowTimeline timeline}) = _$FollowResponseResultImpl;

  factory _FollowResponseResult.fromJson(Map<String, dynamic> json) =
      _$FollowResponseResultImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  FollowTimeline get timeline;

  /// Create a copy of FollowResponseResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowResponseResultImplCopyWith<_$FollowResponseResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
