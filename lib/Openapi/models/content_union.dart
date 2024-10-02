// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_union.freezed.dart';
part 'content_union.g.dart';

@Freezed(unionKey: "null", unionValueCase: FreezedUnionCase.pascal)
abstract class ContentUnion with _$ContentUnion {
  const factory ContentUnion() = _ContentUnion;
  
  factory ContentUnion.fromJson(Map<String, Object?> json) => _$ContentUnionFromJson(json);
}
