// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedbackInfo _$FeedbackInfoFromJson(Map<String, dynamic> json) {
  return _FeedbackInfo.fromJson(json);
}

/// @nodoc
mixin _$FeedbackInfo {
  List<String> get feedbackKeys => throw _privateConstructorUsedError;

  /// Serializes this FeedbackInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackInfoCopyWith<FeedbackInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackInfoCopyWith<$Res> {
  factory $FeedbackInfoCopyWith(
          FeedbackInfo value, $Res Function(FeedbackInfo) then) =
      _$FeedbackInfoCopyWithImpl<$Res, FeedbackInfo>;
  @useResult
  $Res call({List<String> feedbackKeys});
}

/// @nodoc
class _$FeedbackInfoCopyWithImpl<$Res, $Val extends FeedbackInfo>
    implements $FeedbackInfoCopyWith<$Res> {
  _$FeedbackInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedbackKeys = null,
  }) {
    return _then(_value.copyWith(
      feedbackKeys: null == feedbackKeys
          ? _value.feedbackKeys
          : feedbackKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedbackInfoImplCopyWith<$Res>
    implements $FeedbackInfoCopyWith<$Res> {
  factory _$$FeedbackInfoImplCopyWith(
          _$FeedbackInfoImpl value, $Res Function(_$FeedbackInfoImpl) then) =
      __$$FeedbackInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> feedbackKeys});
}

/// @nodoc
class __$$FeedbackInfoImplCopyWithImpl<$Res>
    extends _$FeedbackInfoCopyWithImpl<$Res, _$FeedbackInfoImpl>
    implements _$$FeedbackInfoImplCopyWith<$Res> {
  __$$FeedbackInfoImplCopyWithImpl(
      _$FeedbackInfoImpl _value, $Res Function(_$FeedbackInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedbackKeys = null,
  }) {
    return _then(_$FeedbackInfoImpl(
      feedbackKeys: null == feedbackKeys
          ? _value._feedbackKeys
          : feedbackKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackInfoImpl implements _FeedbackInfo {
  const _$FeedbackInfoImpl({required final List<String> feedbackKeys})
      : _feedbackKeys = feedbackKeys;

  factory _$FeedbackInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackInfoImplFromJson(json);

  final List<String> _feedbackKeys;
  @override
  List<String> get feedbackKeys {
    if (_feedbackKeys is EqualUnmodifiableListView) return _feedbackKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedbackKeys);
  }

  @override
  String toString() {
    return 'FeedbackInfo(feedbackKeys: $feedbackKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._feedbackKeys, _feedbackKeys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_feedbackKeys));

  /// Create a copy of FeedbackInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackInfoImplCopyWith<_$FeedbackInfoImpl> get copyWith =>
      __$$FeedbackInfoImplCopyWithImpl<_$FeedbackInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackInfoImplToJson(
      this,
    );
  }
}

abstract class _FeedbackInfo implements FeedbackInfo {
  const factory _FeedbackInfo({required final List<String> feedbackKeys}) =
      _$FeedbackInfoImpl;

  factory _FeedbackInfo.fromJson(Map<String, dynamic> json) =
      _$FeedbackInfoImpl.fromJson;

  @override
  List<String> get feedbackKeys;

  /// Create a copy of FeedbackInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackInfoImplCopyWith<_$FeedbackInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
