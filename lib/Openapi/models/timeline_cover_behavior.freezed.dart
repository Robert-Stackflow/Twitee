// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_cover_behavior.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineCoverBehavior _$TimelineCoverBehaviorFromJson(
    Map<String, dynamic> json) {
  return _TimelineCoverBehavior.fromJson(json);
}

/// @nodoc
mixin _$TimelineCoverBehavior {
  TimelineCoverBehaviorType get type => throw _privateConstructorUsedError;
  TimelineCoverBehaviorUrl get url => throw _privateConstructorUsedError;

  /// Serializes this TimelineCoverBehavior to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineCoverBehavior
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineCoverBehaviorCopyWith<TimelineCoverBehavior> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineCoverBehaviorCopyWith<$Res> {
  factory $TimelineCoverBehaviorCopyWith(TimelineCoverBehavior value,
          $Res Function(TimelineCoverBehavior) then) =
      _$TimelineCoverBehaviorCopyWithImpl<$Res, TimelineCoverBehavior>;
  @useResult
  $Res call({TimelineCoverBehaviorType type, TimelineCoverBehaviorUrl url});

  $TimelineCoverBehaviorUrlCopyWith<$Res> get url;
}

/// @nodoc
class _$TimelineCoverBehaviorCopyWithImpl<$Res,
        $Val extends TimelineCoverBehavior>
    implements $TimelineCoverBehaviorCopyWith<$Res> {
  _$TimelineCoverBehaviorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineCoverBehavior
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TimelineCoverBehaviorType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as TimelineCoverBehaviorUrl,
    ) as $Val);
  }

  /// Create a copy of TimelineCoverBehavior
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineCoverBehaviorUrlCopyWith<$Res> get url {
    return $TimelineCoverBehaviorUrlCopyWith<$Res>(_value.url, (value) {
      return _then(_value.copyWith(url: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineCoverBehaviorImplCopyWith<$Res>
    implements $TimelineCoverBehaviorCopyWith<$Res> {
  factory _$$TimelineCoverBehaviorImplCopyWith(
          _$TimelineCoverBehaviorImpl value,
          $Res Function(_$TimelineCoverBehaviorImpl) then) =
      __$$TimelineCoverBehaviorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimelineCoverBehaviorType type, TimelineCoverBehaviorUrl url});

  @override
  $TimelineCoverBehaviorUrlCopyWith<$Res> get url;
}

/// @nodoc
class __$$TimelineCoverBehaviorImplCopyWithImpl<$Res>
    extends _$TimelineCoverBehaviorCopyWithImpl<$Res,
        _$TimelineCoverBehaviorImpl>
    implements _$$TimelineCoverBehaviorImplCopyWith<$Res> {
  __$$TimelineCoverBehaviorImplCopyWithImpl(_$TimelineCoverBehaviorImpl _value,
      $Res Function(_$TimelineCoverBehaviorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineCoverBehavior
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$TimelineCoverBehaviorImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TimelineCoverBehaviorType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as TimelineCoverBehaviorUrl,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineCoverBehaviorImpl implements _TimelineCoverBehavior {
  const _$TimelineCoverBehaviorImpl({required this.type, required this.url});

  factory _$TimelineCoverBehaviorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineCoverBehaviorImplFromJson(json);

  @override
  final TimelineCoverBehaviorType type;
  @override
  final TimelineCoverBehaviorUrl url;

  @override
  String toString() {
    return 'TimelineCoverBehavior(type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineCoverBehaviorImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, url);

  /// Create a copy of TimelineCoverBehavior
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineCoverBehaviorImplCopyWith<_$TimelineCoverBehaviorImpl>
      get copyWith => __$$TimelineCoverBehaviorImplCopyWithImpl<
          _$TimelineCoverBehaviorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineCoverBehaviorImplToJson(
      this,
    );
  }
}

abstract class _TimelineCoverBehavior implements TimelineCoverBehavior {
  const factory _TimelineCoverBehavior(
          {required final TimelineCoverBehaviorType type,
          required final TimelineCoverBehaviorUrl url}) =
      _$TimelineCoverBehaviorImpl;

  factory _TimelineCoverBehavior.fromJson(Map<String, dynamic> json) =
      _$TimelineCoverBehaviorImpl.fromJson;

  @override
  TimelineCoverBehaviorType get type;
  @override
  TimelineCoverBehaviorUrl get url;

  /// Create a copy of TimelineCoverBehavior
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineCoverBehaviorImplCopyWith<_$TimelineCoverBehaviorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
