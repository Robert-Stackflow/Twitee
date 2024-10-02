// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'session.dart';

part 'other_response.freezed.dart';
part 'other_response.g.dart';

@Freezed()
 class OtherResponse with _$OtherResponse {
  const factory OtherResponse({
    @JsonKey(name: 'Session')
    required Session session,
  }) = _OtherResponse;
  
  factory OtherResponse.fromJson(Map<String, Object?> json) => _$OtherResponseFromJson(json);
}
