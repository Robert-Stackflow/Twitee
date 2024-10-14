// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'session.dart';

part 'other_response.g.dart';

@JsonSerializable()
class OtherResponse {
  const OtherResponse({
    required this.session,
  });

  factory OtherResponse.fromJson(Map<String, Object?> json) =>
      _$OtherResponseFromJson(json);

  @JsonKey(name: 'Session')
  final Session? session;

  Map<String, Object?> toJson() => _$OtherResponseToJson(this);
}
