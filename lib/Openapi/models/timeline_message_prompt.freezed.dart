// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_message_prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineMessagePrompt _$TimelineMessagePromptFromJson(
    Map<String, dynamic> json) {
  return _TimelineMessagePrompt.fromJson(json);
}

/// @nodoc
mixin _$TimelineMessagePrompt {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;

  /// Serializes this TimelineMessagePrompt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineMessagePrompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineMessagePromptCopyWith<TimelineMessagePrompt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineMessagePromptCopyWith<$Res> {
  factory $TimelineMessagePromptCopyWith(TimelineMessagePrompt value,
          $Res Function(TimelineMessagePrompt) then) =
      _$TimelineMessagePromptCopyWithImpl<$Res, TimelineMessagePrompt>;
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class _$TimelineMessagePromptCopyWithImpl<$Res,
        $Val extends TimelineMessagePrompt>
    implements $TimelineMessagePromptCopyWith<$Res> {
  _$TimelineMessagePromptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineMessagePrompt
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
abstract class _$$TimelineMessagePromptImplCopyWith<$Res>
    implements $TimelineMessagePromptCopyWith<$Res> {
  factory _$$TimelineMessagePromptImplCopyWith(
          _$TimelineMessagePromptImpl value,
          $Res Function(_$TimelineMessagePromptImpl) then) =
      __$$TimelineMessagePromptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class __$$TimelineMessagePromptImplCopyWithImpl<$Res>
    extends _$TimelineMessagePromptCopyWithImpl<$Res,
        _$TimelineMessagePromptImpl>
    implements _$$TimelineMessagePromptImplCopyWith<$Res> {
  __$$TimelineMessagePromptImplCopyWithImpl(_$TimelineMessagePromptImpl _value,
      $Res Function(_$TimelineMessagePromptImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineMessagePrompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
  }) {
    return _then(_$TimelineMessagePromptImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineMessagePromptImpl implements _TimelineMessagePrompt {
  const _$TimelineMessagePromptImpl(
      {@JsonKey(name: '__typename') required this.privateTypename});

  factory _$TimelineMessagePromptImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineMessagePromptImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;

  @override
  String toString() {
    return 'TimelineMessagePrompt(privateTypename: $privateTypename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineMessagePromptImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename);

  /// Create a copy of TimelineMessagePrompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineMessagePromptImplCopyWith<_$TimelineMessagePromptImpl>
      get copyWith => __$$TimelineMessagePromptImplCopyWithImpl<
          _$TimelineMessagePromptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineMessagePromptImplToJson(
      this,
    );
  }
}

abstract class _TimelineMessagePrompt implements TimelineMessagePrompt {
  const factory _TimelineMessagePrompt(
      {@JsonKey(name: '__typename')
      required final TypeName privateTypename}) = _$TimelineMessagePromptImpl;

  factory _TimelineMessagePrompt.fromJson(Map<String, dynamic> json) =
      _$TimelineMessagePromptImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;

  /// Create a copy of TimelineMessagePrompt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineMessagePromptImplCopyWith<_$TimelineMessagePromptImpl>
      get copyWith => throw _privateConstructorUsedError;
}
