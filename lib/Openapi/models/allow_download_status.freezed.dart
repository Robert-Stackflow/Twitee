// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allow_download_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllowDownloadStatus _$AllowDownloadStatusFromJson(Map<String, dynamic> json) {
  return _AllowDownloadStatus.fromJson(json);
}

/// @nodoc
mixin _$AllowDownloadStatus {
  @JsonKey(name: 'allow_download')
  bool get allowDownload => throw _privateConstructorUsedError;

  /// Serializes this AllowDownloadStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllowDownloadStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllowDownloadStatusCopyWith<AllowDownloadStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllowDownloadStatusCopyWith<$Res> {
  factory $AllowDownloadStatusCopyWith(
          AllowDownloadStatus value, $Res Function(AllowDownloadStatus) then) =
      _$AllowDownloadStatusCopyWithImpl<$Res, AllowDownloadStatus>;
  @useResult
  $Res call({@JsonKey(name: 'allow_download') bool allowDownload});
}

/// @nodoc
class _$AllowDownloadStatusCopyWithImpl<$Res, $Val extends AllowDownloadStatus>
    implements $AllowDownloadStatusCopyWith<$Res> {
  _$AllowDownloadStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllowDownloadStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowDownload = null,
  }) {
    return _then(_value.copyWith(
      allowDownload: null == allowDownload
          ? _value.allowDownload
          : allowDownload // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllowDownloadStatusImplCopyWith<$Res>
    implements $AllowDownloadStatusCopyWith<$Res> {
  factory _$$AllowDownloadStatusImplCopyWith(_$AllowDownloadStatusImpl value,
          $Res Function(_$AllowDownloadStatusImpl) then) =
      __$$AllowDownloadStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'allow_download') bool allowDownload});
}

/// @nodoc
class __$$AllowDownloadStatusImplCopyWithImpl<$Res>
    extends _$AllowDownloadStatusCopyWithImpl<$Res, _$AllowDownloadStatusImpl>
    implements _$$AllowDownloadStatusImplCopyWith<$Res> {
  __$$AllowDownloadStatusImplCopyWithImpl(_$AllowDownloadStatusImpl _value,
      $Res Function(_$AllowDownloadStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllowDownloadStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowDownload = null,
  }) {
    return _then(_$AllowDownloadStatusImpl(
      allowDownload: null == allowDownload
          ? _value.allowDownload
          : allowDownload // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllowDownloadStatusImpl implements _AllowDownloadStatus {
  const _$AllowDownloadStatusImpl(
      {@JsonKey(name: 'allow_download') required this.allowDownload});

  factory _$AllowDownloadStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllowDownloadStatusImplFromJson(json);

  @override
  @JsonKey(name: 'allow_download')
  final bool allowDownload;

  @override
  String toString() {
    return 'AllowDownloadStatus(allowDownload: $allowDownload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllowDownloadStatusImpl &&
            (identical(other.allowDownload, allowDownload) ||
                other.allowDownload == allowDownload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, allowDownload);

  /// Create a copy of AllowDownloadStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllowDownloadStatusImplCopyWith<_$AllowDownloadStatusImpl> get copyWith =>
      __$$AllowDownloadStatusImplCopyWithImpl<_$AllowDownloadStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllowDownloadStatusImplToJson(
      this,
    );
  }
}

abstract class _AllowDownloadStatus implements AllowDownloadStatus {
  const factory _AllowDownloadStatus(
      {@JsonKey(name: 'allow_download')
      required final bool allowDownload}) = _$AllowDownloadStatusImpl;

  factory _AllowDownloadStatus.fromJson(Map<String, dynamic> json) =
      _$AllowDownloadStatusImpl.fromJson;

  @override
  @JsonKey(name: 'allow_download')
  bool get allowDownload;

  /// Create a copy of AllowDownloadStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllowDownloadStatusImplCopyWith<_$AllowDownloadStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
