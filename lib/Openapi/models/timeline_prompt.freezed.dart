// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelinePrompt _$TimelinePromptFromJson(Map<String, dynamic> json) {
  return _TimelinePrompt.fromJson(json);
}

/// @nodoc
mixin _$TimelinePrompt {
  @JsonKey(name: '__typename')
  TypeName get privateTypename => throw _privateConstructorUsedError;

  /// Serializes this TimelinePrompt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelinePrompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelinePromptCopyWith<TimelinePrompt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelinePromptCopyWith<$Res> {
  factory $TimelinePromptCopyWith(
          TimelinePrompt value, $Res Function(TimelinePrompt) then) =
      _$TimelinePromptCopyWithImpl<$Res, TimelinePrompt>;
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class _$TimelinePromptCopyWithImpl<$Res, $Val extends TimelinePrompt>
    implements $TimelinePromptCopyWith<$Res> {
  _$TimelinePromptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelinePrompt
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
abstract class _$$TimelinePromptImplCopyWith<$Res>
    implements $TimelinePromptCopyWith<$Res> {
  factory _$$TimelinePromptImplCopyWith(_$TimelinePromptImpl value,
          $Res Function(_$TimelinePromptImpl) then) =
      __$$TimelinePromptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '__typename') TypeName privateTypename});
}

/// @nodoc
class __$$TimelinePromptImplCopyWithImpl<$Res>
    extends _$TimelinePromptCopyWithImpl<$Res, _$TimelinePromptImpl>
    implements _$$TimelinePromptImplCopyWith<$Res> {
  __$$TimelinePromptImplCopyWithImpl(
      _$TimelinePromptImpl _value, $Res Function(_$TimelinePromptImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelinePrompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateTypename = null,
  }) {
    return _then(_$TimelinePromptImpl(
      privateTypename: null == privateTypename
          ? _value.privateTypename
          : privateTypename // ignore: cast_nullable_to_non_nullable
              as TypeName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelinePromptImpl implements _TimelinePrompt {
  const _$TimelinePromptImpl(
      {@JsonKey(name: '__typename') required this.privateTypename});

  factory _$TimelinePromptImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelinePromptImplFromJson(json);

  @override
  @JsonKey(name: '__typename')
  final TypeName privateTypename;

  @override
  String toString() {
    return 'TimelinePrompt(privateTypename: $privateTypename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelinePromptImpl &&
            (identical(other.privateTypename, privateTypename) ||
                other.privateTypename == privateTypename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, privateTypename);

  /// Create a copy of TimelinePrompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelinePromptImplCopyWith<_$TimelinePromptImpl> get copyWith =>
      __$$TimelinePromptImplCopyWithImpl<_$TimelinePromptImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelinePromptImplToJson(
      this,
    );
  }
}

abstract class _TimelinePrompt implements TimelinePrompt {
  const factory _TimelinePrompt(
      {@JsonKey(name: '__typename')
      required final TypeName privateTypename}) = _$TimelinePromptImpl;

  factory _TimelinePrompt.fromJson(Map<String, dynamic> json) =
      _$TimelinePromptImpl.fromJson;

  @override
  @JsonKey(name: '__typename')
  TypeName get privateTypename;

  /// Create a copy of TimelinePrompt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelinePromptImplCopyWith<_$TimelinePromptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
