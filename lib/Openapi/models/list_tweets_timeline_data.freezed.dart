// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_tweets_timeline_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListTweetsTimelineData _$ListTweetsTimelineDataFromJson(
    Map<String, dynamic> json) {
  return _ListTweetsTimelineData.fromJson(json);
}

/// @nodoc
mixin _$ListTweetsTimelineData {
  ListTweetsTimelineList get list => throw _privateConstructorUsedError;

  /// Serializes this ListTweetsTimelineData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListTweetsTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListTweetsTimelineDataCopyWith<ListTweetsTimelineData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTweetsTimelineDataCopyWith<$Res> {
  factory $ListTweetsTimelineDataCopyWith(ListTweetsTimelineData value,
          $Res Function(ListTweetsTimelineData) then) =
      _$ListTweetsTimelineDataCopyWithImpl<$Res, ListTweetsTimelineData>;
  @useResult
  $Res call({ListTweetsTimelineList list});

  $ListTweetsTimelineListCopyWith<$Res> get list;
}

/// @nodoc
class _$ListTweetsTimelineDataCopyWithImpl<$Res,
        $Val extends ListTweetsTimelineData>
    implements $ListTweetsTimelineDataCopyWith<$Res> {
  _$ListTweetsTimelineDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListTweetsTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListTweetsTimelineList,
    ) as $Val);
  }

  /// Create a copy of ListTweetsTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListTweetsTimelineListCopyWith<$Res> get list {
    return $ListTweetsTimelineListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListTweetsTimelineDataImplCopyWith<$Res>
    implements $ListTweetsTimelineDataCopyWith<$Res> {
  factory _$$ListTweetsTimelineDataImplCopyWith(
          _$ListTweetsTimelineDataImpl value,
          $Res Function(_$ListTweetsTimelineDataImpl) then) =
      __$$ListTweetsTimelineDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListTweetsTimelineList list});

  @override
  $ListTweetsTimelineListCopyWith<$Res> get list;
}

/// @nodoc
class __$$ListTweetsTimelineDataImplCopyWithImpl<$Res>
    extends _$ListTweetsTimelineDataCopyWithImpl<$Res,
        _$ListTweetsTimelineDataImpl>
    implements _$$ListTweetsTimelineDataImplCopyWith<$Res> {
  __$$ListTweetsTimelineDataImplCopyWithImpl(
      _$ListTweetsTimelineDataImpl _value,
      $Res Function(_$ListTweetsTimelineDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListTweetsTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ListTweetsTimelineDataImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListTweetsTimelineList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListTweetsTimelineDataImpl implements _ListTweetsTimelineData {
  const _$ListTweetsTimelineDataImpl({required this.list});

  factory _$ListTweetsTimelineDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListTweetsTimelineDataImplFromJson(json);

  @override
  final ListTweetsTimelineList list;

  @override
  String toString() {
    return 'ListTweetsTimelineData(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTweetsTimelineDataImpl &&
            (identical(other.list, list) || other.list == list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, list);

  /// Create a copy of ListTweetsTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTweetsTimelineDataImplCopyWith<_$ListTweetsTimelineDataImpl>
      get copyWith => __$$ListTweetsTimelineDataImplCopyWithImpl<
          _$ListTweetsTimelineDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListTweetsTimelineDataImplToJson(
      this,
    );
  }
}

abstract class _ListTweetsTimelineData implements ListTweetsTimelineData {
  const factory _ListTweetsTimelineData(
          {required final ListTweetsTimelineList list}) =
      _$ListTweetsTimelineDataImpl;

  factory _ListTweetsTimelineData.fromJson(Map<String, dynamic> json) =
      _$ListTweetsTimelineDataImpl.fromJson;

  @override
  ListTweetsTimelineList get list;

  /// Create a copy of ListTweetsTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListTweetsTimelineDataImplCopyWith<_$ListTweetsTimelineDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
