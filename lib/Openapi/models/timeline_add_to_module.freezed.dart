// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_add_to_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineAddToModule _$TimelineAddToModuleFromJson(Map<String, dynamic> json) {
  return _TimelineAddToModule.fromJson(json);
}

/// @nodoc
mixin _$TimelineAddToModule {
  String get moduleEntryId => throw _privateConstructorUsedError;
  List<ModuleItem> get moduleItems => throw _privateConstructorUsedError;
  bool get prepend => throw _privateConstructorUsedError;
  InstructionType get type => throw _privateConstructorUsedError;

  /// Serializes this TimelineAddToModule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimelineAddToModule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineAddToModuleCopyWith<TimelineAddToModule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineAddToModuleCopyWith<$Res> {
  factory $TimelineAddToModuleCopyWith(
          TimelineAddToModule value, $Res Function(TimelineAddToModule) then) =
      _$TimelineAddToModuleCopyWithImpl<$Res, TimelineAddToModule>;
  @useResult
  $Res call(
      {String moduleEntryId,
      List<ModuleItem> moduleItems,
      bool prepend,
      InstructionType type});
}

/// @nodoc
class _$TimelineAddToModuleCopyWithImpl<$Res, $Val extends TimelineAddToModule>
    implements $TimelineAddToModuleCopyWith<$Res> {
  _$TimelineAddToModuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineAddToModule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moduleEntryId = null,
    Object? moduleItems = null,
    Object? prepend = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      moduleEntryId: null == moduleEntryId
          ? _value.moduleEntryId
          : moduleEntryId // ignore: cast_nullable_to_non_nullable
              as String,
      moduleItems: null == moduleItems
          ? _value.moduleItems
          : moduleItems // ignore: cast_nullable_to_non_nullable
              as List<ModuleItem>,
      prepend: null == prepend
          ? _value.prepend
          : prepend // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineAddToModuleImplCopyWith<$Res>
    implements $TimelineAddToModuleCopyWith<$Res> {
  factory _$$TimelineAddToModuleImplCopyWith(_$TimelineAddToModuleImpl value,
          $Res Function(_$TimelineAddToModuleImpl) then) =
      __$$TimelineAddToModuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String moduleEntryId,
      List<ModuleItem> moduleItems,
      bool prepend,
      InstructionType type});
}

/// @nodoc
class __$$TimelineAddToModuleImplCopyWithImpl<$Res>
    extends _$TimelineAddToModuleCopyWithImpl<$Res, _$TimelineAddToModuleImpl>
    implements _$$TimelineAddToModuleImplCopyWith<$Res> {
  __$$TimelineAddToModuleImplCopyWithImpl(_$TimelineAddToModuleImpl _value,
      $Res Function(_$TimelineAddToModuleImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineAddToModule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moduleEntryId = null,
    Object? moduleItems = null,
    Object? prepend = null,
    Object? type = null,
  }) {
    return _then(_$TimelineAddToModuleImpl(
      moduleEntryId: null == moduleEntryId
          ? _value.moduleEntryId
          : moduleEntryId // ignore: cast_nullable_to_non_nullable
              as String,
      moduleItems: null == moduleItems
          ? _value._moduleItems
          : moduleItems // ignore: cast_nullable_to_non_nullable
              as List<ModuleItem>,
      prepend: null == prepend
          ? _value.prepend
          : prepend // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InstructionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineAddToModuleImpl implements _TimelineAddToModule {
  const _$TimelineAddToModuleImpl(
      {required this.moduleEntryId,
      required final List<ModuleItem> moduleItems,
      required this.prepend,
      required this.type})
      : _moduleItems = moduleItems;

  factory _$TimelineAddToModuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineAddToModuleImplFromJson(json);

  @override
  final String moduleEntryId;
  final List<ModuleItem> _moduleItems;
  @override
  List<ModuleItem> get moduleItems {
    if (_moduleItems is EqualUnmodifiableListView) return _moduleItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moduleItems);
  }

  @override
  final bool prepend;
  @override
  final InstructionType type;

  @override
  String toString() {
    return 'TimelineAddToModule(moduleEntryId: $moduleEntryId, moduleItems: $moduleItems, prepend: $prepend, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineAddToModuleImpl &&
            (identical(other.moduleEntryId, moduleEntryId) ||
                other.moduleEntryId == moduleEntryId) &&
            const DeepCollectionEquality()
                .equals(other._moduleItems, _moduleItems) &&
            (identical(other.prepend, prepend) || other.prepend == prepend) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, moduleEntryId,
      const DeepCollectionEquality().hash(_moduleItems), prepend, type);

  /// Create a copy of TimelineAddToModule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineAddToModuleImplCopyWith<_$TimelineAddToModuleImpl> get copyWith =>
      __$$TimelineAddToModuleImplCopyWithImpl<_$TimelineAddToModuleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineAddToModuleImplToJson(
      this,
    );
  }
}

abstract class _TimelineAddToModule implements TimelineAddToModule {
  const factory _TimelineAddToModule(
      {required final String moduleEntryId,
      required final List<ModuleItem> moduleItems,
      required final bool prepend,
      required final InstructionType type}) = _$TimelineAddToModuleImpl;

  factory _TimelineAddToModule.fromJson(Map<String, dynamic> json) =
      _$TimelineAddToModuleImpl.fromJson;

  @override
  String get moduleEntryId;
  @override
  List<ModuleItem> get moduleItems;
  @override
  bool get prepend;
  @override
  InstructionType get type;

  /// Create a copy of TimelineAddToModule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineAddToModuleImplCopyWith<_$TimelineAddToModuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
