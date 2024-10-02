// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_timeline_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchTimelineData _$SearchTimelineDataFromJson(Map<String, dynamic> json) {
  return _SearchTimelineData.fromJson(json);
}

/// @nodoc
mixin _$SearchTimelineData {
  @JsonKey(name: 'search_by_raw_query')
  SearchByRawQuery get searchByRawQuery => throw _privateConstructorUsedError;

  /// Serializes this SearchTimelineData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchTimelineDataCopyWith<SearchTimelineData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTimelineDataCopyWith<$Res> {
  factory $SearchTimelineDataCopyWith(
          SearchTimelineData value, $Res Function(SearchTimelineData) then) =
      _$SearchTimelineDataCopyWithImpl<$Res, SearchTimelineData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'search_by_raw_query')
      SearchByRawQuery searchByRawQuery});

  $SearchByRawQueryCopyWith<$Res> get searchByRawQuery;
}

/// @nodoc
class _$SearchTimelineDataCopyWithImpl<$Res, $Val extends SearchTimelineData>
    implements $SearchTimelineDataCopyWith<$Res> {
  _$SearchTimelineDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchByRawQuery = null,
  }) {
    return _then(_value.copyWith(
      searchByRawQuery: null == searchByRawQuery
          ? _value.searchByRawQuery
          : searchByRawQuery // ignore: cast_nullable_to_non_nullable
              as SearchByRawQuery,
    ) as $Val);
  }

  /// Create a copy of SearchTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchByRawQueryCopyWith<$Res> get searchByRawQuery {
    return $SearchByRawQueryCopyWith<$Res>(_value.searchByRawQuery, (value) {
      return _then(_value.copyWith(searchByRawQuery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchTimelineDataImplCopyWith<$Res>
    implements $SearchTimelineDataCopyWith<$Res> {
  factory _$$SearchTimelineDataImplCopyWith(_$SearchTimelineDataImpl value,
          $Res Function(_$SearchTimelineDataImpl) then) =
      __$$SearchTimelineDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'search_by_raw_query')
      SearchByRawQuery searchByRawQuery});

  @override
  $SearchByRawQueryCopyWith<$Res> get searchByRawQuery;
}

/// @nodoc
class __$$SearchTimelineDataImplCopyWithImpl<$Res>
    extends _$SearchTimelineDataCopyWithImpl<$Res, _$SearchTimelineDataImpl>
    implements _$$SearchTimelineDataImplCopyWith<$Res> {
  __$$SearchTimelineDataImplCopyWithImpl(_$SearchTimelineDataImpl _value,
      $Res Function(_$SearchTimelineDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchByRawQuery = null,
  }) {
    return _then(_$SearchTimelineDataImpl(
      searchByRawQuery: null == searchByRawQuery
          ? _value.searchByRawQuery
          : searchByRawQuery // ignore: cast_nullable_to_non_nullable
              as SearchByRawQuery,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchTimelineDataImpl implements _SearchTimelineData {
  const _$SearchTimelineDataImpl(
      {@JsonKey(name: 'search_by_raw_query') required this.searchByRawQuery});

  factory _$SearchTimelineDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchTimelineDataImplFromJson(json);

  @override
  @JsonKey(name: 'search_by_raw_query')
  final SearchByRawQuery searchByRawQuery;

  @override
  String toString() {
    return 'SearchTimelineData(searchByRawQuery: $searchByRawQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTimelineDataImpl &&
            (identical(other.searchByRawQuery, searchByRawQuery) ||
                other.searchByRawQuery == searchByRawQuery));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, searchByRawQuery);

  /// Create a copy of SearchTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTimelineDataImplCopyWith<_$SearchTimelineDataImpl> get copyWith =>
      __$$SearchTimelineDataImplCopyWithImpl<_$SearchTimelineDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchTimelineDataImplToJson(
      this,
    );
  }
}

abstract class _SearchTimelineData implements SearchTimelineData {
  const factory _SearchTimelineData(
          {@JsonKey(name: 'search_by_raw_query')
          required final SearchByRawQuery searchByRawQuery}) =
      _$SearchTimelineDataImpl;

  factory _SearchTimelineData.fromJson(Map<String, dynamic> json) =
      _$SearchTimelineDataImpl.fromJson;

  @override
  @JsonKey(name: 'search_by_raw_query')
  SearchByRawQuery get searchByRawQuery;

  /// Create a copy of SearchTimelineData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTimelineDataImplCopyWith<_$SearchTimelineDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
