// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_media_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdditionalMediaInfo _$AdditionalMediaInfoFromJson(Map<String, dynamic> json) {
  return _AdditionalMediaInfo.fromJson(json);
}

/// @nodoc
mixin _$AdditionalMediaInfo {
  @JsonKey(name: 'call_to_actions')
  AdditionalMediaInfoCallToActions get callToActions =>
      throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get embeddable => throw _privateConstructorUsedError;
  bool get monetizable => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_user')
  UserResultCore get sourceUser => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this AdditionalMediaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdditionalMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdditionalMediaInfoCopyWith<AdditionalMediaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalMediaInfoCopyWith<$Res> {
  factory $AdditionalMediaInfoCopyWith(
          AdditionalMediaInfo value, $Res Function(AdditionalMediaInfo) then) =
      _$AdditionalMediaInfoCopyWithImpl<$Res, AdditionalMediaInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'call_to_actions')
      AdditionalMediaInfoCallToActions callToActions,
      String description,
      bool embeddable,
      bool monetizable,
      @JsonKey(name: 'source_user') UserResultCore sourceUser,
      String title});

  $AdditionalMediaInfoCallToActionsCopyWith<$Res> get callToActions;
  $UserResultCoreCopyWith<$Res> get sourceUser;
}

/// @nodoc
class _$AdditionalMediaInfoCopyWithImpl<$Res, $Val extends AdditionalMediaInfo>
    implements $AdditionalMediaInfoCopyWith<$Res> {
  _$AdditionalMediaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdditionalMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callToActions = null,
    Object? description = null,
    Object? embeddable = null,
    Object? monetizable = null,
    Object? sourceUser = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      callToActions: null == callToActions
          ? _value.callToActions
          : callToActions // ignore: cast_nullable_to_non_nullable
              as AdditionalMediaInfoCallToActions,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      embeddable: null == embeddable
          ? _value.embeddable
          : embeddable // ignore: cast_nullable_to_non_nullable
              as bool,
      monetizable: null == monetizable
          ? _value.monetizable
          : monetizable // ignore: cast_nullable_to_non_nullable
              as bool,
      sourceUser: null == sourceUser
          ? _value.sourceUser
          : sourceUser // ignore: cast_nullable_to_non_nullable
              as UserResultCore,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AdditionalMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionalMediaInfoCallToActionsCopyWith<$Res> get callToActions {
    return $AdditionalMediaInfoCallToActionsCopyWith<$Res>(_value.callToActions,
        (value) {
      return _then(_value.copyWith(callToActions: value) as $Val);
    });
  }

  /// Create a copy of AdditionalMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResultCoreCopyWith<$Res> get sourceUser {
    return $UserResultCoreCopyWith<$Res>(_value.sourceUser, (value) {
      return _then(_value.copyWith(sourceUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdditionalMediaInfoImplCopyWith<$Res>
    implements $AdditionalMediaInfoCopyWith<$Res> {
  factory _$$AdditionalMediaInfoImplCopyWith(_$AdditionalMediaInfoImpl value,
          $Res Function(_$AdditionalMediaInfoImpl) then) =
      __$$AdditionalMediaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'call_to_actions')
      AdditionalMediaInfoCallToActions callToActions,
      String description,
      bool embeddable,
      bool monetizable,
      @JsonKey(name: 'source_user') UserResultCore sourceUser,
      String title});

  @override
  $AdditionalMediaInfoCallToActionsCopyWith<$Res> get callToActions;
  @override
  $UserResultCoreCopyWith<$Res> get sourceUser;
}

/// @nodoc
class __$$AdditionalMediaInfoImplCopyWithImpl<$Res>
    extends _$AdditionalMediaInfoCopyWithImpl<$Res, _$AdditionalMediaInfoImpl>
    implements _$$AdditionalMediaInfoImplCopyWith<$Res> {
  __$$AdditionalMediaInfoImplCopyWithImpl(_$AdditionalMediaInfoImpl _value,
      $Res Function(_$AdditionalMediaInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callToActions = null,
    Object? description = null,
    Object? embeddable = null,
    Object? monetizable = null,
    Object? sourceUser = null,
    Object? title = null,
  }) {
    return _then(_$AdditionalMediaInfoImpl(
      callToActions: null == callToActions
          ? _value.callToActions
          : callToActions // ignore: cast_nullable_to_non_nullable
              as AdditionalMediaInfoCallToActions,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      embeddable: null == embeddable
          ? _value.embeddable
          : embeddable // ignore: cast_nullable_to_non_nullable
              as bool,
      monetizable: null == monetizable
          ? _value.monetizable
          : monetizable // ignore: cast_nullable_to_non_nullable
              as bool,
      sourceUser: null == sourceUser
          ? _value.sourceUser
          : sourceUser // ignore: cast_nullable_to_non_nullable
              as UserResultCore,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalMediaInfoImpl implements _AdditionalMediaInfo {
  const _$AdditionalMediaInfoImpl(
      {@JsonKey(name: 'call_to_actions') required this.callToActions,
      required this.description,
      required this.embeddable,
      required this.monetizable,
      @JsonKey(name: 'source_user') required this.sourceUser,
      required this.title});

  factory _$AdditionalMediaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalMediaInfoImplFromJson(json);

  @override
  @JsonKey(name: 'call_to_actions')
  final AdditionalMediaInfoCallToActions callToActions;
  @override
  final String description;
  @override
  final bool embeddable;
  @override
  final bool monetizable;
  @override
  @JsonKey(name: 'source_user')
  final UserResultCore sourceUser;
  @override
  final String title;

  @override
  String toString() {
    return 'AdditionalMediaInfo(callToActions: $callToActions, description: $description, embeddable: $embeddable, monetizable: $monetizable, sourceUser: $sourceUser, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalMediaInfoImpl &&
            (identical(other.callToActions, callToActions) ||
                other.callToActions == callToActions) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.embeddable, embeddable) ||
                other.embeddable == embeddable) &&
            (identical(other.monetizable, monetizable) ||
                other.monetizable == monetizable) &&
            (identical(other.sourceUser, sourceUser) ||
                other.sourceUser == sourceUser) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, callToActions, description,
      embeddable, monetizable, sourceUser, title);

  /// Create a copy of AdditionalMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalMediaInfoImplCopyWith<_$AdditionalMediaInfoImpl> get copyWith =>
      __$$AdditionalMediaInfoImplCopyWithImpl<_$AdditionalMediaInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalMediaInfoImplToJson(
      this,
    );
  }
}

abstract class _AdditionalMediaInfo implements AdditionalMediaInfo {
  const factory _AdditionalMediaInfo(
      {@JsonKey(name: 'call_to_actions')
      required final AdditionalMediaInfoCallToActions callToActions,
      required final String description,
      required final bool embeddable,
      required final bool monetizable,
      @JsonKey(name: 'source_user') required final UserResultCore sourceUser,
      required final String title}) = _$AdditionalMediaInfoImpl;

  factory _AdditionalMediaInfo.fromJson(Map<String, dynamic> json) =
      _$AdditionalMediaInfoImpl.fromJson;

  @override
  @JsonKey(name: 'call_to_actions')
  AdditionalMediaInfoCallToActions get callToActions;
  @override
  String get description;
  @override
  bool get embeddable;
  @override
  bool get monetizable;
  @override
  @JsonKey(name: 'source_user')
  UserResultCore get sourceUser;
  @override
  String get title;

  /// Create a copy of AdditionalMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdditionalMediaInfoImplCopyWith<_$AdditionalMediaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
