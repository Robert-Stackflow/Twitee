// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_context_union.freezed.dart';
part 'social_context_union.g.dart';

@Freezed(unionKey: "null", unionValueCase: FreezedUnionCase.pascal)
abstract class SocialContextUnion with _$SocialContextUnion {
  const factory SocialContextUnion() = _SocialContextUnion;
  
  factory SocialContextUnion.fromJson(Map<String, Object?> json) => _$SocialContextUnionFromJson(json);
}
