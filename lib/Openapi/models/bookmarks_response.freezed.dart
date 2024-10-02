// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmarks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookmarksResponse _$BookmarksResponseFromJson(Map<String, dynamic> json) {
  return _BookmarksResponse.fromJson(json);
}

/// @nodoc
mixin _$BookmarksResponse {
  BookmarksResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this BookmarksResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookmarksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarksResponseCopyWith<BookmarksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksResponseCopyWith<$Res> {
  factory $BookmarksResponseCopyWith(
          BookmarksResponse value, $Res Function(BookmarksResponse) then) =
      _$BookmarksResponseCopyWithImpl<$Res, BookmarksResponse>;
  @useResult
  $Res call({BookmarksResponseData data});

  $BookmarksResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$BookmarksResponseCopyWithImpl<$Res, $Val extends BookmarksResponse>
    implements $BookmarksResponseCopyWith<$Res> {
  _$BookmarksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookmarksResponseData,
    ) as $Val);
  }

  /// Create a copy of BookmarksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookmarksResponseDataCopyWith<$Res> get data {
    return $BookmarksResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookmarksResponseImplCopyWith<$Res>
    implements $BookmarksResponseCopyWith<$Res> {
  factory _$$BookmarksResponseImplCopyWith(_$BookmarksResponseImpl value,
          $Res Function(_$BookmarksResponseImpl) then) =
      __$$BookmarksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookmarksResponseData data});

  @override
  $BookmarksResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$BookmarksResponseImplCopyWithImpl<$Res>
    extends _$BookmarksResponseCopyWithImpl<$Res, _$BookmarksResponseImpl>
    implements _$$BookmarksResponseImplCopyWith<$Res> {
  __$$BookmarksResponseImplCopyWithImpl(_$BookmarksResponseImpl _value,
      $Res Function(_$BookmarksResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$BookmarksResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookmarksResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarksResponseImpl implements _BookmarksResponse {
  const _$BookmarksResponseImpl({required this.data});

  factory _$BookmarksResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarksResponseImplFromJson(json);

  @override
  final BookmarksResponseData data;

  @override
  String toString() {
    return 'BookmarksResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of BookmarksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksResponseImplCopyWith<_$BookmarksResponseImpl> get copyWith =>
      __$$BookmarksResponseImplCopyWithImpl<_$BookmarksResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarksResponseImplToJson(
      this,
    );
  }
}

abstract class _BookmarksResponse implements BookmarksResponse {
  const factory _BookmarksResponse(
      {required final BookmarksResponseData data}) = _$BookmarksResponseImpl;

  factory _BookmarksResponse.fromJson(Map<String, dynamic> json) =
      _$BookmarksResponseImpl.fromJson;

  @override
  BookmarksResponseData get data;

  /// Create a copy of BookmarksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarksResponseImplCopyWith<_$BookmarksResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
