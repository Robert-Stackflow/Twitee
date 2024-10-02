// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityRule _$CommunityRuleFromJson(Map<String, dynamic> json) {
  return _CommunityRule.fromJson(json);
}

/// @nodoc
mixin _$CommunityRule {
  String get description => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_id')
  String get restId => throw _privateConstructorUsedError;

  /// Serializes this CommunityRule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityRuleCopyWith<CommunityRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityRuleCopyWith<$Res> {
  factory $CommunityRuleCopyWith(
          CommunityRule value, $Res Function(CommunityRule) then) =
      _$CommunityRuleCopyWithImpl<$Res, CommunityRule>;
  @useResult
  $Res call(
      {String description,
      String name,
      @JsonKey(name: 'rest_id') String restId});
}

/// @nodoc
class _$CommunityRuleCopyWithImpl<$Res, $Val extends CommunityRule>
    implements $CommunityRuleCopyWith<$Res> {
  _$CommunityRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? name = null,
    Object? restId = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityRuleImplCopyWith<$Res>
    implements $CommunityRuleCopyWith<$Res> {
  factory _$$CommunityRuleImplCopyWith(
          _$CommunityRuleImpl value, $Res Function(_$CommunityRuleImpl) then) =
      __$$CommunityRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String name,
      @JsonKey(name: 'rest_id') String restId});
}

/// @nodoc
class __$$CommunityRuleImplCopyWithImpl<$Res>
    extends _$CommunityRuleCopyWithImpl<$Res, _$CommunityRuleImpl>
    implements _$$CommunityRuleImplCopyWith<$Res> {
  __$$CommunityRuleImplCopyWithImpl(
      _$CommunityRuleImpl _value, $Res Function(_$CommunityRuleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunityRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? name = null,
    Object? restId = null,
  }) {
    return _then(_$CommunityRuleImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      restId: null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityRuleImpl implements _CommunityRule {
  const _$CommunityRuleImpl(
      {required this.description,
      required this.name,
      @JsonKey(name: 'rest_id') required this.restId});

  factory _$CommunityRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityRuleImplFromJson(json);

  @override
  final String description;
  @override
  final String name;
  @override
  @JsonKey(name: 'rest_id')
  final String restId;

  @override
  String toString() {
    return 'CommunityRule(description: $description, name: $name, restId: $restId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityRuleImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.restId, restId) || other.restId == restId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, name, restId);

  /// Create a copy of CommunityRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityRuleImplCopyWith<_$CommunityRuleImpl> get copyWith =>
      __$$CommunityRuleImplCopyWithImpl<_$CommunityRuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityRuleImplToJson(
      this,
    );
  }
}

abstract class _CommunityRule implements CommunityRule {
  const factory _CommunityRule(
          {required final String description,
          required final String name,
          @JsonKey(name: 'rest_id') required final String restId}) =
      _$CommunityRuleImpl;

  factory _CommunityRule.fromJson(Map<String, dynamic> json) =
      _$CommunityRuleImpl.fromJson;

  @override
  String get description;
  @override
  String get name;
  @override
  @JsonKey(name: 'rest_id')
  String get restId;

  /// Create a copy of CommunityRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityRuleImplCopyWith<_$CommunityRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
