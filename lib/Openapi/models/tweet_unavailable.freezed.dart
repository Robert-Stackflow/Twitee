// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_unavailable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TweetUnavailable _$TweetUnavailableFromJson(Map<String, dynamic> json) {
  return _TweetUnavailable.fromJson(json);
}

/// @nodoc
mixin _$TweetUnavailable {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this TweetUnavailable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TweetUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TweetUnavailableCopyWith<TweetUnavailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetUnavailableCopyWith<$Res> {
  factory $TweetUnavailableCopyWith(
          TweetUnavailable value, $Res Function(TweetUnavailable) then) =
      _$TweetUnavailableCopyWithImpl<$Res, TweetUnavailable>;
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename, String reason});
}

/// @nodoc
class _$TweetUnavailableCopyWithImpl<$Res, $Val extends TweetUnavailable>
    implements $TweetUnavailableCopyWith<$Res> {
  _$TweetUnavailableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TweetUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TweetUnavailableImplCopyWith<$Res>
    implements $TweetUnavailableCopyWith<$Res> {
  factory _$$TweetUnavailableImplCopyWith(_$TweetUnavailableImpl value,
          $Res Function(_$TweetUnavailableImpl) then) =
      __$$TweetUnavailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__typename') TypeName privateTypename, String reason});
}

/// @nodoc
class __$$TweetUnavailableImplCopyWithImpl<$Res>
    extends _$TweetUnavailableCopyWithImpl<$Res, _$TweetUnavailableImpl>
    implements _$$TweetUnavailableImplCopyWith<$Res> {
  __$$TweetUnavailableImplCopyWithImpl(_$TweetUnavailableImpl _value,
      $Res Function(_$TweetUnavailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of TweetUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
    Object? reason = null,
  }) {
    return _then(_$TweetUnavailableImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TweetUnavailableImpl implements _TweetUnavailable {
  const _$TweetUnavailableImpl(
      {@JsonKey(name: '__typename') required this.privateTypename,
      required this.reason});

  factory _$TweetUnavailableImpl.fromJson(Map<String, dynamic> json) =>
      _$$TweetUnavailableImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;
  @override
  final String reason;

  @override
  String toString() {
    return 'TweetUnavailable(privateTypename: $privateTypename, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TweetUnavailableImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename, reason);

  /// Create a copy of TweetUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TweetUnavailableImplCopyWith<_$TweetUnavailableImpl> get copyWith =>
      __$$TweetUnavailableImplCopyWithImpl<_$TweetUnavailableImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TweetUnavailableImplToJson(
      this,
    );
  }
}

abstract class _TweetUnavailable implements TweetUnavailable {
  const factory _TweetUnavailable(
      {@JsonKey(name: '__typename') required final TypeName privateTypename,
      required final String reason}) = _$TweetUnavailableImpl;

  factory _TweetUnavailable.fromJson(Map<String, dynamic> json) =
      _$TweetUnavailableImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;
  @override
  String get reason;

  /// Create a copy of TweetUnavailable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TweetUnavailableImplCopyWith<_$TweetUnavailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
